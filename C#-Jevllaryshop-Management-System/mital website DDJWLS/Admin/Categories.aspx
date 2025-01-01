<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Categories.aspx.cs" Inherits="Admin_Categories" Title="DD Jewellers | Administarator Panel | Categories" MaintainScrollPositionOnPostback="true"   %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="min-height:500px">
<asp:Panel ID="outerPanel" runat="server" Width="100%" CssClass="font" >
     <table>
        <tr>
         <td style="height: 83px">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="74"><img src="../Images/Icon/i_category.gif" width="74" height="66">
            </td>
            <td width="440" align="left"><span class="MainTitle">Categories</span>
            </td>
</tr>
        </table>
         </td>
        </tr>
        <tr>
                            <td style="height: 150px" >
                            
                           <table border="0" cellspacing="0" cellpadding="1" width="564px" >
<tr>



<td valign="bottom" style="height: 58px">
<table border=0 cellpadding=0 cellspacing=0>
<tr>
<td valign=top class="MenuTabNormal" style="height: 15px">
<img src="../Images/Menu/left_top.gif" width=5 height=5 border=0 alt=""></td>
<td class="MenuTabNormal" style="height: 15px">
<table border="0" cellspacing="0" cellpadding="2" width="100%">
<tr align="center">
<td style="height: 15px"><a href="Products.aspx" class="MenuFolder">&nbsp;View Products&nbsp;</a></td>
</tr>
</table>
</td>
<td valign=top align=right class="MenuTabNormal" style="height: 15px; width: 6px;"><img
src="../Images/Menu/right_top.gif" width=5 height=5
border=0 alt=""></td>
</tr>
</table>
</td>


<td valign="bottom" style="height: 58px">
<table border=0 cellpadding=0 cellspacing=0>
<tr>
<td valign=top class="MenuTabNormal" style="height: 15px">
<img src="../Images/Menu/left_top.gif" width=5 height=5 border=0 alt=""></td>
<td class="MenuTabNormal" style="height: 15px">
<table border="0" cellspacing="0" cellpadding="2" width="100%">
<tr align="center">
<td style="height: 15px"><a href="ProductAE.aspx" class="MenuFolder">&nbsp;Add Product&nbsp;</a></td>
</tr>
</table>
</td>
<td valign=top align=right class="MenuTabNormal" style="height: 15px; width: 6px;"><img
src="../Images/Menu/right_top.gif" width=5 height=5
border=0 alt=""></td>
</tr>
</table>
</td>

<td valign="bottom" style="height: 58px">
<table border=0 cellpadding=0 cellspacing=0>
<tr>
<td valign=top class="MenuTabNormal" style="height: 15px">
<img src="../Images/Menu/left_top.gif" width=5 height=5 border=0 alt=""></td>
<td class="MenuTabNormal" style="height: 15px">
<table border="0" cellspacing="0" cellpadding="2" width="100%">
<tr align="center">
<td style="height: 15px"><a href="SpecialProduct.aspx" class="MenuFolder">&nbsp;Special & Home Page Option&nbsp;</a></td>
</tr>
</table>
</td>
<td valign=top align=right class="MenuTabNormal" style="height: 15px; width: 6px;"><img
src="../Images/Menu/right_top.gif" width=5 height=5
border=0 alt=""></td>
</tr>
</table>
</td>

<td valign="bottom" style="height: 58px">
<table border=0 cellpadding=0 cellspacing=0>
<tr>
<td valign=top class="MenuTabSelect" height="17px" ><img
src="../Images/LeftMenu/left_top.gif" width=5 height=5
border=0 alt=""></td>
<td class="MenuTabSelect"  height="17px">
<table border="0" cellspacing="0" cellpadding="2" width="100%">
<tr align="center">
<td style="height: 17px"><span class="MenuTabTitle">&nbsp;View Categories&nbsp;</span></td>
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


<td valign="bottom" style="height: 58px">
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
<table cellpadding=1 cellspacing=0 border=0 width="550" style="height: 90px" >
<tr bgcolor="#CECECE">
<td align=center style="width: 560px">
<table border="0" cellspacing="0" cellpadding="0" style="width: 561px">
<tr align="left">
<td class="whiteBox" style="width: 560px">
<table border="0" cellspacing="0" cellpadding="5" bgcolor="#FFFFFF" style="width: 400px">
<tr>
<td style="width: 17px"><img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15"></td>
  <td width="120" align="right" style="height: 32px"><span class="bodyTextBold">Root Category:</span></td>
        <td align="left" style="height: 32px">
            <asp:DropDownList ID="ddlrootcategory" runat="server" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="ddlrootcategory_SelectedIndexChanged" Width="135px">
                <asp:ListItem Value="0">Select</asp:ListItem>
            </asp:DropDownList>&nbsp;
        </td>
</tr>
 <tr><td style="width: 17px"><img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15"></td>
                <td align="right" width="120" style="height: 32px">
                <span class="bodyTextBold">Category:</span>
                </td>
                <td align="left" style="height: 32px"><span class="bodyTextBold">-&nbsp;
                <asp:DropDownList ID="ddlcategory" runat="server" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="ddlcategory_SelectedIndexChanged" Width="135px">
                <asp:ListItem Value="0">Select</asp:ListItem>
            </asp:DropDownList></span>&nbsp;
                </td>
            </tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td class="MenuTabNormal" style="height: 11px"><img src="../Images/LeftMenu/box_bottom.gif" height="11" width="100%"></td>
</tr>
</table>

        </td> 
        </tr> 
<tr>
<td>
    <asp:Panel ID="PanelData" runat="server" Width="100%">
    
                            <span class="BodyTitle"></span><img src="../Images/LeftMenu/arrow_box.gif" width="13" height="13">
                               
                               
                                <asp:Label ID="lblCategorylist" runat="server" Text="
                                Category List" CssClass="SubTitle"></asp:Label><br />
    
     <asp:GridView ID="GVCategory" runat="server" AutoGenerateColumns="False" Width="329px" Visible="False" OnRowCommand="GVCategory_RowCommand" OnSelectedIndexChanged="GVCategory_SelectedIndexChanged" AllowPaging="True" OnPageIndexChanging="GVCategory_PageIndexChanging">
         <Columns>
             <asp:BoundField DataField="Category2_ID" HeaderText="Category Id" Visible="False" />
             <asp:TemplateField HeaderText="Category Name">
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Category_Name") %>'></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                     <asp:Label ID="Label1" runat="server" Text='<%# Bind("Category_Name") %>'></asp:Label>
                 </ItemTemplate>
             </asp:TemplateField>
            <asp:TemplateField HeaderText="Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                
                <table>
                <tr>
                <td height="62px" width="62px">
                                    <asp:Image ID="Image2"  runat="server" ImageUrl=' <%# Eval("Image")%>' Width="60px" Height="60px"  />
                </td></tr></table>

                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField>
             <HeaderTemplate>
             <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td align="left" valign="top" width="11">
                                </td>
                            <td align="left">
                                <span class="bodyTextBold"></span></td>
                        </tr>
                    </table>
             </HeaderTemplate> 
                 <EditItemTemplate>
                     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                 </EditItemTemplate>
                 <ItemTemplate>
                 <table border="0" cellpadding="0" cellspacing="1" width="60px">
                        <tr>
                            <td align="left" valign="top" width="57px">
                      
                     <asp:ImageButton ID="btnEdit" ImageUrl="~/Images/Buttons/button_edit.gif" CommandName="Edit" CommandArgument='<%# Eval("Category2_ID") %>' runat="server" />
                     <asp:ImageButton ID="btnRemove" ImageUrl="~/Images/Buttons/button_remove.gif" CommandName="Remove" CommandArgument='<%# Eval("Category2_ID") %>' runat="server" />  
                      </td>
                            
                        </tr>
                    </table>
                 </ItemTemplate>
             </asp:TemplateField>
         </Columns>
    </asp:GridView>
    <asp:GridView ID="GVSubCategories" runat="server" AutoGenerateColumns="False" Width="330px" OnRowCommand="GVSubCategories_RowCommand" AllowPaging="True" OnPageIndexChanging="GVSubCategories_PageIndexChanging">
        <Columns>
            <asp:BoundField DataField="Category3_ID" HeaderText="Category Id" Visible="False" />
            <asp:TemplateField HeaderText="Category Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Category_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Category_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                
                <table>
                <tr>
                <td height="62px" width="62px">
                                    <asp:Image ID="Image2"  runat="server" ImageUrl=' <%# Eval("Image")%>' Width="60px" Height="60px"  />
                </td></tr></table>

                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <HeaderTemplate>
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td align="left" valign="top" width="11">
                            </td>
                            <td align="left">
                                <span class="bodyTextBold"></span>
                            </td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table border="0" cellpadding="0" cellspacing="1" width="60px">
                        <tr>
                            <td align="left" valign="top" width="57px">
                                <asp:ImageButton ID="btnEdit" ImageUrl="~/Images/Buttons/button_edit.gif" CommandName="Edit" CommandArgument='<%# Eval("Category3_ID") %>' runat="server" />
                                <asp:ImageButton ID="btnRemove" ImageUrl="~/Images/Buttons/button_remove.gif" CommandName="Remove" CommandArgument='<%# Eval("Category3_ID") %>' runat="server" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
       </asp:Panel>

</td>
</tr>  
         <tr>
             <td style="height: 100px; vertical-align: top; text-align: left;">
                 <asp:Panel ID="PanelError" runat="server" Width="100%" Visible="False">
                     <table style="width: 50%">
                         <tr>
                             <td width ="19">
                                 <img height="24" src="../Images/Icon/admin.gif" width="17" /></td>
                             <td width="24">
                                 <img height="16" hspace="2" src="../Images/Icon/alt.gif" width="22" /></td>
                             <td>
                                 <asp:Label ID="lblNoData" runat="server" Text="No Categories Found"></asp:Label></td>
                         </tr>
                     </table>
                 </asp:Panel>
             </td>
         </tr>
</table>
</asp:Panel>  
</div>
</asp:Content>

