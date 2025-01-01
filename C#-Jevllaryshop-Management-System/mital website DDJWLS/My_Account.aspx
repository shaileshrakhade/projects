<%@ Page Language="C#" MasterPageFile="~/DDMasterPage.master" AutoEventWireup="true" CodeFile="My_Account.aspx.cs" Inherits="My_Account" Title="DD JEWELLERS | USER ACCOUNT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="min-height:500px">
    <asp:Panel ID="Panel1" runat="server" Width="100%" CssClass="font">
        <asp:Panel ID="pnllogin" runat="server"  Width="100%" Visible="false">
            <table width="100%">
                <tr style="height:25px " >
                    <td style="width: 257px" align="right">
                        <asp:Label ID="lblID" runat="server" BackColor="Transparent" ForeColor="Gainsboro" Text="User Name" Font-Size="12px"></asp:Label></td>
                    <td align="left" style="width: 156px">
                        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox></td>
                    <td style="text-align: left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername"
                            ErrorMessage="Enter User Name" ForeColor="Firebrick"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="width: 257px; height: 26px" align="right">
                        <asp:Label ID="lblPass" runat="server" BackColor="Transparent" ForeColor="Gainsboro"
                            Text="Password" Font-Size="12px"></asp:Label></td>
                    <td style="height: 26px; width: 156px;" align="left">
                        <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="149px"></asp:TextBox></td>
                    <td style="height: 26px; text-align: left;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass"
                            ErrorMessage="Enter Password" ForeColor="Firebrick"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="width: 257px">
                    </td>
                    <td style="width: 156px">
                        <asp:Button ID="btnlogin" runat="server" Text="LOGIN" OnClick="btnlogin_Click" /></td>
                    <td>
                        <asp:Button ID="frgtpass" runat="server" Text="Forgot Password" /></td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="pnlviewdetail" runat="server" Width="100%" Visible="false">
            <table width="50%">
                <tr style="height:25px ">
                    <td align="right" style="width: 73px; height: 23px; text-align: left;">
                        </td>
                    <td style="width: 31px">
                    </td>
                    <td style="width: 192px">
                    </td>
                </tr>
                <tr style="height:25px ">
                    <td align="right" style="width: 73px; height: 23px; text-align: left;">
                        <asp:Label ID="lblfname" runat="server" BackColor="Transparent" ForeColor="Gainsboro" Text="First Name" Font-Size="12px" Font-Bold="True"></asp:Label></td>
                    <td align="center" style="width: 31px; height: 16px;">
                        <asp:Label ID="Label27" runat="server" BackColor="Transparent" ForeColor="White"
                            Text=":"></asp:Label></td>
                    <td style="width: 192px; height: 16px; text-align: left;">
                        <asp:Label ID="lblrfname" runat="server" BackColor="Transparent" ForeColor="White"></asp:Label></td>
                </tr>
                <tr style="height:25px ">
                    <td align="right" style="width: 73px; height: 23px; text-align: left;">
                        <asp:Label ID="lbllastname" runat="server" BackColor="Transparent" ForeColor="Gainsboro" Text="Last Name" Font-Size="12px" Font-Bold="True"></asp:Label></td>
                    <td align="center" style="width: 31px">
                        <asp:Label ID="Label28" runat="server" BackColor="Transparent" ForeColor="White"
                            Text=":"></asp:Label></td>
                    <td style="width: 192px; text-align: left;">
                        <asp:Label ID="lblrlname" runat="server" BackColor="Transparent" ForeColor="White"></asp:Label></td>
                </tr>
                <tr style="height:25px ">
                    <td align="right" style="width: 73px; height: 23px; text-align: left;">
                        <asp:Label ID="lbloccupation" runat="server" BackColor="Transparent" ForeColor="Gainsboro" Text="Occupation" Font-Size="12px" Font-Bold="True"></asp:Label></td>
                    <td align="center" style="width: 31px">
                        <asp:Label ID="Label29" runat="server" BackColor="Transparent" ForeColor="White"
                            Text=":"></asp:Label></td>
                    <td style="width: 192px; text-align: left;">
                        <asp:Label ID="lblroccupation" runat="server" BackColor="Transparent" ForeColor="White"></asp:Label></td>
                </tr>
                 <tr style="height:25px ">
                    <td align="right" style="width: 73px; height: 23px; text-align: left;">
                        <asp:Label ID="lblcity" runat="server" BackColor="Transparent" ForeColor="Gainsboro" Text="Street" Font-Size="12px" Font-Bold="True"></asp:Label></td>
                     <td align="center" style="width: 31px">
                         <asp:Label ID="Label30" runat="server" BackColor="Transparent" ForeColor="White"
                             Text=":"></asp:Label></td>
                    <td style="width: 192px; text-align: left;">
                        <asp:Label ID="lblrstreet" runat="server" BackColor="Transparent" ForeColor="White"></asp:Label></td>
                </tr>
                 <tr style="height:25px ">
                    <td style="height: 23px; width: 73px; text-align: left;" align="right">
                        <asp:Label ID="Label6" runat="server" BackColor="Transparent" ForeColor="Gainsboro" Text="City" Font-Size="12px" Font-Bold="True"></asp:Label></td>
                     <td align="center" style="width: 31px; height: 23px">
                         <asp:Label ID="Label31" runat="server" BackColor="Transparent" ForeColor="White"
                             Text=":"></asp:Label></td>
                    <td style="height: 23px; width: 192px; text-align: left;">
                        <asp:Label ID="lblrcity" runat="server" BackColor="Transparent" ForeColor="White"></asp:Label></td>
                </tr>
                 <tr style="height:25px ">
                    <td align="right" style="height: 23px; width: 73px; text-align: left;">
                        <asp:Label ID="lblstate" runat="server" BackColor="Transparent" ForeColor="Gainsboro" Text="State" Font-Size="12px" Font-Bold="True"></asp:Label></td>
                     <td align="center" style="width: 31px; height: 23px">
                         <asp:Label ID="Label32" runat="server" BackColor="Transparent" ForeColor="White"
                             Text=":"></asp:Label></td>
                    <td style="height: 23px; width: 192px; text-align: left;">
                        <asp:Label ID="lblrstate" runat="server" BackColor="Transparent" ForeColor="White"></asp:Label></td>
                </tr>
                 <tr style="height:25px ">
                    <td align="right" style="width: 73px; height: 23px; text-align: left;">
                        <asp:Label ID="lblcountry" runat="server" BackColor="Transparent" ForeColor="Gainsboro" Text="Country" Font-Size="12px" Font-Bold="True"></asp:Label></td>
                     <td align="center" style="width: 31px">
                         <asp:Label ID="Label33" runat="server" BackColor="Transparent" ForeColor="White"
                             Text=":"></asp:Label></td>
                    <td style="width: 192px; text-align: left;">
                        <asp:Label ID="lblrcountry" runat="server" BackColor="Transparent" ForeColor="White"></asp:Label></td>
                </tr>
                 <tr style="height:25px ">
                    <td align="right" style="width: 73px; height: 23px; text-align: left;">
                        <asp:Label ID="lblpincode" runat="server" BackColor="Transparent" ForeColor="Gainsboro" Text="Pin code" Font-Size="12px" Font-Bold="True"></asp:Label></td>
                     <td align="center" style="width: 31px; height: 16px;">
                         <asp:Label ID="Label34" runat="server" BackColor="Transparent" ForeColor="White"
                             Text=":"></asp:Label></td>
                    <td style="width: 192px; height: 16px; text-align: left;">
                        <asp:Label ID="lblrpincode" runat="server" BackColor="Transparent" ForeColor="White"></asp:Label></td>
                </tr>
                 <tr style="height:25px ">
                    <td align="right" style="width: 73px; height: 23px; text-align: left;">
                        <asp:Label ID="lblcontactno" runat="server" BackColor="Transparent" ForeColor="Gainsboro"
                            Text="Contact No" Font-Size="12px" Font-Bold="True"></asp:Label></td>
                     <td align="center" style="width: 31px">
                         <asp:Label ID="Label35" runat="server" BackColor="Transparent" ForeColor="White"
                             Text=":"></asp:Label></td>
                    <td style="width: 192px; text-align: left;">
                        <asp:Label ID="lblrcontactno" runat="server" BackColor="Transparent" ForeColor="White"></asp:Label></td>
                </tr>
                 <tr style="height:25px ">
                    <td align="right" style="width: 73px; height: 23px; text-align: left;">
                        <asp:Label ID="lblmobileno" runat="server" BackColor="Transparent" ForeColor="Gainsboro"
                            Text="Mobile No" Font-Size="12px" Font-Bold="True"></asp:Label></td>
                     <td align="center" style="width: 31px">
                         <asp:Label ID="Label36" runat="server" BackColor="Transparent" ForeColor="White"
                             Text=":"></asp:Label></td>
                    <td style="width: 192px; text-align: left;">
                        <asp:Label ID="lblrmobileno" runat="server" BackColor="Transparent" ForeColor="White"></asp:Label></td>
                </tr>
                 <tr style="height:25px ">
                    <td align="right" style="width: 73px; height: 23px; text-align: left;">
                        <asp:Label ID="lblemailid" runat="server" BackColor="Transparent" ForeColor="Gainsboro"
                            Text="Email-ID" Font-Size="12px" Font-Bold="True"></asp:Label></td>
                     <td align="center" style="width: 31px">
                         <asp:Label ID="Label37" runat="server" BackColor="Transparent" ForeColor="White"
                             Text=":"></asp:Label></td>
                    <td style="width: 192px; text-align: left;">
                        <asp:Label ID="lblremailid" runat="server" BackColor="Transparent" ForeColor="White"></asp:Label></td>
                </tr>
                 <tr style="height:25px ">
                    <td style="height: 23px; width: 73px; text-align: left;" align="right">
                        <asp:Label ID="lblusername" runat="server" BackColor="Transparent" ForeColor="Gainsboro"
                            Text="User Name" Font-Size="12px" Font-Bold="True"></asp:Label></td>
                     <td align="center" style="width: 31px; height: 23px">
                         <asp:Label ID="Label38" runat="server" BackColor="Transparent" ForeColor="White"
                             Text=":"></asp:Label></td>
                    <td style="height: 23px; width: 192px; text-align: left;">
                        <asp:Label ID="lblrusername" runat="server" BackColor="Transparent" ForeColor="White"></asp:Label></td>
                </tr>
                 <tr style="height:25px ">
                    <td align="right" style="width: 73px; height: 23px; text-align: left;">
                        </td>
                     <td align="center" style="width: 31px">
                         </td>
                    <td style="width: 192px">
                        </td>
                </tr>
                 <tr style="height:25px ">
                    <td align="right" style="height: 23px; width: 73px; text-align: left;">
                        </td>
                     <td style="width: 31px; height: 26px;">
                     </td>
                    <td style="height: 26px; width: 192px;">
                        <asp:Button ID="Button1" runat="server" Text="Edit" OnClick="Button1_Click" /></td>
                </tr>
            </table>
        
        </asp:Panel>
        
    
    </asp:Panel>
    <asp:Panel ID="pnlupdate" runat="server" Width="100%" Visible="false" CssClass="font">
        &nbsp;<table style="width: 391px" align="center" class="font" >
                <tr style="height:25px ">
                    <td align="right" style="width: 151px">
                        <asp:Label ID="Label1" runat="server" BackColor="Transparent" ForeColor="White"
                            Text="First Name" Font-Bold="True"></asp:Label></td>
                    <td align="center" style="width: 30px">
                    </td>
                    <td align="left" style="width: 198px">
                        <asp:TextBox ID="txtfname" runat="server" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr style="height:25px ">
                    <td align="right" style="width: 151px; height: 21px">
                        <asp:Label ID="Label16" runat="server" BackColor="Transparent" ForeColor="White"
                            Text="Last Name" Font-Bold="True"></asp:Label></td>
                    <td align="center" style="width: 30px; height: 21px">
                    </td>
                    <td align="left" style="height: 21px; width: 198px;">
                        <asp:TextBox ID="txtlname" runat="server" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr style="height:25px ">
                    <td align="right" style="width: 151px">
                        <asp:Label ID="Label17" runat="server" BackColor="Transparent" ForeColor="White"
                            Text="Occupation" Font-Bold="True"></asp:Label></td>
                    <td align="center" style="width: 30px">
                    </td>
                    <td align="left" style="width: 198px">
                        <asp:TextBox ID="txtoccupation" runat="server"></asp:TextBox></td>
                </tr>
                <tr style="height:25px ">
                    <td align="right" style="width: 151px">
                        <asp:Label ID="Label18" runat="server" BackColor="Transparent" ForeColor="White"
                            Text="Street" Font-Bold="True"></asp:Label></td>
                    <td align="center" style="width: 30px">
                    </td>
                    <td align="left" style="width: 198px">
                        <asp:TextBox ID="txtstreet" runat="server"></asp:TextBox></td>
                </tr>
                <tr style="height:25px ">
                    <td align="right" style="width: 151px; height: 24px">
                        <asp:Label ID="Label21" runat="server" BackColor="Transparent" ForeColor="White"
                            Text="City" Font-Bold="True"></asp:Label></td>
                    <td align="center" style="width: 30px; height: 24px">
                    </td>
                    <td align="left" style="width: 198px; height: 24px">
                        <asp:TextBox ID="txtcity" runat="server"></asp:TextBox></td>
                </tr>
                <tr style="height:25px ">
                    <td align="right" style="width: 151px">
                        <asp:Label ID="Label20" runat="server" BackColor="Transparent" ForeColor="White"
                            Text="State" Font-Bold="True"></asp:Label></td>
                    <td align="center" style="width: 30px">
                    </td>
                    <td align="left" style="width: 198px">
                        <asp:TextBox ID="txtState" runat="server"></asp:TextBox></td>
                </tr>
                <tr style="height:25px ">
                    <td align="right" style="width: 151px">
                        <asp:Label ID="Label19" runat="server" BackColor="Transparent" ForeColor="White"
                            Text="Country" Font-Bold="True"></asp:Label></td>
                    <td align="center" style="width: 30px">
                    </td>
                    <td align="left" style="width: 198px">
                        <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox></td>
                </tr>
                <tr style="height:25px ">
                    <td align="right" style="width: 151px; height: 21px">
                        <asp:Label ID="Label22" runat="server" BackColor="Transparent" ForeColor="White"
                            Text="Pin Code" Font-Bold="True"></asp:Label></td>
                    <td align="center" style="width: 30px; height: 21px">
                    </td>
                    <td align="left" style="height: 21px; width: 198px;">
                        <asp:TextBox ID="txtpincode" runat="server"></asp:TextBox></td>
                </tr>
                <tr style="height:25px ">
                    <td align="right" style="width: 151px">
                        <asp:Label ID="Label23" runat="server" BackColor="Transparent" ForeColor="White"
                            Text="Contact No" Font-Bold="True"></asp:Label></td>
                    <td align="center" style="width: 30px">
                    </td>
                    <td align="left" style="width: 198px">
                        <asp:TextBox ID="txtcontactno" runat="server"></asp:TextBox></td>
                </tr>
                <tr style="height:25px ">
                    <td align="right" style="width: 151px">
                        <asp:Label ID="Label24" runat="server" BackColor="Transparent" ForeColor="White"
                            Text="Mobile No" Font-Bold="True"></asp:Label></td>
                    <td align="center" style="width: 30px">
                    </td>
                    <td align="left" style="width: 198px">
                        <asp:TextBox ID="txtmobileno" runat="server"></asp:TextBox></td>
                </tr>
                <tr style="height:25px ">
                    <td align="right" style="width: 151px">
                        <asp:Label ID="Label25" runat="server" BackColor="Transparent" ForeColor="White"
                            Text="Email Id" Font-Bold="True"></asp:Label></td>
                    <td align="center" style="width: 30px">
                    </td>
                    <td align="left" style="width: 198px">
                        <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox></td>
                </tr>
                <tr style="height:25px ">
                    <td align="right" style="width: 151px">
                        <asp:Label ID="Label26" runat="server" BackColor="Transparent" ForeColor="White"
                            Text="User Name" Font-Bold="True"></asp:Label></td>
                    <td align="center" style="width: 30px">
                    </td>
                    <td align="left" style="width: 198px">
                        <asp:TextBox ID="txtusername2" runat="server" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr style="height:25px ">
                    <td align="right" style="width: 151px">
                    </td>
                    <td align="center" style="width: 30px">
                    </td>
                    <td align="left" style="width: 198px">
                        <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="Button2_Click" /></td>
                </tr>
            </table>
        
        </asp:Panel>
                                                 </div> 
</asp:Content>

