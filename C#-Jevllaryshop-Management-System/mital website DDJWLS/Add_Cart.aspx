<%@ Page Language="C#" MasterPageFile="~/DDMasterPage.master" AutoEventWireup="true" CodeFile="Add_Cart.aspx.cs" Inherits="Add_Cart" Title="DD JEWELLERS | CART"    %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="min-height:500px">
<asp:Panel ID="pnlcartview" runat="server" Width="100%" Visible="false" CssClass="font" >
<table width=100%>
<tr>
<td style="text-align: left">
    <asp:Label ID="Label4" runat="server" Text="Cart" BackColor="Transparent" ForeColor="White" Font-Bold="True" Font-Names="Verdana" Font-Size="16px"></asp:Label>
</td>
</tr>
<tr>
<td style="height: 152px">

<asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" AllowSorting="True" BackColor="LightGray" Width="100%" ForeColor="Black"  RowStyle-HorizontalAlign="Center" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" UseAccessibleHeader="False">
                <Columns>
                    <asp:TemplateField Visible="False">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Product_ID")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            Product Name
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("product_Name")%>'></asp:Label>  
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            Weight
                        </HeaderTemplate>
                        <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Weight")%>'></asp:Label>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Weight_Unit")%>'></asp:Label>
                          </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            Price
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Buttons/button_remove.gif"  CommandName="remove"  CommandArgument='<%# Bind("Cart_ID")%>'  />
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                       
                </Columns>
    <RowStyle HorizontalAlign="Center" />
    <HeaderStyle Font-Bold="True" Font-Names="Verdana" Font-Size="14px" BackColor="DimGray" ForeColor="White" />
    <AlternatingRowStyle BackColor="DarkGray" />
                                
            </asp:GridView>


</td>
</tr>

<tr>
<td>
    <asp:Button ID="Button1" runat="server" Text="Resume Shopping" OnClick="Button1_Click" />&nbsp;
    <asp:Button ID="btnClearCart" runat="server" Text="Clear Cart" OnClick="btnClearCart_Click" />
    <asp:Button ID="Button2" runat="server" Text="Place Order" OnClick="Button2_Click" /></td>

</tr>
</table>

</asp:Panel>
</div> 
</asp:Content>

