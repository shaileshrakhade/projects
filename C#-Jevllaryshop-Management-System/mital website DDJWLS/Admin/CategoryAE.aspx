<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="CategoryAE.aspx.cs" Inherits="Admin_CategoryAE" Title="DD Jewellers | Administarator Panel | Categories"  MaintainScrollPositionOnPostback="true"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="min-height:500px">
<asp:Panel ID="outerPanel" runat="server" Width="600px" CssClass="font">
     <table width =100%>
        <tr>
         <td>
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
<td style="height: 15px"><a href="Categories.aspx" class="MenuFolder">&nbsp;View Category&nbsp;</a></td>
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
<td style="height: 17px; vertical-align:bottom"><span class="MenuTabTitle">&nbsp;<asp:Label ID="lblEditAdd" runat="server" Text="Add Category"></asp:Label>&nbsp;</span></td>
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
                                </td>
                        </tr>
                        
        <tr>
        <td style="vertical-align: top; text-align: left;" > 
            <asp:Panel ID="PanelCategory" runat="server" Width="100%" Visible="False" >
            
        <table border="0" cellpadding="5" cellspacing="0" width="100%">
             <tr>
             <td colspan="2" style="height: 36px" >
             <span class="bodyTextBold">
             <img src="../Images/LeftMenu/dot_box.gif" width="9" height="9"> 
             Category Location:</span><br> 
             <span class="bodyTextSmall">For adding particular&nbsp; level category, leave that level
                 Category as 'None'.</span> </td>
             </tr>
             </table>
        <table border="0" cellpadding="5" cellspacing="0" width="100%">
        <tr>
        <td width="120" align="right"><span class="bodyTextBold">Root Category:</span></td>
        <td align="left">
            <asp:DropDownList ID="ddlrootcategory" runat="server" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="ddlrootcategory_SelectedIndexChanged" Width="135px">
                <asp:ListItem Value="0">Select</asp:ListItem>
            </asp:DropDownList>&nbsp;
        </td>
        </tr>
            <tr>
                <td align="right" width="120">
                <span class="bodyTextBold">Category:</span>
                </td>
                <td align="left"><span class="bodyTextBold">-&nbsp;<asp:DropDownList ID="ddlcategory" runat="server" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="ddlcategory_SelectedIndexChanged" Width="135px">
                <asp:ListItem Value="0">None</asp:ListItem>
            </asp:DropDownList></span>&nbsp;
                </td>
            </tr>
       <tr>
	        <td  align="right" style="height: 32px"><span class="bodyTextBold">Sub Category:</span></td>
	        <td align="left" style="height: 32px"><span class="bodyTextBold">--&nbsp;<asp:DropDownList ID="ddlsubcategory" runat="server" AppendDataBoundItems="True" OnSelectedIndexChanged="ddlSubCat_SelectedIndexChanged" Width="135px">
                <asp:ListItem>None</asp:ListItem>
                </asp:DropDownList></span>&nbsp;
	        </td>
	        </tr>
        </table>
        </asp:Panel>
            <asp:Panel ID="PanelDetails" runat="server" Width="100%">
           
        <table cellpadding=5 cellspacing="1" border="0" width="100%">
        <tr>
        <td  align="left" style="width: 126px; height: 34px"><span class="bodyTextBold"><img src="../Images/LeftMenu/dot_box.gif"width="9" height="9"> Category Name:</span></td>
        <td  width="300" align="left" style="height: 34px">
            <asp:TextBox ID="txtCatName" runat="server" MaxLength="100" Width="187px"></asp:TextBox></td>
        </tr>

        <tr>
        <td align="left" valign="top" style="width: 126px; height: 134px;"><span class="bodyTextBold"><img src="../Images/LeftMenu/dot_box.gif" width="9" height="9"> Category Image:</span></td>
        <td align="left" style="height: 134px; vertical-align: top; text-align: left;">
        <asp:FileUpload id="FileUpload1" runat="server" Width="230px"></asp:FileUpload>
        <asp:Panel id="PanelChangeImage" runat="server">
                                        
                                        <asp:Image ID="Image1" runat="server" Height="50px" Width="60px"  />
                                            <br  />
                                        <asp:LinkButton ID="lnkChangeImage" runat="server" OnClick="lnkChangeImage_Click">Change Image</asp:LinkButton>
                                        
                                        </asp:Panel>
                                        <asp:FileUpload ID="FileUpload2" runat="server" Width="230px" Visible="False" OnDataBinding="lnkChangeImage_Click"/>
                                        
        </td>
               </tr>
            <tr>
                <td align="left" style="width: 126px" valign="top">
                </td>
                <td align="left">
                    <asp:Button ID="btnAdd" runat="server" Text="Add Category" OnClick="btnAdd_Click" />&nbsp;
                    <asp:Button ID="btnUpdate" runat="server" Text="Update Category" OnClick="btnUpdate_Click" />

        <input type="button" onClick="location.href='Categories.aspx'" value="Cancel" name="button" id="Button1">
                </td>
            </tr>
        
     </table>
      </asp:Panel>
     </td> 
     </tr>
     </table></asp:Panel>         
        </td></tr> 
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
    <td width="440" align="left">&nbsp;<a href="Categories.aspx" class="bodyText">Back to Categories Main<br/>
    </a><br>
    </td>
    </tr>
    <tr>
    <td width="11" valign="top" align="left" style="height: 15px"><img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15" hspace="2" alt=""/></td>
    <td width="440" align="left" style="height: 15px">&nbsp;<a href="CategoryAE.aspx" class="bodyText">Add New Category.</a>
        <br />
        <br />
    </td>
    </tr>
    <tr>
    <td align="left" width="11" valign="top"><img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15" hspace="2" alt=""/></td>
    <td width="410" align="left">&nbsp;<a href="Products.aspx" class="bodyText">Products Main</a><br/>
    <br>
    </td>
    </tr>
    
    </table>
    </td>
    </tr>
    </table>
    </asp:Panel>
        
        
        </td></tr>
     </table> 
</asp:Panel> 
</div>
</asp:Content>

