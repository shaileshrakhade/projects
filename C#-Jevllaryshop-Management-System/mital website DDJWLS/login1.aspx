<%@ Page Language="C#" MasterPageFile="~/DDMasterPage.master" AutoEventWireup="true" CodeFile="~/login1.aspx.cs" Inherits="login" Title="DD JEWELLERS | LOGIN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="min-height:500px">
    <table height="60" >
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
        </tr>
    </table>
   
    <div align=center style="vertical-align: middle; text-align: center;"  >  
    <asp:Panel ID="PanelL" runat="server" CssClass="font" Height="250px" Width="450px" style="background-color: #DAEDF4; vertical-align:middle; border-right: #DAEDF4 thin solid; border-top: #DAEDF4 thin solid; border-left: #DAEDF4 thin solid; border-bottom: #DAEDF4 thin solid;" BorderStyle="Outset">
    <table height=100% width=100%  >
    <tr height="100%" >
    <td width="40%" style="height: 100%" >
    <table height=100% width=100%>
    <tr  height="40%" >
    <td style="text-align: right">
        <asp:Image ID="imgLogin" ImageUrl="~/Images/computer.JPG"  runat="server" />
    </td>
    </tr>
    <tr height="60%">
    <td style="vertical-align: top; text-align: left">
    <table>
        <tr>
            <td style="text-align: left">
            <span style="font-size: 12px; font-family: Verdana">Welcome to DD Jewellers</span>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
            <span style="font-size: 14px; font-family: Verdana; text-align: left;">New User?
            </span>
                      
                <asp:HyperLink ID="lnk1" NavigateUrl="~/Registration.aspx" Font-Names="Verdana" Font-Size="14px"   runat="server" Font-Bold="True" ForeColor="Gray">Sign 
                Up</asp:HyperLink>
            
            </td>
        </tr>
        <tr>
            <td style="text-align: left">
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Admin/login.aspx">Admin 
                SignIn</asp:HyperLink>
            </td>
        </tr>
    </table> 
    </td> </tr></table>
    </td>
    <td width="70%" style="height: 100%">
    <table  height=100% width=100% >
    <tr height="20%" >
    <td style="vertical-align: bottom; text-align: left">
    <span style="font-weight: bolder; font-size: 16px; color: #cc0033; font-family: Verdana">
        LOGIN</span> 
    </td>
    </tr>
     <tr height="80%">
    <td style="text-align: left">
    
    <asp:Panel ID="Panel1" runat="server" Height="80%" Width="230px" style="background-color: #BCDEEB; text-align: left; border-right: #DAEDF4 thin solid; border-top: #DAEDF4 thin solid; border-left: #DAEDF4 thin solid; border-bottom: #DAEDF4 thin solid;" BorderColor="Cyan" BorderStyle="Inset" >
        <table width="180" >
            <tr height="25" >
            <td width="18" ></td>
                <td style="vertical-align: bottom; text-align: left; font-size: 12px; font-family: Verdana;">
                    Username
                </td>
            </tr>
            <tr height="20">
            <td width="18" ></td>
                <td>
                <asp:TextBox ID="txtName" runat="server" Width="140px"></asp:TextBox>
                </td>
            </tr>
            <tr height="25">
            <td width="18" ></td>
                <td style="vertical-align: bottom; text-align: left; font-size: 12px; font-family: Verdana;">
                    Password     
                </td>
            </tr>
            <tr height="20">
            <td width="18" ></td>
                <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="140px"></asp:TextBox>
                </td>
            </tr>
            <tr height="30">
            <td width="18" ></td>
            <td>
                <asp:Button ID="btnlogin1" runat="server" Text="Login" style="border-right: #000000 1px solid; border-top: #000000 1px solid; border-left: #000000 1px solid; border-bottom: #000000 1px solid; background-color: #BCDEEB; font-size: 12px; font-family: Verdana;" Width="64px" OnClick="btnlogin1_Click" />
            </td></tr>
        </table>
      </asp:Panel>
    </td>
    </tr>
    </table>
    
    
    </td>
    </tr>
    </table>
    
    </asp:Panel>
    </div>
 </div>  
 
</asp:Content>

