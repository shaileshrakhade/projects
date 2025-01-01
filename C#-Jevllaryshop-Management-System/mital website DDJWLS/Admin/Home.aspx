<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_Home" Title="DD Jewellers | Administarator Panel | Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="min-height:500px">
    <asp:Panel ID="Panel1" runat="server" Height="100%" CssClass="font" Style="vertical-align: middle;text-align: center" Width="100%">
        <table height="480" width=100% >
            <tr>
                <td style="vertical-align: top; text-align: left; width: 61%;" >
                    <table width=100%>
                    <tr>
                    <td style="width: 350px">
                     <table  bordercolor="inactiveborder" cellpadding="2" cellspacing="2">
                        <tr>
                            <td colspan="2" height="20" bgcolor="#dae3ef">
                            <span class=BodyTitle style="color: #000099">Account Details</span>   
                            </td>
                           
                        </tr>
                        <tr>
                            <td style="width: 140px" height="22">
                            <span class=bodyTextBold>Login Id</span> 
                            </td>
                            <td height="22" width="200">
                                <asp:Label ID="lblLoginId" CssClass=body  runat="server"></asp:Label>
                            </td>
                          
                        </tr>
                        <tr>
                            <td style="width: 140px" height="22">
                            </td>
                            <td height="22" width="200"  style="text-align: left">
                                <asp:LinkButton ID="lnkChangePwd" runat="server" OnClick="lnkChangePwd_Click" Width="120px">Password Option</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td colspan="2" >
                                <asp:Panel ID="PanelPwd" runat="server"  Width="100%" Visible="False">
                                <table >
                                <tr>
                                <td  height="22" style="width: 140px">
                                <span class=bodyTextBold>Enter New Password</span> 
                                </td>
                                <td height="22" width="200px" >
                                    <asp:TextBox ID="txtPwd" runat="server" CssClass=body Height="15px" TextMode="Password" Width="160px" ></asp:TextBox>
                                </td>
                                </tr>
                                    <tr>
                                        <td height="22" style="width: 140px">
                                        </td>
                                        <td height="22" width="200px" >
                                    <asp:Button ID="btnSavePwd" runat="server" Height="22px" Text="Change Password" OnClick="btnSavePwd_Click" Width="120px" /></td>
                                    </tr>
                                </table>
                                
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                    </td>
                    </tr>
                    <tr>
                    <td style="width: 350px">
                        <asp:Panel ID="PanelData" runat="server" Width=100% >
                            <table  bordercolor="#000066" cellpadding="3" cellspacing="2" bordercolordark="#330033">
                                <tr>
                                    <td colspan="2" height="20" style="color: #000099" bgcolor="#dae3ef">
                                    <span class=BodyTitle style="color: #000099">Personal Details</span>   
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td style="width: 140px; height: 29px;">
                                    <span class=bodyTextBold>Name</span></td>
                                    <td style="width: 200px; height: 29px;">
                                     <asp:Label ID="lblName" CssClass=body  runat="server"></asp:Label>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td style="width: 140px" height="22">     
                                    <span class=bodyTextBold>Address</span></td>
                                    <td style="width: 200px" height="22">
                                     <asp:Label ID="lblAddress" CssClass=body  runat="server"></asp:Label>
                                    </td>
                                 </tr>
                                      <tr>
                                    <td style="width: 140px;" height="22">     
                                    <span class=bodyTextBold>Comapny&nbsp;Name</span></td>
                                    <td style="width: 200px;" height="22">
                                     <asp:Label ID="lblCompanyName" CssClass=body  runat="server"></asp:Label>
                                    </td>
                                 </tr>
                                  <tr>
                                    <td style="width: 140px; height: 25px;">     
                                    <span class=bodyTextBold>Company&nbsp;Address</span></td>
                                    <td style="width: 200px; height: 25px;">
                                     <asp:Label ID="lblCompanyAddress" CssClass=body  runat="server"></asp:Label>
                                    </td>
                                 </tr>
                                  <tr>
                                    <td style="width: 140px; height: 25px;">     
                                    <span class=bodyTextBold>Contact&nbsp;Number</span></td>
                                    <td style="width: 200px; height: 25px;">
                                     <asp:Label ID="lblContactNo" CssClass=body  runat="server"></asp:Label>
                                    </td>
                                 </tr>
                                  <tr>
                                    <td style="width: 140px" height="22">     
                                    <span class=bodyTextBold>Fax&nbsp; Number</span></td>
                                    <td style="width: 200px" height="22">
                                     <asp:Label ID="lblFaxNo" CssClass=body  runat="server"></asp:Label>
                                    </td>
                                 </tr>
                                <tr>
                                    <td style="width: 140px" height="22">
                                    </td>
                                    <td style="width: 200px" height="22">
                                        <asp:LinkButton ID="lnkEdit" runat="server" OnClick="lnkEdit_Click" Width="94px">Edit Details</asp:LinkButton></td>
                                </tr>
                            </table>
                        
                        </asp:Panel> 
                        <asp:Panel ID="PanelEdit" runat="server" Width=100% Visible="False" >
                            <table  bordercolor="activeborder" cellpadding="2" cellspacing="2">
                                <tr>
                                    <td colspan="2" height="20" bgcolor="#dae3ef">
                                    <span class=BodyTitle style="color: #000099">Personal Details</span>   
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td style="width: 140px" height="22">
                                    <span class=bodyTextBold>First&nbsp;Name</span> 
                                    </td>
                                    <td style="width: 200px" height="22">
                                    <asp:TextBox ID="txtFirstName" runat="server" CssClass=body Height="15px" Width="160px" ></asp:TextBox>
                                    </td>
                                   
                                </tr>
                                 <tr>
                                    <td style="width: 140px" height="22">
                                    <span class=bodyTextBold>Last&nbsp;Name</span> 
                                    </td>
                                    <td style="width:200px" height="22">
                                     <asp:TextBox ID="txtLastName" runat="server" CssClass=body Height="15px" Width="160px" ></asp:TextBox>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td style="width: 140px" height="22">     
                                    <span class=bodyTextBold>Address</span> 
                                    </td>
                                    <td style="width: 200px" height="22">
                                     <asp:TextBox ID="txtAddress" runat="server" CssClass=body Height="15px" TextMode="MultiLine" Width="160px" ></asp:TextBox>
                                    </td>
                                 </tr>
                                      <tr>
                                    <td style="width: 140px;" height="22">     
                                    <span class=bodyTextBold>Comapny&nbsp;Name</span> 
                                    </td>
                                    <td style="width: 200px;" height="22">
                                     <asp:TextBox ID="txtCompanyName" runat="server" CssClass=body Height="15px" Width="160px" ></asp:TextBox>
                                    </td>
                                 </tr>
                                  <tr>
                                    <td style="width: 140px" height="22">     
                                    <span class=bodyTextBold>Company&nbsp;Address</span> 
                                    </td>
                                    <td style="width: 200px" height="22">
                                     <asp:TextBox ID="txtCompanyAddress" runat="server" CssClass=body Height="15px" TextMode="MultiLine" Width="160px" ></asp:TextBox>
                                    </td>
                                 </tr>
                                  <tr>
                                    <td style="width: 140px" height="22">     
                                    <span class=bodyTextBold>Contact&nbsp;Number</span> 
                                    </td>
                                    <td style="width: 200px" height="22">
                                     <asp:TextBox ID="txtContactNo" runat="server" CssClass=body Height="15px" Width="160px" ></asp:TextBox>
                                    </td>
                                 </tr>
                                  <tr>
                                    <td style="width: 140px" height="22">     
                                    <span class=bodyTextBold>Fax&nbsp;Number</span> 
                                    </td>
                                    <td style="width: 200px" height="22">
                                     <asp:TextBox ID="txtFaxNo" runat="server" CssClass=body Height="15px" Width="160px" ></asp:TextBox>
                                    </td>
                                 </tr>
                                <tr>
                                    <td height="22" style="width: 140px">
                                    </td>
                                    <td height="22" style="width: 200px">
                                         <asp:Button ID="btnSave" runat="server" Height="22px" Text="Save Details" OnClick="btnSave_Click" Width="120px" /></td>
                                </tr>
                            </table>
                        
                        </asp:Panel>
                    </td>
                    </tr>
                    </table>
                   
                
                </td>
                <td width=45% style="vertical-align: top; text-align: left">
                    <table style="width: 100%">
                        <tr height=200 >
                            <td style="text-align: left; vertical-align: top;">
                            <table style="width: 350px" bordercolor="inactiveborder" cellpadding="2" cellspacing="2">
                        <tr>
                            <td colspan="2" height="20" bgcolor="#dae3ef">
                            <span class=BodyTitle style="color: #000099">Other Details</span>   
                            </td>
                           
                        </tr>
                        <tr>
                            <td style="width: 137px" height="22">
                            <span class=bodyTextBold>Account Type</span> 
                            </td>
                            <td height="22">
                            <span class=body>Administrator</span>
                            </td>
                            
                        </tr>
                        <tr>
                            <td style="width: 137px" height="22">
                            <span class=bodyTextBold>Last Login</span> 
                            </td>
                            <td height="22">
                               <asp:Label ID="lblLoginDate" CssClass=body  runat="server" Text="Label"></asp:Label>
                            </td>
                          
                        </tr>
                                <tr>
                                    <td height="22" style="width: 137px">
                                    <span class=bodyTextBold>Account Created On</span> 
                                    </td>
                                    <td height="22">
                               <asp:Label ID="lblCreatedDate" CssClass=body  runat="server" Text="Label"></asp:Label>     
                                    </td>
                                </tr>
                       
                    </table>
                                  
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 161px">
                                <table width=100% >
                                    <tr>
                                       
                                        <td style="height: 25px"> &raquo;&raquo;
                                            <asp:HyperLink CssClass=BodyTitle  ID="lnkProduct" NavigateUrl="~/Admin/Products.aspx"   runat="server" Font-Underline="False" ForeColor="#000099">View Products</asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                       
                                        <td style="height: 25px">
                                        &raquo;&raquo;
                                            <asp:HyperLink CssClass=BodyTitle  ID="lnkCategory" NavigateUrl="~/Admin/Categories.aspx"   runat="server" Font-Underline="False" ForeColor="#000099">View Categories</asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        
                                        <td style="height: 25px">
                                         &raquo;&raquo;
                                            <asp:HyperLink ID="lnkOrder" CssClass=BodyTitle  NavigateUrl="~/Admin/Orders.aspx"  runat="server" Font-Underline="False" ForeColor="#000099" >View Orders</asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        
                                        <td style="height: 25px">
                                         &raquo;&raquo;
                                            <asp:HyperLink ID="lnkCustomer" CssClass=BodyTitle  NavigateUrl="~/Admin/Customers.aspx"   runat="server" Font-Underline="False" ForeColor="#000099">View Customers</asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        
                                        <td style="height: 24px">
                                         &raquo;&raquo;
                                            <asp:HyperLink ID="lnkReports" CssClass=BodyTitle  NavigateUrl="~/Admin/reports.aspx"    runat="server" Font-Underline="False" ForeColor="#000099">View Reports</asp:HyperLink>
                                        </td>
                                    </tr>
                                </table>
                           
                           
                            </td>
                        </tr>
                    </table>
                </td>
                
            </tr>
            
        </table>
    </asp:Panel>
    </div> 
</asp:Content>

