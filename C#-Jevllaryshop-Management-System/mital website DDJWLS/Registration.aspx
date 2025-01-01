<%@ Page Language="C#" MasterPageFile="~/DDMasterPage.master" AutoEventWireup="true"
    CodeFile="Registration.aspx.cs" Inherits="Default2" Title="DD JEWELLERS | CUSTOMER REGISTRATION" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="min-height: 500px">
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Width="100%" HorizontalAlign="Center">
            <table style="width: 446px; height: 295px">
                <tr>
                    <td style="width: 65px; height: 25px" align="left">
                        <asp:Label ID="Label2" runat="server" BackColor="Transparent" ForeColor="Gainsboro"
                            Text="First Name :" Width="117px" Font-Names="Verdana" Font-Size="12px" Font-Bold="True"></asp:Label>
                    </td>
                    <td style="width: 83px;" height="25">
                        <asp:TextBox ID="txtfname" runat="server" Height="18px"></asp:TextBox>
                    </td>
                    <td height="17" style="width: 82px; text-align: left;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname"
                            ErrorMessage="Enter First Name" Width="104px" ForeColor="Firebrick"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 65px; height: 25px" align="left">
                        <asp:Label ID="Label3" runat="server" BackColor="Transparent" ForeColor="Gainsboro"
                            Text="Last Name :" Width="117px" Font-Names="Verdana" Font-Size="12px" Font-Bold="True"></asp:Label>
                    </td>
                    <td style="width: 83px;" height="25">
                        <asp:TextBox ID="txtlname" runat="server" Height="18px"></asp:TextBox>
                    </td>
                    <td height="17" style="width: 82px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 65px; height: 25px" align="left">
                        <asp:Label ID="Label4" runat="server" BackColor="Transparent" BorderStyle="None"
                            ForeColor="Gainsboro" Text="Occupation :" Font-Names="Verdana" Font-Size="12px"
                            Font-Bold="True"></asp:Label>
                    </td>
                    <td style="width: 83px;" height="25">
                        <asp:TextBox ID="txtoccupation" runat="server" Height="18px"></asp:TextBox>
                    </td>
                    <td height="17" style="width: 82px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 65px; height: 25px" align="left">
                        <asp:Label ID="Label5" runat="server" BackColor="Transparent" ForeColor="Gainsboro"
                            Text="Street :" Font-Names="Verdana" Font-Size="12px" Font-Bold="True"></asp:Label>
                    </td>
                    <td style="width: 83px;" height="25">
                        <asp:TextBox ID="txtstreet" runat="server" Height="18px"></asp:TextBox>
                    </td>
                    <td height="17" style="width: 82px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtstreet"
                            ErrorMessage="Enter Your Address" Width="142px" Style="text-align: left" ForeColor="Firebrick"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" style="width: 65px; height: 25px">
                        <asp:Label ID="Label6" runat="server" BackColor="Transparent" ForeColor="Gainsboro"
                            Text="City :" Font-Names="Verdana" Font-Size="12px" Font-Bold="True"></asp:Label>
                    </td>
                    <td height="17" style="width: 83px">
                        <asp:TextBox ID="txtcity" runat="server" Height="18px"></asp:TextBox>
                    </td>
                    <td height="17" style="width: 82px; text-align: left;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcity"
                            ErrorMessage="Enter City" Width="63px" ForeColor="Firebrick"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 65px; height: 25px" align="left">
                        <asp:Label ID="Label7" runat="server" BackColor="Transparent" ForeColor="Gainsboro"
                            Text="State :" Font-Names="Verdana" Font-Size="12px" Font-Bold="True"></asp:Label>
                    </td>
                    <td style="width: 83px; height: 17px;">
                        <asp:TextBox ID="txtState" runat="server" Height="18px"></asp:TextBox>
                    </td>
                    <td style="width: 82px; height: 17px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 65px; height: 25px" align="left">
                        <asp:Label ID="Label1" runat="server" BackColor="Transparent" ForeColor="Gainsboro"
                            Text="Country :" Font-Bold="True"></asp:Label>
                    </td>
                    <td style="width: 83px; height: 25px;" align="left">
                        <asp:TextBox ID="txtCountry" runat="server" Height="18px"></asp:TextBox>
                    </td>
                    <td align="center" style="width: 82px; text-align: left; height: 25px;">
                    </td>
                </tr>
                <tr>
                    <td style="width: 65px; height: 25px" align="left">
                        <asp:Label ID="Label9" runat="server" BackColor="Transparent" ForeColor="Gainsboro"
                            Text="Pin Code :" Width="79px" Font-Names="Verdana" Font-Size="12px" Font-Bold="True"></asp:Label>
                    </td>
                    <td style="width: 83px;" height="17">
                        <asp:TextBox ID="txtpincode" runat="server" Height="18px"></asp:TextBox>
                    </td>
                    <td align="center" height="17" style="width: 82px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 65px; height: 25px" align="left">
                        <asp:Label ID="Label10" runat="server" BackColor="Transparent" ForeColor="Gainsboro"
                            Text="Contact No :" Width="98px" Font-Names="Verdana" Font-Size="12px" Font-Bold="True"></asp:Label>
                    </td>
                    <td style="width: 83px;" height="17">
                        <asp:TextBox ID="txtcontactno" runat="server" Height="18px"></asp:TextBox>
                    </td>
                    <td height="17" style="width: 82px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 65px; height: 25px" align="left">
                        <asp:Label ID="Label11" runat="server" BackColor="Transparent" ForeColor="Gainsboro"
                            Text="Mobile No :" Width="96px" Font-Names="Verdana" Font-Size="12px" Font-Bold="True"></asp:Label>
                    </td>
                    <td style="width: 83px;" height="17">
                        <asp:TextBox ID="txtmobileno" runat="server" Height="18px"></asp:TextBox>
                    </td>
                    <td height="17" style="width: 82px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 65px; height: 25px" align="left">
                        <asp:Label ID="Label12" runat="server" BackColor="Transparent" ForeColor="Gainsboro"
                            Text="E-Mail Id :" Width="85px" Font-Names="Verdana" Font-Size="12px" Font-Bold="True"></asp:Label>
                    </td>
                    <td style="width: 83px;" height="17" align="left">
                        <asp:TextBox ID="txtemailid" runat="server" Height="18px"></asp:TextBox>
                    </td>
                    <td align="left" height="17" style="width: 82px">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemailid"
                            ErrorMessage="Enter Valid Email Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            Width="140px" ForeColor="Firebrick"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 65px; height: 25px" align="left">
                        <asp:Label ID="Label13" runat="server" BackColor="Transparent" ForeColor="Gainsboro"
                            Text="User Name :" Width="90px" Font-Names="Verdana" Font-Size="12px" Font-Bold="True"></asp:Label>
                    </td>
                    <td style="width: 83px;" height="17">
                        <asp:TextBox ID="txtusername" runat="server" Height="18px"></asp:TextBox>
                    </td>
                    <td height="17" style="width: 82px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtusername"
                            ErrorMessage="Enter your Login Name" Width="143px" ForeColor="Firebrick"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 65px; height: 25px" align="left">
                        <asp:Label ID="Label14" runat="server" BackColor="Transparent" ForeColor="Gainsboro"
                            Text="Password :" Font-Names="Verdana" Font-Size="12px" Font-Bold="True"></asp:Label>
                    </td>
                    <td style="width: 65px; height: 25px;" align="left">
                        <asp:TextBox ID="txtpassword" runat="server" Height="18px" TextMode="Password" Width="149px"></asp:TextBox>
                    </td>
                    <td align="left" style="width: 82px; height: 25px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword"
                            ErrorMessage="Enter Password" Width="136px" ForeColor="Firebrick"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 65px; height: 10px" align="right">
                    </td>
                    <td style="width: 65px; height: 10px;" align="left">
                        &nbsp;<asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                    </td>
                    <td align="left" style="width: 82px; height: 10px">
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
</asp:Content>
