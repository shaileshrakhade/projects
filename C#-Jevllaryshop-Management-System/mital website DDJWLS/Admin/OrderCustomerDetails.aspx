<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="OrderCustomerDetails.aspx.cs" Inherits="Admin_OrderCustomerDetails" Title="DD Jewellers | Administarator Panel | Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="min-height:500px">
<asp:Panel ID="PanelOrders" runat="server"  Width="100%" CssClass="font">
<table width="100%">
<tr>
<td style="height: 83px">
<table border="0" cellpadding="0" cellspacing="0" width="515">
<tr>
<td width="74">
<img height="66" src="../Images/Icon/i_order.jpg" width="74" /></td>
<td align="left" width="440" >
<span class="MainTitle">Orders</span></td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
<table width="100%">
<tr>
<td valign="top" width=20 style="height: 21px"><img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15" vspace="2"></td>
    <td align="left" valign="top" style="height: 21px">
       
        <asp:LinkButton ID="lnkOrders" CssClass="SubTitle" runat="server" OnClick="lnkOrders_Click">Back to Orders</asp:LinkButton>
</td>
</tr></table>
</td>
</tr>
<tr>
<td>
    <asp:LinkButton ID="lnkPrint" runat="server" Font-Size=Small Visible="False"   >Print Customer Details</asp:LinkButton>

</td></tr>
</table>
    <asp:Panel ID="PanelOrderDetail" runat="server" Width="100%">
    <table width=100% >
             <tr height="30px">
                <td style="width: 20%">
                <span class="checkoutBodyTextBold">Order Code</span> 
                </td>
                <td width="80%">
                    <asp:Label ID="lblOrderCode" CssClass="checkoutBodyText"  runat="server" ></asp:Label>
                   
                                         
                    
                    </td>
            </tr>
            <tr height="50px">
                <td style="width: 20%">
                <span class="checkoutBodyTextBold">Order Date</span> 
                </td>
                <td width="80%">
                <asp:Label ID="lblOrderDate" CssClass="checkoutBodyText"  runat="server" ></asp:Label> 
                
                </td>
            </tr>
            <tr height="30px">
                <td style="width: 20%">
                <span class="checkoutBodyTextBold">Order Total</span> 
                </td>
                <td width="80%">
                <asp:Label ID="lblOrderTotal" CssClass="checkoutBodyText"  runat="server" ></asp:Label> 
                </td>
            </tr>
            <tr height="30px">
                <td style="width: 20%">
                 <span class="checkoutBodyTextBold">Order Status</span>
                </td>
                <td width="80%">
                <asp:Label ID="lblOrderStatus" CssClass="checkoutBodyText"  runat="server" ></asp:Label> 
               
                </td>
            </tr>
            <tr height="30px">
                <td style="width: 20%">
                 <span class="checkoutBodyTextBold">No of Products</span>
                </td>
                <td width="80%">
                <asp:Label ID="lblNoOfProducts" CssClass="checkoutBodyText"  runat="server" ></asp:Label> 
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="PanelCustomer" runat="server" Width="100%">
        <table width=100% >
            <tr height="40px" >
                <td colspan="2">
                <span class="BodyTitle">Customer Details</span> 
                </td>
                
            </tr>
            <tr height="30px">
                <td style="width: 20%">
                <span class="checkoutBodyTextBold">Name</span> 
                </td>
                <td width="80%">
                    <asp:Label ID="lblFirstName" CssClass="checkoutBodyText"  runat="server" ></asp:Label>
                     <asp:Label ID="lblLastName" CssClass="checkoutBodyText"  runat="server" ></asp:Label>
                                         
                    
                    </td>
            </tr>
            <tr height="50px">
                <td style="width: 20%">
                <span class="checkoutBodyTextBold">Address</span> 
                </td>
                <td width="80%">
                <asp:Label ID="lblStreet" CssClass="checkoutBodyText"  runat="server" ></asp:Label> 
                <asp:Label ID="lblCity" CssClass="checkoutBodyText"  runat="server" ></asp:Label> 
                <br />
                <asp:Label ID="lblState" CssClass="checkoutBodyText"  runat="server" ></asp:Label> 
                <asp:Label ID="lblCountry" CssClass="checkoutBodyText"  runat="server" ></asp:Label> 
                <asp:Label ID="lblPinCode" CssClass="checkoutBodyText"  runat="server" ></asp:Label> 
                </td>
            </tr>
            <tr height="30px">
                <td style="width: 20%">
                <span class="checkoutBodyTextBold">Occupation</span> 
                </td>
                <td width="80%">
                <asp:Label ID="lblOccupation" CssClass="checkoutBodyText"  runat="server" ></asp:Label> 
                </td>
            </tr>
            <tr height="30px">
                <td style="width: 20%">
                 <span class="checkoutBodyTextBold">Contact Number</span>
                </td>
                <td width="80%">
                <asp:Label ID="lblContactNo" CssClass="checkoutBodyText"  runat="server" ></asp:Label> 
                <asp:Label ID="lblMobileNo" CssClass="checkoutBodyText"  runat="server" ></asp:Label> 
                </td>
            </tr>
            <tr height="30px">
                <td style="width: 20%">
                 <span class="checkoutBodyTextBold">Email Address</span>
                </td>
                <td width="80%">
                <asp:Label ID="lblEmailId" CssClass="checkoutBodyText"  runat="server" ></asp:Label> 
                </td>
            </tr>
        </table>
    
    </asp:Panel>
</asp:Panel>    
</div> 
</asp:Content>

