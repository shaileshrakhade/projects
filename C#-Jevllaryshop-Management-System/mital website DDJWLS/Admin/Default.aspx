s<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>DD Jewellers | Administarator Panel</title>
    <link rel="stylesheet" href="AdminStyleSheet.css" type="text/css" />
</head>
<body class="bodystyle" style="border: 0; border-collapse: collapse; top: 0; text-align: center">
    <form id="form1" runat="server" style="width: 950px;">
    <div style="min-height: 700px">
        <table border="0" cellpadding="0" cellspacing="0" width="100%" class="font">
            <tr>
                <td style="width: 100%">
                    <table width="100%">
                        <tr>
                            <td>
                                <table border="0" cellpadding="0" cellspacing="0" style="border: 1px solid" bordercolor="black"
                                    width="100%">
                                    <tr>
                                        <td width="100%" style="height: 55px">
                                            <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;"
                                                bordercolor="#111111" width="100%">
                                                <tr height="54px">
                                                    <td width="72%" style="font-weight: bold; font-size: 20px; text-align: left; color: #86264a;
                                                        font-family: Verdana; vertical-align: middle;" class="headertitle">
                                                        &nbsp;&nbsp; DD Jwellers Administrator Panel
                                                    </td>
                                                    <td width="28%" valign="bottom" colspan='2'>
                                                        <table height="100%" width="100%">
                                                            <tr>
                                                                <td height="20px" style="vertical-align: bottom; text-align: center">
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="34px" style="vertical-align: bottom; text-align: center">
                                                                    <a href="../Home.aspx" class="headerLink" style="vertical-align: bottom; text-align: left">
                                                                        Store&nbsp;Home</a>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="width: 100%; text-align: center;">
                    <div align="center" style="width: 100%; height: 225px; text-align: center; margin-top: 60px;
                        margin-bottom: 60px">
                        <table width="300" border="0" cellspacing="0" cellpadding="0">
                            <tr align="left">
                                <td>
                                    <table border="0" cellspacing="0" cellpadding="1">
                                        <tr>
                                            <td>
                                                <table border="0" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td valign="top" class="MenuTabSelect">
                                                            <img src="../Images/Menu/left_top.gif" width="5" height="5" border="0" alt="">
                                                        </td>
                                                        <td class="MenuTabSelect">
                                                            <table border="0" cellspacing="0" cellpadding="2" width="100%">
                                                                <tr align="center">
                                                                    <td class="MenuTabTitle">
                                                                        &nbsp;LOG&nbsp;IN&nbsp;
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                        <td valign="top" align="right" class="MenuTabSelect">
                                                            <img src="../Images/Menu/right_top.gif" width="5" height="5" border="0" alt="">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                    <table border="0" cellspacing="0" cellpadding="0" width="300">
                                        <tr>
                                            <td width="1">
                                                <table cellpadding="1" cellspacing="0" border="0" width="300">
                                                    <tr bgcolor="#CECECE">
                                                        <td align="center">
                                                            <table width="298" border="0" cellspacing="0" cellpadding="5" bgcolor="#FFFFFF">
                                                                <tr valign="top">
                                                                    <td colspan="3">
                                                                        <table width="100%" border="0" cellspacing="0" cellpadding="2">
                                                                            <tr>
                                                                                <td width="50" valign="top" align="left">
                                                                                    <img src="../Images/LeftMenu/admin.gif" width="17" height="24"><img src="../Images/Icon/alt.gif"
                                                                                        width="22" height="16" hspace="2" align="top">
                                                                                </td>
                                                                                <td valign="top">
                                                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                                        <tr>
                                                                                            <td width="11" valign="top" align="left" style="height: 13px">
                                                                                                <img src="../Images/LeftMenu/arrow_gray.gif" width="9" height="9" vspace="2">
                                                                                            </td>
                                                                                            <td align="left" style="height: 13px">
                                                                                                <asp:Label ID="Label1" runat="server" CssClass="bodyText" Text="Please enter your login details below:"
                                                                                                    Width="218px"></asp:Label>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td width="15">
                                                                        <img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15">
                                                                    </td>
                                                                    <td align="left">
                                                                        <span class="bodyTextBold">User Name</span>
                                                                    </td>
                                                                    <td align="left">
                                                                        &nbsp;<asp:TextBox ID="txtUserName" runat="server" MaxLength="100" Width="140px"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15">
                                                                    </td>
                                                                    <td align="left">
                                                                        <span class="bodyTextBold">Password</span>
                                                                    </td>
                                                                    <td align="left">
                                                                        &nbsp;<asp:TextBox ID="txtPassword" runat="server" MaxLength="20" Width="140px" TextMode="Password"></asp:TextBox>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center" colspan="3">
                                                                        <span class="bodyTextError"></span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                    <td>
                                                                        &nbsp;
                                                                    </td>
                                                                    <td align="right">
                                                                        <asp:Button ID="btnsubmit" runat="server" Text="Log In" OnClick="btnsubmit_Click" />&nbsp;
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="MenuTabSelect">
                                                <img src="../Images/Menu/box_bottom300.gif" height="11" width="100%">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="width: 657px">
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
