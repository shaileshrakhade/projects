<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="OrderProductDetails.aspx.cs" Inherits="Admin_OrderProductDetails" Title="DD Jewellers | Administarator Panel | Orders" %>
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
        
        <asp:LinkButton ID="lnkOrders"  CssClass="SubTitle" runat="server" OnClick="lnkOrders_Click">Back to Orders</asp:LinkButton>
</td>
</tr></table>
</td>
</tr>
<tr>
<td>
    <asp:LinkButton ID="lnkPrint" runat="server" Font-Size=Small>Print</asp:LinkButton>

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
    <asp:Panel ID="PanelSingleProduct"  Visible=false runat="server" Width="100%">
        <table width=100% >
            <tr height="40">
                <td colspan="2">
                <span class="BodyTitle">Product Details</span> 
                </td>
                
            </tr>
            <tr height="30">
                <td style="width: 20%">
                 <span class="checkoutBodyTextBold">Product_Code</span>
                    &nbsp;</td>
                <td width="80%">
                    <asp:Label ID="lblProductCode" CssClass="checkoutBodyText"  runat="server" ></asp:Label>
                                                           
                    
                    </td>
            </tr>
            <tr height="30">
                <td style="width: 20%">
                <span class="checkoutBodyTextBold">Product Name</span> 
                </td>
                <td width="80%">
                <asp:Label ID="lblProductName" CssClass="checkoutBodyText"  runat="server" ></asp:Label> 
                 </td>
            </tr>
            <tr height="30">
                <td style="width: 20%">
                <span class="checkoutBodyTextBold">Price</span> 
                </td>
                <td width="80%">
                <asp:Label ID="lblPrice" CssClass="checkoutBodyText"  runat="server" ></asp:Label> 
                </td>
            </tr>
            <tr height="30">
                <td style="width: 20%">
                 <span class="checkoutBodyTextBold">Weight</span>
                </td>
                <td width="80%">
                <asp:Label ID="lblWeight" CssClass="checkoutBodyText"  runat="server" ></asp:Label> 
                <asp:Label ID="lblweightUnit" CssClass="checkoutBodyText"  runat="server" ></asp:Label> 
                </td>
            </tr>
            <tr height="55">
                <td style="width: 20%; height: 55px;">
                 <span class="checkoutBodyTextBold">Image</span>
                </td>
                <td width="80%" style="height: 55px">
                    <asp:Image ID="Image1" runat="server" Height="50px" Width="70px" />
                
                </td>
            </tr>
            <tr height="30">
                <td style="width: 20%">
                <span class="checkoutBodyTextBold">Short Description</span> 
                </td>
                <td width="80%">
                <asp:Label ID="lblSD" CssClass="checkoutBodyText"  runat="server" ></asp:Label> 
                </td>
            </tr>
            <tr height="30">
                <td style="width: 20%">
                <span class="checkoutBodyTextBold">Long Description</span> 
                </td>
                <td width="80%">
                <asp:Label ID="lblLD" CssClass="checkoutBodyText"  runat="server" ></asp:Label> 
                </td>
            </tr>
        </table>
    
    </asp:Panel>
    <asp:Panel ID="PanelMultipleProduct" Visible=false runat="server" Width="100%">
    <table width=100% >
            <tr height="40">
                <td >
                <span class="BodyTitle">Product Details</span> 
                </td>
               </tr>
               <tr>
               <td>
    <asp:GridView id="GridView1" runat="server" Width="651px" PageSize="7" AllowSorting="True" AllowPaging="True" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging">
        <Columns>
         
            <asp:TemplateField HeaderText="Product Code">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Product_Code") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Product_Code") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Product_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Product_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Weight">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Weight") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Weight") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Weight Unit">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Weight_Unit") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Weight_Unit") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Short Description">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Short_Desc") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Short_Desc") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Long Description">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Long_Desc") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Long_Desc") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
        </Columns>
        
        <RowStyle CssClass="row2"  />
        <AlternatingRowStyle CssClass="row1"  />
    </asp:GridView>
    </td></tr>
    </table> 
    </asp:Panel>
    
</asp:Panel>
</div> 
</asp:Content>

