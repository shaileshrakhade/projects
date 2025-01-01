<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LeftMenu.ascx.cs" Inherits="LeftMenu" %>

<script language="javascript" type="text/javascript">
// <!CDATA[

                    function expandcontract(x) 
                    {
                    if(x == "HideMenu" || x ==  "ImgHidemenu")
                    {//'Maintable','none'
                     document.getElementById("Maintable").style.display = "none";
                     document.getElementById("footertable").style.display = "";
                    }
                    else if(x == "ShowMenu")
                    {
                    document.getElementById("footertable").style.display = "none";
                    document.getElementById("Maintable").style.display = "";
                    }
                    }
// ]]>
</script>


<table id="Maintable" width="175" border="0" cellspacing="0" cellpadding="0">
<tr>
	<td class="level1Box"><img src="../Images/LeftMenu/main_top.gif" width="175" height="5" alt=" "></td>
</tr>
<tr>
	    <td class="level1Box">
		<table width="100%" border="0" cellspacing="0" cellpadding="2">
		<tr>
		<td width="17"><img src="../Images/LeftMenu/admin.gif" width="17" height="24" hspace="7" alt=" "></td>
		<td class="MenuTitle"><a class="noUnderline">Administration</a>
		</td>
		</tr>
		</table>
	</td>
</tr>
<tr>
	<td class="eCartStyle" style="height: 2px"><img src="../Images/LeftMenu/spacer.gif" width="1" height="4"></td>
</tr>
<tr bgcolor="#cecece">
<td>
<table width="173" border="0" cellspacing="0" cellpadding="0" style="height: 11px">
<tr align="right">
	<td>
		<table border="0" cellspacing="0" cellpadding="1" width="100%">
		<tr>
			<td align="right" width="155" style="height: 14px">
			    <span class="bodyTextSmall">
			    <a id="HideMenu" class="noUnderlineL2" onclick="expandcontract('HideMenu')" style="cursor: pointer; cursor: hand">Hide Menu</a>
			    </span>
			</td>
			<td align="right" style="height: 14px; width: 14px;">
			<a href="#" class="noUnderlineL2"><img id="ImgHidemenu" src="../Images/LeftMenu/box_close.gif" width="14" height="10" border="0" hspace="2" onclick="expandcontract('ImgHidemenu')" alt="Hide Menu"/></a></td>
		</tr>
		</table>
	</td>
</tr>
</table>
</td>
<tr>
<td>

        <table id = "Menutable" border="0" cellspacing="0"  cellpadding ="0" style="width: 175px">
              
               <tr>
                    <td class="level1Box" height ="25">
                        <asp:Image ID="Image4" runat="server" BackColor="#86264A" />
                        <asp:LinkButton ID="lnkbtnProducts" runat="server" BorderStyle="None" CausesValidation="False"
                            CssClass="level1Box" Font-Underline="False" OnClick="lnkbtnProducts_Click">Products</asp:LinkButton></td>
                </tr>
                <tr>
                    <td class="spacer">
                    </td>
                </tr>
                <tr>
                    <td class="level2Box">
            <asp:PlaceHolder ID="PHProducts" runat="server"></asp:PlaceHolder>
                    </td>
                </tr>
              
              <tr>
                    <td class="level1Box" height ="25">
                        <asp:Image ID="Image6" runat="server" BackColor="#86264A"  />
                        <asp:LinkButton ID="LnkbtnOrders" runat="server" BorderStyle="None" CausesValidation="False"
                            CssClass="level1Box" Font-Underline="False" OnClick="LnkbtnOrders_Click">Orders</asp:LinkButton></td>
                </tr>
                <tr>
                    <td class="spacer">
                    </td>
                </tr>
                <tr>
                    <td class="level2Box">
            <asp:PlaceHolder ID="PHOrders" runat="server"></asp:PlaceHolder>
                    </td>
                </tr>
                
                 <tr>
                    <td class="level1Box" height ="25">
                        <asp:Image ID="Image7" runat="server" BackColor="#86264A" />
                        <asp:LinkButton ID="lnkbtnCustomer" runat="server" BorderStyle="None" CausesValidation="False"
                            CssClass="level1Box" Font-Underline="False" OnClick="lnkbtnCustomer_Click">Customers</asp:LinkButton></td>
                </tr>
                <tr>
                    <td class="spacer">
                    </td>
                </tr>
                <tr>
                    <td class="level2Box">
            <asp:PlaceHolder ID="PHCustomers" runat="server"></asp:PlaceHolder>
                    </td>
                </tr>
                
                 <tr>
                    <td class="level1Box" height ="25">
                        <asp:Image ID="Image8" runat="server" BackColor="#86264A" />
                        <asp:LinkButton ID="Reports" runat="server" BorderStyle="None" CausesValidation="False"
                            CssClass="level1Box" Font-Underline="False" OnClick="Reports_Click">Reports</asp:LinkButton></td>
                </tr>
                <tr>
                    <td class="spacer">
                    </td>
                </tr>
                <tr>
                    <td class="level2Box">
            <asp:PlaceHolder ID="PHReports" runat="server"></asp:PlaceHolder>
                    </td>
                </tr>
                
                <tr>
                <td class="level1Box"><img src="../Images/LeftMenu/box_bottom.gif" width="175" height="8"></td>
                </tr>
            </table>
     </td>
     </tr>
     
     </table>
        <table id ="footertable" border="0" cellspacing="0" cellpadding="0" width="8" style="display:none">
        <tr align="right" valign="top">
        <td class="level1Box"><img src="../Images/LeftMenu/right_top.gif" width="5" height="5"></td>
        </tr>
        <tr>
        <td width="1"><img src="../Images/LeftMenu/spacer.gif" width="5" height="2"></td>
        </tr>
        <tr bgcolor="#cecece">
        <td height="22"><a id="ShowMenu" onclick="expandcontract('ShowMenu')" style="cursor: pointer; cursor: hand">
        <img src="../Images/LeftMenu/box_open.gif" width="8" height="11" border="0" alt="Open Menu" vspace="5" hspace="2"></a></td>
        </tr>
        <tr>
        <td width="1"><img src="../Images/LeftMenu/spacer.gif" width="5" height="2"></td>
        </tr>
        <tr valign="bottom" align="right">
        <td class="level1Box"><img src="../Images/LeftMenu/right_bottom.gif" width="5" height="5"></td>
        </tr>
        </table>
     
     