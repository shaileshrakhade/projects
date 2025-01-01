<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="SpecialProduct.aspx.cs" Inherits="Admin_SpecialProduct" Title="DD Jewellers | Administarator Panel | Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="min-height:500px">
<asp:Panel ID="outerPanel" runat="server" Width="100%" CssClass="font">
     <table width =100%>
        <tr>
         <td style="width: 100%">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="74"><img src="../Images/Icon/i_products.jpg" width="74" height="66">
            </td>
            <td width="440" align="left"><span class="MainTitle">Products</span>
            </td>
</tr>
        </table>
         </td>
        </tr>
       <tr>
         <td style=" width:100%">
           <asp:Panel ID=PanelMain runat=server Width=100%>
              <table width=100% >
               <tr>
                            <td style="vertical-align: top; text-align: left; width: 567px;">
                              <table border="0" cellspacing="0" cellpadding="1"  width="564px">
<tr>



<td valign="bottom">
<table border=0 cellpadding=0 cellspacing=0>
<tr>
<td valign=top class="MenuTabNormal" style="height: 15px">
<img src="../Images/Menu/left_top.gif" width=5 height=5 border=0 alt=""></td>
<td class="MenuTabNormal" style="height: 15px">
<table border="0" cellspacing="0" cellpadding="2" width="100%">
<tr align="center">
<td style="height: 15px"><a href="Products.aspx" class="MenuFolder" style="text-align: left">&nbsp;View Products&nbsp;</a></td>
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
<td style="height: 15px ; "><a href="ProductAE.aspx" class="MenuFolder">&nbsp;Add Product&nbsp;</a></td>
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
<td style="height: 17px ; vertical-align:bottom   "><span class="MenuTabTitle">
    <asp:Label ID="lblSpecial" runat="server" Text="Special & Home Page Option"></asp:Label></span></td>
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


<td valign="bottom">
<table border=0 cellpadding=0 cellspacing=0>
<tr>
<td valign=top class="MenuTabNormal" style="height: 15px">
<img src="../Images/Menu/left_top.gif" width=5 height=5 border=0 alt=""></td>
<td class="MenuTabNormal" style="height: 15px">
<table border="0" cellspacing="0" cellpadding="2" width="100%">
<tr align="center">
<td style="height: 15px"><a href="Categories.aspx" class="MenuFolder">&nbsp;View Categories&nbsp;</a></td>
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
<td style="height: 15px"><a href="CategoryAE.aspx" class="MenuFolder">&nbsp;Add Category&nbsp;</a></td>
</tr>
</table>
</td>
<td valign=top align=right class="MenuTabNormal" style="height: 15px; width: 6px;"><img
src="../Images/Menu/right_top.gif" width=5 height=5
border=0 alt=""></td>
</tr>
</table>
</td>

</tr>
</table>
                                </td>
                        </tr>
                        <tr>
                        <td >
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" OnRowUpdating="GridView1_RowUpdating" Width="100%" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging"  >
                                <Columns>
                                    <asp:TemplateField HeaderText="Product_ID" Visible="False">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Product_ID") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblProductId" runat="server" Text='<%# Bind("Product_ID") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Product Code">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Product_Code") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Product_Code") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Product Name">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Product_Name") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Product_Name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="RootCategory" HeaderText="Root Category" NullDisplayText="None" />
                                    <asp:BoundField DataField="Category" HeaderText="Category" NullDisplayText="None" />
                                    <asp:BoundField DataField="SubCategory" HeaderText="Sub Category" NullDisplayText="None" />
                                    <asp:TemplateField HeaderText="Check for Special Product">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Special") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="cbSpecial" runat="server" Checked='<%# Eval("Special") %>' />
                                            
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Display on Home Page">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="cbHome" runat="server" Checked='<%# Eval("Home_Option") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Update">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CommandName="update" CommandArgument='<%# Bind("Product_ID") %>'   />  
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                 <RowStyle CssClass="row2" />
        <AlternatingRowStyle CssClass="row1" />
                            </asp:GridView>
                        
                        </td></tr>
                        </table> 
                        </asp:Panel> 
                        </td> 
                        </tr> 
                        </table> 
                        </asp:Panel> 
                                               </div> 
</asp:Content>

