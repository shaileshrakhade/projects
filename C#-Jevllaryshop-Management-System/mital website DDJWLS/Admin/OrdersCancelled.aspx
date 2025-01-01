<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="OrdersCancelled.aspx.cs" Inherits="Admin_OrdersCancelled" Title="DD Jewellers | Administarator Panel | Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="min-height:500px">
<asp:Panel ID="PanelOrders" runat="server"  Width="100%" CssClass="font">
<table>
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
<td >
<table border="0" cellspacing="0" cellpadding="1">
<tr>
<td valign="bottom">
<table border=0 cellpadding=0 cellspacing=0>
<tr>
<td valign=top class="MenuTabNormal" style="height: 15px">
<img src="../Images/Menu/left_top.gif" width=5 height=5 border=0 alt=""></td>
<td class="MenuTabNormal" style="height: 15px">
<table border="0" cellspacing="0" cellpadding="2" width="100%">
<tr align="center">
<td style="height: 15px"><a href="Orders.aspx" class="MenuFolder">&nbsp;View&nbsp;</a></td>
</tr>
</table>
</td>
<td valign=top align=right class="MenuTabNormal" style="height: 15px; width: 6px;"><img
src="../Images/Menu/right_top.gif" width=5 height=5
border=0 alt=""></td>
</tr>
</table>
</td>
<td valign="bottom">
<table border=0 cellpadding=0 cellspacing=0>
<tr>
<td valign=top class="MenuTabNormal" style="height: 15px">
<img src="../Images/Menu/left_top.gif" width=5 height=5 border=0 alt=""></td>
<td class="MenuTabNormal" style="height: 15px">
<table border="0" cellspacing="0" cellpadding="2" width="100%">
<tr align="center">
<td style="height: 15px"><a href="OrdersNew.aspx" class="MenuFolder">&nbsp;New Orders&nbsp;</a></td>
</tr>
</table>
</td>
<td valign=top align=right class="MenuTabNormal" style="height: 15px; width: 6px;"><img
src="../Images/Menu/right_top.gif" width=5 height=5
border=0 alt=""></td>
</tr>
</table>
</td>


<td valign="bottom">
<table border=0 cellpadding=0 cellspacing=0>
<tr>
<td valign=top class="MenuTabNormal" style="height: 15px">
<img src="../Images/Menu/left_top.gif" width=5 height=5 border=0 alt=""></td>
<td class="MenuTabNormal" style="height: 15px">
<table border="0" cellspacing="0" cellpadding="2" width="100%">
<tr align="center">
<td style="height: 15px"><a href="OrdersProcessed.aspx" class="MenuFolder">&nbsp;Processed&nbsp;</a></td>
</tr>
</table>
</td>
<td valign=top align=right class="MenuTabNormal" style="height: 15px; width: 6px;"><img
src="../Images/Menu/right_top.gif" width=5 height=5
border=0 alt=""></td>
</tr>
</table>
</td>

<td valign="bottom">
<table border=0 cellpadding=0 cellspacing=0>
<tr>
<td valign=top class="MenuTabSelect" height="17px" ><img
src="../Images/LeftMenu/left_top.gif" width=5 height=5
border=0 alt=""></td>
<td class="MenuTabSelect"  height="17px">
<table border="0" cellspacing="0" cellpadding="2" width="100%">
<tr align="center">
<td style="height: 17px"><span class="MenuTabTitle">&nbsp;Cancelled&nbsp;</span></td>
</tr>
</table>
</td>
<td valign=top align=right class="MenuTabSelect" style="height: 17px"><img
src="../Images/LeftMenu/right_top.gif" width=5 height=5
border=0 alt=""><br>
<img src="../Images/AdminMaster/spacer.gif" width="1" height="15">
</td>
</tr>
</table>
</td>

</tr>
</table>
<span class="BodyTitle"><img src="../Images/LeftMenu/arrow_box.gif" width="13" height="13">&nbsp;
Orders</span>
</td>
</tr>
    <tr>
        <td>
            <asp:Panel ID="PanelData" runat="server"  Width="100%">
          
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" PageSize="5" OnRowCommand="GridView1_RowCommand" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
        <Columns>
            <asp:TemplateField HeaderText="Order Id" Visible="False">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Order_ID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Order_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Order Code">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Order_Code") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Order_Code") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Customer_ID" Visible="False">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Customer_ID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Customer_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Order Date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Order_Date") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Order_Date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Order Amount">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Order_Total") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Order_Total") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="No of Products">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("No_Of_Products") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("No_Of_Products") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Cancelled">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Cancelled") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Cancelled") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
            <ItemTemplate>
            <table><tr>
            <td>
            <asp:Button ID="btnCustomer" runat="server" Text="Customer Details"  CommandName="Customer"  CommandArgument='<%# Bind("Order_ID") %>' Height=22  Width="110" />
            </td></tr>
            <tr>
            <td>
            <asp:Button ID="btnProduct" runat="server" Text="Product Details" CommandName="Product" CommandArgument='<%# Bind("Order_ID") %>' Height=22 Width="110"/>
            </td></tr>
            </table>
                
                
            </ItemTemplate> 
            </asp:TemplateField>
                     
           
        </Columns>
        <RowStyle CssClass="row2" />
        <AlternatingRowStyle CssClass="row1" />
    </asp:GridView>
              </asp:Panel>
        </td>
    </tr>
 <tr>
             <td style=" vertical-align: top; text-align: left;">
                 <asp:Panel ID="PanelError"  Height="100px"  runat="server" Width="100%" Visible="False">
                     <table style="width: 50%">
                         <tr>
                             <td width ="19">
                                 <img height="24" src="../Images/Icon/admin.gif" width="17" /></td>
                             <td width="24">
                                 <img height="16" hspace="2" src="../Images/Icon/alt.gif" width="22" /></td>
                             <td>
                                 <asp:Label ID="lblNoData" runat="server" Text="No Order Found"></asp:Label></td>
                         </tr>
                     </table>
                 </asp:Panel>
             </td>
         </tr>
</table>
</asp:Panel>
</div> 
</asp:Content>

