using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace GroupProject
{
    public partial class addParticipants : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-G5HHD0A2;Initial Catalog=BloodDay;Integrated Security=True");
                if (!IsPostBack)
                {
                    MultiView1.ActiveViewIndex = 0;
                }
            }
            
        }
        protected void Continue_Click(object sender, EventArgs e)
        {
            try { 
                SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-G5HHD0A2;Initial Catalog=BloodDay;Integrated Security=True");
                con.Open();
                string selectQuery = "SELECT * FROM [BloodDay].[dbo].[blood_donors] WHERE name = @Name AND ic = @Ic";
                SqlCommand cmd = new SqlCommand(selectQuery, con);
                cmd.Parameters.AddWithValue("@Name", name.Text);
                cmd.Parameters.AddWithValue("@Ic", ic_no.Text);
                name2.Text = name.Text;
                ic_no2.Text = ic_no.Text;
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You are already registered')", true);
                }
                else
                {
                    MultiView1.ActiveViewIndex = 2;
                }

            }catch(Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
            
        }


        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {


                SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-G5HHD0A2;Initial Catalog=BloodDay;Integrated Security=True");
                con.Open();


                string insertQuery = " INSERT INTO [BloodDay].[dbo].[blood_donors] (name, ic, gender, phone_no, email, blood_type, date) Values (@Name, @Ic, @Gender, @PhoneNo, @Email, @BloodType, @Date)";

                SqlCommand cmd = new SqlCommand(insertQuery, con);
                cmd.Parameters.AddWithValue("@Name", name.Text);
                cmd.Parameters.AddWithValue("@Ic", ic_no.Text);
                cmd.Parameters.AddWithValue("@Gender", gender_btn.SelectedIndex);
                cmd.Parameters.AddWithValue("@PhoneNo", phone_no.Text);
                cmd.Parameters.AddWithValue("@Email", email.Text);
                cmd.Parameters.AddWithValue("@BloodType", blood_type_btn.SelectedValue);
                cmd.Parameters.AddWithValue("@Date", AppointDate.Value);
                cmd.ExecuteNonQuery();


                MultiView1.ActiveViewIndex = 3;
                con.Close();

            }

            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }

        }
    }
}
