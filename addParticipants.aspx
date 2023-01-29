<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addParticipants.aspx.cs" Inherits="GroupProject.addParticipants" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="ValidateParticipant" runat="server">
                    <div style="text-align: center; width: 100%;  margin: 0 auto;">
                    <h1>Enter your name and IC to begin registration:</h1>
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
                           <!-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="name" ValidationGroup="query" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>-->
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
                            <asp:TextBox class="form-control" runat="server" ID="ic_no" Width="100%"></asp:TextBox>                       
                        </td>
                    </tr>
                    <tr>
                        <td style= "width: 25px";></td>
                        <td></td>
                        <td style="width: 100%; text-align:right;">
                           <!-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ControlToValidate="ic_no" ValidationGroup="query" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>-->
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                        <asp:Button class="btn btn-success" ID="Continue" Width="200px" runat="server" Text="Continue>>" onclick="Continue_Click" ValidationGroup="query" Style="margin-top: 10px;"/>
                        </td>
                    </tr>
                    </table>
                </div>    
                </asp:View>
                
        <!-- Registration form -->
                <asp:View ID="Registered" runat="server">
                    <h3>
                        You've registered. Please click "OK" to proceed.
                    </h3>
                        <asp:Button ID="ViewInfo" runat="server" Text="OK" />
                </asp:View>

                <asp:View ID="AddParticipant" runat="server">
                    <div style="text-align: center; width: 30%;  margin: 0 auto;">
                    <table class="table" style="width:100%;">
                        <tr class="table-success">
                            <th colspan="3" >
                                <asp:Label runat="server" Text="Register Form"></asp:Label>
                            </th>
                        </tr>
                        <tr>
                            <td style="width:30%; text-align: left;">Name</td>
                            <td style="width:10px">:</td>
                            <td>
                                <asp:TextBox class="form-control" ID="name2" runat="server" ReadOnly="true" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:30%; text-align: left;">IC</td>
                            <td>:</td>
                            <td>
                                <asp:TextBox class="form-control" ID="ic_no2" runat="server" ReadOnly="true" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:30%; text-align: left;">Gender</td>
                            <td>:</td> 
                            <td>
                                <asp:RadioButtonList ID="gender_btn" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:30%; text-align: left;">Phone Number</td>
                            <td>:</td> 
                            <td>
                                <asp:TextBox class="form-control" ID="phone_no" runat="server" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:30%; text-align: left;">Email</td>
                            <td>:</td> 
                            <td>
                                <asp:TextBox class="form-control" ID="email" runat="server" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width:30%; text-align: left;">Blood type</td>
                            <td>:</td>  
                            <td style="text-align: left">
                                        <asp:RadioButtonList ID="blood_type_btn" runat="server" RepeatDirection="horizontal">
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
                                <asp:Button class="btn btn-success" runat="server" ID="Submit" Text="Register" OnClick="Submit_Click" Width="200px" Style="margin-top: 10px;"></asp:Button>
                                <br />
                            </td>
                        </tr>
                    </table>
                </div>
                </asp:View>

                <asp:View ID="CompleteRsg" runat="server">
                    <div style="text-align:center;">
                        <h3>Your record have been saved.<br />
                            Thank you for your participation.
                        </h3> 
                        <h5>
                            Please click "OK" to proceed.<br />
                        </h5>
                        <a href="checkAppointment.aspx"><input type="button" class="btn btn-success" value="OK"/></a>
                    </div>
                </asp:View>
            </asp:MultiView>

</asp:Content>
