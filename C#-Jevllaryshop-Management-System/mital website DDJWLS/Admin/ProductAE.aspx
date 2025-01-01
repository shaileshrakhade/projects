<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ProductAE.aspx.cs" Inherits="Admin_ProductAE" Title="DD Jewellers | Administarator Panel | Products"  MaintainScrollPositionOnPostback="true"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="min-height:500px">
<asp:Panel ID="outerPanel" runat="server" Width="600px" CssClass="font" >
     <table width =100%>
        <tr>
         <td>
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
         <td>
           <asp:Panel ID=PanelMain runat=server Width=100%>
              <table>
               <tr>
                            <td style="vertical-align: top; text-align: left;">
                              <table border="0" cellspacing="0" cellpadding="1" width="564px" >
<tr>



<td valign="bottom">
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
    <asp:Label ID="lblEditAdd" runat="server" Text="Add Product"></asp:Label></span></td>
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
                        <td style="vertical-align: top; text-align: left;">
                            <asp:Panel ID="PanelCategory" runat="server" Width="100%">
                                <table>
                                    <tr>
                                        
                                                        <td style="width: 16px">
                                                        <IMG height=15 src="../Images/LeftMenu/arrow_main.gif" width=15 />
                                                        </td>
                                                        <td style="width: 200px">
                                                        <span class="SubTitle">
                                                            <asp:Label ID="lblRootCat" runat="server" Text="Select Root Category"></asp:Label>
                                                            </span>
                                                            
                                                        </td>
                                                        <td style="width: 150px">
                                                        <span class="SubTitle">
                                                            <asp:DropDownList ID="ddlRootCat" runat="server" Width="148px" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="ddlRootCat_SelectedIndexChanged" ></asp:DropDownList>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                  
                                    <tr>
                                                  <td style="width: 16px">
                                                        <IMG height=15 src="../Images/LeftMenu/arrow_main.gif" width=15 />
                                                        </td>
                                                        <td style="width: 200px">
                                                        <span class="SubTitle">
                                                            <asp:Label ID="LabelCat" runat="server" Text="Select Category"></asp:Label>
                                                            </span>
                                                            
                                                        </td>
                                                        <td style="width: 150px">
                                                        <span class="SubTitle">
                                                            <asp:DropDownList ID="ddlCat" runat="server" Width="148px" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="ddlCat_SelectedIndexChanged" >
                                                                <asp:ListItem>Select Category</asp:ListItem>
                                                            </asp:DropDownList>
                                                            </span>
                                                        </td>
                                                   
                                    </tr>
                                    <tr>
                                                    <td style="width: 16px">
                                                        <IMG height=15 src="../Images/LeftMenu/arrow_main.gif" width=15 />
                                                        </td>
                                                        <td style="width: 200px">
                                                        <span class="SubTitle">
                                                            <asp:Label ID="lblSubCat" runat="server" Text="Select Sub Category"></asp:Label>
                                                            </span>
                                                            
                                                        </td>
                                                        <td style="width: 150px">
                                                        <span class="SubTitle">
                                                            <asp:DropDownList ID="ddlSubCat" runat="server" Width="148px" AppendDataBoundItems="True" >
                                                                <asp:ListItem>None</asp:ListItem>
                                                            </asp:DropDownList>
                                                            </span>
                                                        </td>
                                                    
                                        
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        </tr>
                    <tr>
                    <td style="height: 449px">
                        <asp:Panel ID="PanelProduct" runat="server" Width=100%>
                        
                        <table width=100% >
                                <tr>
                                    <td style="width: 68px; height: 15px">
                                        <img alt="" height="9" src="../Images/LeftMenu/dot_box.gif" vspace="2" width="9" /><span class="bodyTextBold">Product&nbsp;Code:</span></td>
                                    <td style="height: 15px; width: 182px;">
                                        <asp:TextBox ID="txtProductCode" runat="server" Width="140px" MaxLength="30"></asp:TextBox></td>
                                    
                                </tr>
                                <tr>
                                    <td style="width: 68px; height: 15px">
                                        <img alt="" height="9" src="../Images/LeftMenu/dot_box.gif" vspace="2" width="9" /><span class="bodyTextBold">Product&nbsp;Name:</span></td>
                                    <td style="height: 15px; width: 182px;">
                                        <asp:TextBox ID="txtName" runat="server" Width="140px" MaxLength="60"></asp:TextBox></td>
                                    
                                </tr>
                                <tr>
                                    <td style="width: 68px; height: 15px">
                                        <img alt="" height="9" src="../Images/LeftMenu/dot_box.gif" vspace="2" width="9" /><span class="bodyTextBold">Short&nbsp;description:</span></td>
                                    <td style="height: 15px; width: 182px;">
                                        <asp:TextBox ID="txtSD" runat="server"  MaxLength=250 TextMode=MultiLine></asp:TextBox></td>
                                    
                                </tr>
                                <tr>
                                    <td style="width: 68px; height: 15px">
                                        <img alt="" height="9" src="../Images/LeftMenu/dot_box.gif" vspace="2" width="9" /><span class="bodyTextBold">Long&nbsp;description:</span></td>
                                    <td style="height: 15px; width: 182px;">
                                        <asp:TextBox ID="txtLD" runat="server"  TextMode=MultiLine ></asp:TextBox></td>
                                    
                                </tr>
                                <tr>
                                    <td style="width: 68px; height: 20px">
                                        <img alt="" height="9" src="../Images/LeftMenu/dot_box.gif" vspace="2" width="9" /><span class="bodyTextBold">Price:</span></td>
                                    <td style="height: 20px; width: 182px;">
                                        <asp:TextBox ID="txtPrice" runat="server" Width="140px"></asp:TextBox></td>
                                    
                                </tr>
                                <tr>
                                    <td style="width: 68px; height: 15px">
                                        <img alt="" height="9" src="../Images/LeftMenu/dot_box.gif" vspace="2" width="9" /><span class="bodyTextBold">Weight:</span></td>
                                    <td style="height: 15px; width: 182px;">
                                        <asp:TextBox ID="txtWeight" runat="server" Width="140px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 68px; height: 12px">
                                        <img alt="" height="9" src="../Images/LeftMenu/dot_box.gif" vspace="2" width="9" /><span class="bodyTextBold">Weight&nbsp;Unit:</span></td>
                                    <td style="height: 12px; width: 182px;">
                                        <asp:TextBox ID="txtWeightUnit" runat="server" Width="140px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td style="width: 68px; height: 15px">
                                        <img alt="" height="9" src="../Images/LeftMenu/dot_box.gif" vspace="2" width="9" /><span class="bodyTextBold">Image:</span></td>
                                    <td style="height: 15px; width: 182px;">
                                        <asp:Panel ID="PanelChangeImage" runat="server">
                                        
                                        <asp:Image ID="Image1" runat="server" Height="50px" Width="60px" />
                                            <br />
                                        <asp:LinkButton ID="lnkChangeImage" runat="server" OnClick="lnkChangeImage_Click">Change Image</asp:LinkButton>
                                        <asp:FileUpload ID="FileUpload2" runat="server" Width="230px" Visible="False" OnDataBinding="lnkChangeImage_Click" />
                                        </asp:Panel>
                                        <asp:FileUpload ID="FileUpload1" runat="server" Width="230px" />
                                        </td>
                                </tr>
                                <tr>
                                    <td style="width: 68px; height: 15px">
                                        <img alt="" height="9" src="../Images/LeftMenu/dot_box.gif" vspace="2" width="9" /><span class="bodyTextBold">Display&nbsp;Order&nbsp;group:</span></td>
                                    <td style="width: 182px; height: 15px">
                                    <asp:ListBox id="Listgroup" runat="server" Width="75px">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>None</asp:ListItem>
                                        </asp:ListBox>&nbsp;
                                        <asp:Label ID="Label4" runat="server" Text="You may group products so they will appear sorted alphabetically at the top of the category/sub category pages. e.g. products in group 1 will appear at the top of the page and so on. If 'None' is selected the product will appear in alphabetical order following those products with a group number specified." Width="350px"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 68px; height: 15px">
                                       </td>
                                    <td style="width: 182px; height: 15px; vertical-align: middle; text-align: left;">
                                        <table>
                                            <tr>
                                                <td>
                                                <asp:Button ID="btnAdd" runat="server" Text="Add Product" OnClick="btnAdd_Click" />        
                                                </td>
                                                <td>
                                                <asp:Button ID="btnUpdate" runat="server" Text="Update Product" OnClick="btnUpdate_Click" />
                                                </td>
                                                <td>
                                                <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                                                </td>
                                            </tr>
                                        </table>
                                        </td>
                                        
                                        
                                </tr>
                                
                                
                                
                                
                            </table>
                                
                    </asp:Panel>
                    </td>
                    </tr>
      </table></asp:Panel>
      </td>
      </tr>                  
         <tr>
             <td style=" vertical-align: top; text-align: left;">
                 <asp:Panel ID="PanelError" runat="server" Height="100px"  Width="100%" Visible="False">
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
          <tr>
          <td>
              <asp:Panel ID="PanelLinks1" runat="server" Visible=false >
    <table width="515" border="0" cellspacing="0" cellpadding="2">
    <tr>
    <td width="50" valign="top" align="left"><img src="../Images/Icon/admin.gif" width="17" height="24"><img src="../Images/Icon/alt.gif" width="22" height="16" hspace="2" align="top"></td>
    <td align="left" valign="top">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
    <td width="11" valign="top" align="right"><img src="../Images/LeftMenu/arrow_gray.gif" width="9" height="9" vspace="2" hspace="2"></td>
    <td width="440" align="left">
    <asp:Label CssClass="bodyText" ID="lblMsg" Text="The data was updated in/added to the database successfully." runat="server"></asp:Label> 
    <br/>
    <br/>
    </td>
    </tr>
    <tr>
    <td align="left" width="11" valign="top"><img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15" hspace="2" alt=""/></td>
    <td width="440" align="left">&nbsp;<a href="Products.aspx" class="bodyText">Back to Products Main<br/>
    </a><br>
    </td>
    </tr>
    <tr>
    <td align="left" width="11" valign="top"><img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15" hspace="2" alt=""/></td>
    <td width="410" align="left">&nbsp;<a href="ProductAE.aspx" class="bodyText">Add New Product</a><br/>
    <br>
    </td>
    </tr>
    <tr>
    <td width="11" valign="top" align="left" style="height: 15px"><img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15" hspace="2" alt=""/></td>
    <td width="440" align="left" style="height: 15px">&nbsp;<a href="CategoryAE.aspx" class="bodyText">Add New Category.</a>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </asp:Panel>
          </td>
          </tr>              
                    </table>
                </asp:Panel>
</div> 
</asp:Content>

