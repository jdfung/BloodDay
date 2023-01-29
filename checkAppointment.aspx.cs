using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace GroupProject
{
    public partial class checkAppointment : System.Web.UI.Page
    {
        public static string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-G5HHD0A2;Initial Catalog=BloodDay;Integrated Security=True");
            if (!IsPostBack)
            {
                Multiview1.ActiveViewIndex = 0;
            }
        }

        public void loadData(String Name, String Ic)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-G5HHD0A2;Initial Catalog=BloodDay;Integrated Security=True");
                con.Open();
                string selectQuery = "SELECT * FROM [BloodDay].[dbo].[blood_donors] WHERE name = @Name AND ic = @Ic";
                SqlCommand cmd = new SqlCommand(selectQuery, con);
                cmd.Parameters.AddWithValue("@Name", Name);
                cmd.Parameters.AddWithValue("@Ic", Ic);
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    Multiview1.ActiveViewIndex = 1;

                    id = reader["donor_id"].ToString();
                    headName.Text = reader["name"].ToString() + "'s Info";
                    nameLabel.Text = reader["name"].ToString();
                    nameEdit.Text = reader["name"].ToString();
                    icLabel.Text = reader["ic"].ToString();
                    icEdit.Text = reader["ic"].ToString();
                    System.Diagnostics.Debug.WriteLine(reader["gender"].ToString());
                    if (reader["gender"].Equals((Byte)0))
                    {
                        genderLabel.Text = "Male";
                        genderEdit.SelectedIndex = 0;
                    }
                    else if (reader["gender"].Equals((Byte)1))
                    {
                        genderLabel.Text = "Female";
                        genderEdit.SelectedIndex = 1;
                    }
                    else
                    {

                    }

                    phnoLabel.Text = reader["phone_no"].ToString();
                    phone_noEdit.Text = reader["phone_no"].ToString();
                    emailLabel.Text = reader["email"].ToString();
                    emailEdit.Text = reader["email"].ToString();
                    btLabel.Text = reader["blood_type"].ToString();
                    if (reader["blood_type"].Equals("A"))
                    {
                        bt_edit.SelectedIndex = 0;
                    }
                    else if (reader["blood_type"].Equals("B"))
                    {
                        bt_edit.SelectedIndex = 1;
                    }
                    else if (reader["blood_type"].Equals("AB"))
                    {
                        bt_edit.SelectedIndex = 2;
                    }
                    else if (reader["blood_type"].Equals("O"))
                    {
                        bt_edit.SelectedIndex = 3;
                    }
                    else
                    {

                    }

                    if (reader["date"] == DBNull.Value)
                    {
                        appdateLabel.Text = "";
                        AppointDate.Value = "";
                    }
                    else
                    {
                        appdateLabel.Text = Convert.ToDateTime(reader["date"].ToString()).ToString("yyyy-MM-dd");
                        AppointDate.Value = Convert.ToDateTime(reader["date"].ToString()).ToString("yyyy-MM-dd");
                    }

                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('No such user exists')", true);
                }

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }

        protected void cancelEdit_Click(object sender, EventArgs e)
        {
            Multiview1.ActiveViewIndex = 1;
        }


        protected void SubmitQuery_Click(object sender, EventArgs e)
        {
            loadData(name.Text, ic.Text);
        }

        protected void editInfo_Click(object sender, EventArgs e)
        {
            Multiview1.ActiveViewIndex = 2;

        }

        protected void cancelApp_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-G5HHD0A2;Initial Catalog=BloodDay;Integrated Security=True");
                con.Open();
                string deleteApp = "UPDATE [BloodDay].[dbo].[blood_donors] SET date = NULL WHERE donor_id = @id";
                SqlCommand cmd = new SqlCommand(deleteApp, con);

                cmd.Parameters.AddWithValue("@id", Int32.Parse(id));
                cmd.ExecuteNonQuery();
                con.Close();
                loadData(name.Text, ic.Text);
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }

        protected void editSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-G5HHD0A2;Initial Catalog=BloodDay;Integrated Security=True");
                con.Open();
                string editInfo = "UPDATE [BloodDay].[dbo].[blood_donors] SET name = @Name, ic = @Ic, gender = @Gender, phone_no = @PhNo, email = @Email, blood_type = @bt, date = @Date WHERE donor_id = @id";
                SqlCommand cmd = new SqlCommand(editInfo, con);

                cmd.Parameters.AddWithValue("@id", Int32.Parse(id));
                cmd.Parameters.AddWithValue("@Name", nameEdit.Text);
                cmd.Parameters.AddWithValue("@Ic", icEdit.Text);
                cmd.Parameters.AddWithValue("@Gender", genderEdit.SelectedIndex);
                cmd.Parameters.AddWithValue("@PhNo", phone_noEdit.Text);
                cmd.Parameters.AddWithValue("@Email", emailEdit.Text);
                cmd.Parameters.AddWithValue("@bt", bt_edit.SelectedValue);
                cmd.Parameters.AddWithValue("@Date", AppointDate.Value);
                cmd.ExecuteNonQuery();
                con.Close();

                loadData(nameEdit.Text, icEdit.Text);
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }

    }
}