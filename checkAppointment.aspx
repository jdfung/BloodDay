<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="checkAppointment.aspx.cs" Inherits="GroupProject.checkAppointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content" id="register">
        <asp:MultiView runat="server" ID="Multiview1">
            <asp:View runat="server" ID="query">
                <div style="text-align: center; width: 100%;  margin: 0 auto;">
                    <h1>Enter your name and IC to query:</h1>
                </div>
                <div style="text-align: center; width: 15%;  margin: 0 auto;">
                    <table style="width:100%; display:block;">   
                            
                    <tr style="text-align: right;">
                        <td style="text-align:left; width:25px;">
                            Name
                        </td>
                        <td style="width:10px;">
                            :
                        </td>
                        <td style="width:100%;">
                            <asp:TextBox class="form-control" runat="server" ID="name" Width="100%"></asp:TextBox>                         
                        </td>
                    </tr>
                    <tr>
                        <td style="width:25px;"></td>
                        <td></td>
                        <td style="width: 100%; text-align:right;" >
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="name" ValidationGroup="query" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr style="height:40px;">
                        <td style="text-align:left; width:25px;" >
                            IC
                        </td>
                        <td>
                            :
                        </td>
                        <td style="width: 100%">
                            <asp:TextBox class="form-control" runat="server" ID="ic" Width="100%"></asp:TextBox>                       
                        </td>
                    </tr>
                    <tr>
                        <td style= "width: 25px";></td>
                        <td></td>
                        <td style="width: 100%; text-align:right;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ControlToValidate="ic" ValidationGroup="query" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                        <asp:Button class="btn btn-primary" ID="SubmitQuery" Width="200px" runat="server" Text="Query" onclick="SubmitQuery_Click" ValidationGroup="query" Style="margin-top: 10px;"/>
                        </td>
                    </tr>
                    </table>
                </div>
            </asp:View>

<!--Result page -->

            <asp:View runat="server" ID="resultNcancel">
                
                <div style="text-align: center; width: 30%;  margin: 0 auto;">
                    <table class="table" style="width:100%;">
                        <tr class="table-primary">
                            <th colspan="3" >
                                <asp:Label runat="server" ID="headName" Text="Label"></asp:Label>
                            </th>
                        </tr>
                        <tr>
                            <td style="width:30%; text-align: left;">Name</td>
                            <td style="width:10px">:</td>
                            <td>
                                <asp:Label ID="nameLabel" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:30%; text-align: left;">IC</td>
                            <td>:</td>
                            <td>
                                <asp:Label ID="icLabel" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:30%; text-align: left;">Gender</td>
                            <td>:</td> 
                            <td>
                                <asp:Label ID="genderLabel" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:30%; text-align: left;">Phone Number</td>
                            <td>:</td> 
                            <td>
                                <asp:Label ID="phnoLabel" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:30%; text-align: left;">Email</td>
                            <td>:</td> 
                            <td>
                                <asp:Label ID="emailLabel" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:30%; text-align: left;">Blood type</td>
                            <td>:</td> 
                            <td>
                                <asp:Label ID="btLabel" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:30%; text-align: left;">Appointment Date</td>
                            <td>:</td> 
                            <td>
                                <asp:Label ID="appdateLabel" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right;">
                                
                            </td>
                            <td></td>
                            <td style="text-align: right;">
                                <asp:Button class="btn btn-primary" runat="server" ID="editInfo" Text="Edit" Width="200px" OnClick="editInfo_Click"></asp:Button>
                                <br />

                                <asp:Button class="btn btn-primary" runat="server" ID="cancelApp" Text="Cancel Appointment" Width="200px" OnClick="cancelApp_Click" Style="margin-top: 10px;"></asp:Button>
                            </td>
                        </tr>
                    </table>
                </div>
            </asp:View>

<!-- Edit page -->

        <asp:View runat="server" ID="edit">
            
            <div style="text-align: center; width: 30%;  margin: 0 auto;">
                    <table class="table" style="width:100%;">
                        <tr class="table-primary">
                            <th colspan="3" >
                                <asp:Label runat="server" Text="Edit"></asp:Label>
                            </th>
                        </tr>
                        <tr>
                            <td style="width:30%; text-align: left;">Name</td>
                            <td style="width:10px">:</td>
                            <td>
                                <asp:TextBox class="form-control" ID="nameEdit" runat="server" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:30%; text-align: left;">IC</td>
                            <td>:</td>
                            <td>
                                <asp:TextBox class="form-control" ID="icEdit" runat="server" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:30%; text-align: left;">Gender</td>
                            <td>:</td> 
                            <td>
                                <asp:RadioButtonList ID="genderEdit" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:30%; text-align: left;">Phone Number</td>
                            <td>:</td> 
                            <td>
                                <asp:TextBox class="form-control" ID="phone_noEdit" runat="server" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:30%; text-align: left;">Email</td>
                            <td>:</td> 
                            <td>
                                <asp:TextBox class="form-control" ID="emailEdit" runat="server" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:30%; text-align: left;">Blood type</td>
                            <td>:</td>  
                            <td style="text-align: left">
                                        <asp:RadioButtonList ID="bt_edit" runat="server" RepeatDirection="horizontal">
                                            <asp:ListItem>A</asp:ListItem>
                                            <asp:ListItem>B</asp:ListItem>
                                            <asp:ListItem>AB</asp:ListItem>
                                            <asp:ListItem>O</asp:ListItem>
                                        </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:30%; text-align: left;">Appointment Date</td>
                            <td>:</td> 
                            <td>
                                <input class="form-control" id="AppointDate" type="date" runat="server" style="width:100%"/>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right;">    
                            </td>
                            <td></td>
                            <td style="text-align: right;">
                                <asp:Button class="btn btn-primary" runat="server" ID="editSubmit" Text="Edit" OnClick="editSubmit_Click" Width="200px" Style="margin-top: 10px;"></asp:Button>
                                <br />
                                <asp:Button class="btn btn-primary" runat="server" ID="cancelEdit" Text="Cancel" OnClick="cancelEdit_Click" Width="200px" Style="margin-top: 10px;"></asp:Button>
                            </td>
                        </tr>
                    </table>
                </div>

        </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
