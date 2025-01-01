<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Admin_Products" Title="DD Jewellers | Administarator Panel | Products" MaintainScrollPositionOnPostback="true"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="min-height:500px">
 <asp:Panel ID="outerPanel" runat="server" Width="100%" CssClass="font">
     <table width=100% >
        <tr >
         <td style="height: 83px; width: 568px;">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="74" style="height: 68px"><img src="../Images/Icon/i_products.jpg" width="74" height="66">
            </td>
            <td width="440" align="left" style="height: 68px"><span class="MainTitle">Products</span>
            </td>
</tr>
        </table>
         </td>
        </tr>
        <tr>
                            <td style="height: 301px; vertical-align:top  ; width: 568px;">
                            
                            <table border="0" cellspacing="0" cellpadding="1" width="564px" style="height: 51px">
<tr>

<td valign="bottom" style="height: 58px">
<table border=0 cellpadding=0 cellspacing=0>
<tr>
<td valign=top class="MenuTabSelect" height="17px" ><img
src="../Images/LeftMenu/left_top.gif" width=5 height=5
border=0 alt=""></td>
<td class="MenuTabSelect"  height="17px">
<table border="0" cellspacing="0" cellpadding="2" width="100%">
<tr align="center">
<td style="height: 17px"><span class="MenuTabTitle">&nbsp;View Products&nbsp;</span></td>
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

<td valign="bottom" style="width: 102px; height: 58px;">
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


<table cellpadding=1 cellspacing=0 border=0 width="550" height="264px" >
<tr bgcolor="#CECECE">
<td align=center style="width: 560px">
<table border="0" cellspacing="0" cellpadding="0" style="width: 561px">
<tr align="left">
<td class="whiteBox" style="width: 560px">
<table border="0" cellspacing="0" cellpadding="5" bgcolor="#FFFFFF" style="width: 400px">
<tr>
<td style="width: 17px"><img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15"></td>
<td align="left" style="width: 366px"><asp:LinkButton ID="lnkAddProduct" runat="server" CssClass ="SubTitle" OnClick="lnkAddProduct_Click"  >Add Product</asp:LinkButton></td>
</tr>
    <tr>
        <td style="width: 17px; height: 23px">
            <img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15"></td>
        <td align="left" style="width: 366px; height: 23px">
            <asp:LinkButton ID="lnkCategory" runat="server" CssClass="SubTitle" OnClick="lnkCategory_Click">Add Category</asp:LinkButton></td>
    </tr>
<tr>
<td style="width: 17px; height: 32px;"><img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15"></td>
<td align="left" style="width: 366px; height: 32px;"><span class="SubTitle">View products in root category </span>&nbsp;<asp:DropDownList ID="ddlrootcategory" runat="server" Width="130px" AppendDataBoundItems ="true" AutoPostBack ="true" OnSelectedIndexChanged="ddlrootcategory_SelectedIndexChanged" >
      
    </asp:DropDownList></td>
    
</tr>
<tr>
<td style="width: 17px; height: 29px;"><img runat=server  id="img1" visible=true src="../Images/LeftMenu/arrow_main.gif" width="15" height="15" name="img1"></td>
<td align="left" style="height: 29px; width: 366px;"><span class="SubTitle">
    <asp:Label ID="lblCat1" runat="server" Text="View products in category"></asp:Label>&nbsp;
    <asp:DropDownList ID="ddlcategory" runat="server" Width="130px" AutoPostBack ="true" OnSelectedIndexChanged="ddlcategory_SelectedIndexChanged" AppendDataBoundItems="True" >
        <asp:ListItem>Select</asp:ListItem>
    </asp:DropDownList></span>
    &nbsp;
    </td>
</tr>
    <tr>
        <td style="width: 17px; height: 29px">
            <img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15"  runat=server id="img2" name="img2" visible="true"></td>
        <td align="left" style="width: 366px; height: 29px">
        <span class="SubTitle">
    <asp:Label ID="lblCat2" runat="server" Text="View products in sub-category"></asp:Label>&nbsp;
            <asp:DropDownList ID="ddlsubcategory" runat="server" Width="130px" AutoPostBack ="true" OnSelectedIndexChanged="ddlsubcategory_SelectedIndexChanged" AppendDataBoundItems="True">
                <asp:ListItem>Select</asp:ListItem>
    
    </asp:DropDownList></span>
        </td>
    </tr>
<tr>
<td style="width: 17px; height: 34px;"><img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15"></td>
<td align="left" style="width: 366px; height: 34px;"><span class="SubTitle">Search</span> &nbsp;
    <asp:TextBox ID="txtsearch" runat="server" Width="124px" OnTextChanged="txtsearch_TextChanged" AutoPostBack ="true" ></asp:TextBox>
    <asp:ImageButton ID="btnGo"  ImageUrl="~/Images/Buttons/button_go.gif" runat="server" OnClick="btnGo_Click" />
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
                             <asp:Panel ID="PanelProducts" runat="server" Width="100%">
                            <span class="BodyTitle"></span><img src="../Images/LeftMenu/arrow_box.gif" width="13" height="13">
                               
                               
                                <asp:Label ID="lblproductlist" runat="server" Text="Product List" CssClass="SubTitle"></asp:Label><br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" PageSize="7"  OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="600px" OnPageIndexChanging="GridView1_PageIndexChanging"  >
        <Columns>
            <asp:BoundField DataField="Product_ID" HeaderText="Product ID" Visible="False" />
            <asp:BoundField DataField="Product_Code" HeaderText="Product Code" />
            <asp:BoundField DataField="Product_Name" HeaderText="Name" />
            <asp:BoundField DataField="Price" HeaderText="Price" />
            <asp:TemplateField HeaderText="Weight">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Weight") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Weight") %>'></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Weight_Unit") %>'></asp:Label>
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
            <asp:TemplateField HeaderText="Short Description">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Short_Desc") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Short_Desc") %>'></asp:Label>
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
                <ItemTemplate>
                 <table border="0" cellpadding="0" cellspacing="1" width="60px">
                        <tr>
                            <td align="left" valign="top" width="57px">
                               <asp:ImageButton ID="imgbtnEdit" runat="server" ImageUrl="~/Images/Buttons/button_edit.gif" CommandName="Edit" CommandArgument='<%# Eval("Product_ID") %>'/>
                <asp:ImageButton ID="ImgbtnRemove" runat="server" ImageUrl="~/Images/Buttons/button_remove.gif" CommandName="Remove" CommandArgument='<%# Eval("Product_ID") %>' /> 
                </td>
                            
                        </tr>
                    </table>
                
                </ItemTemplate>
            </asp:TemplateField>
            
        </Columns>
        
        <RowStyle CssClass="row2" />
        <AlternatingRowStyle CssClass="row1" />
    </asp:GridView>
    <asp:GridView ID="GridView2" runat="server" Visible=False  AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" PageSize="7"  OnRowCommand="GridView2_RowCommand" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="600px" OnPageIndexChanging="GridView2_PageIndexChanging"  >
        <Columns>
            <asp:BoundField DataField="Product_ID" HeaderText="Product ID" Visible="False" />
            <asp:BoundField DataField="Product_Code" HeaderText="Product Code" />
            <asp:BoundField DataField="Product_Name" HeaderText="Name" />
            <asp:BoundField DataField="Price" HeaderText="Price" />
            <asp:TemplateField HeaderText="Weight">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Weight") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Weight") %>'></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Weight_Unit") %>'></asp:Label>
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
            <asp:TemplateField HeaderText="Short Description">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Short_Desc") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Short_Desc") %>'></asp:Label>
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
                <ItemTemplate>
                 <table border="0" cellpadding="0" cellspacing="1" width="60px">
                        <tr>
                            <td align="left" valign="top" width="57px">
                               <asp:ImageButton ID="imgbtnEdit" runat="server" ImageUrl="~/Images/Buttons/button_edit.gif" CommandName="Edit" CommandArgument='<%# Eval("Product_ID") %>'/>
                <asp:ImageButton ID="ImgbtnRemove" runat="server" ImageUrl="~/Images/Buttons/button_remove.gif" CommandName="Remove" CommandArgument='<%# Eval("Product_ID") %>' /> 
                </td>
                            
                        </tr>
                    </table>
                
                </ItemTemplate>
            </asp:TemplateField>
            
        </Columns>
        
        <RowStyle CssClass="row2" />
        <AlternatingRowStyle CssClass="row1" />
    </asp:GridView>
     </asp:Panel>
                                &nbsp;
                            </td>
                        </tr>
         <tr>
             <td style=" vertical-align: top; text-align: left; width: 568px;">
                 <asp:Panel ID="PanelError" Height="100px"  runat="server" Width="100%" Visible="False">
                     <table style="width: 50%">
                         <tr>
                             <td width ="19">
                                 <img height="24" src="../Images/Icon/admin.gif" width="17" /></td>
                             <td width="24">
                                 <img height="16" hspace="2" src="../Images/Icon/alt.gif" width="22" /></td>
                             <td>
                                 <asp:Label ID="lblNoData" runat="server" Text="No Products Found"></asp:Label></td>
                         </tr>
                     </table>
                 </asp:Panel>
             </td>
         </tr>
                        
                    </table>
                </asp:Panel>
                                               </div> 
</asp:Content>

