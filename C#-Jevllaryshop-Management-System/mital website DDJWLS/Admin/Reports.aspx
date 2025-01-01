<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="Admin_Reports" Title="DD Jewellers | Administarator Panel | Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="min-height:500px">
<asp:Panel ID="PanelOrders" runat="server"  Width="100%" CssClass="font">
<table>
<tr>
<td style="height: 83px">
<table border="0" cellpadding="0" cellspacing="0" width="515">
<tr>
<td width="74">
<img height="66" src="../Images/Icon/i_reports.jpg" width="74" /></td>
<td align="left" width="440" >
<span class="MainTitle">Reports</span></td>
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
<td valign=top class="MenuTabSelect" height="17px" ><img
src="../Images/LeftMenu/left_top.gif" width=5 height=5
border=0 alt=""></td>
<td class="MenuTabSelect"  height="17px">
<table border="0" cellspacing="0" cellpadding="2" width="100%">
<tr align="center">
<td style="height: 17px"><span class="MenuTabTitle">&nbsp;Reports&nbsp;</span></td>
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
<td style="height: 15px"><a href="OrdersNew.aspx" class="MenuFolder">&nbsp;Orders Report&nbsp;</a></td>
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
<td style="height: 15px"><a href="OrdersProcessed.aspx" class="MenuFolder">&nbsp;Products Report&nbsp;</a></td>
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
<td style="height: 15px"><a href="OrdersCancelled.aspx" class="MenuFolder">&nbsp;Customers Report&nbsp;</a></td>
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
<table border="0" cellspacing="0" cellpadding="0" width="515">

<tr>
<td width="1" style="height: 102px">
<table cellpadding=1 cellspacing=0 border=0 width="100%">
    <tr bgcolor="#CECECE">
    <td align=center>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr align="left">
    <td class="whiteBox">
    <table border="0" cellspacing="0" cellpadding="5" bgcolor="#FFFFFF" style="width: 594px">
    <tr>
    <td valign="top" width="30px" ><img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15" vspace="2"></td>
    <td align="left" valign="top">
   <span class="SubTitle">
        <asp:HyperLink ID="lnkOrder" NavigateUrl="~/Admin/orderReport.aspx"   runat="server" >Orders Report</asp:HyperLink></span>
        </td>
       
    
    </tr>
    
   
    </table>
    </td>
    </tr>
    </table>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr align="left">
    <td class="whiteBox">
    <table border="0" cellspacing="0" cellpadding="5" bgcolor="#FFFFFF" style="width: 594px">
    <tr height="24px">
    <td valign="top" width="30px"><img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15" vspace="2"></td>
    <td align="left" valign="top">
    <span class="SubTitle">
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Admin/productReport.aspx"   runat="server" >Product Report</asp:HyperLink></span></td>
       
   
    </tr>
    
   
    </table>
    </td>
    </tr>
    </table>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr align="left">
    <td class="whiteBox">
    <table border="0" cellspacing="0" cellpadding="5" bgcolor="#FFFFFF" style="width: 594px">
    <tr height="24px">
    <td valign="top" width="30px"><img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15" vspace="2"></td>
    <td align="left" valign="top">
        <span class="SubTitle">
        <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Admin/usersReport.aspx"    runat="server" >Customers Report</asp:HyperLink></span>
        </td>
       
    </tr>
     
    </table>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
</td></tr>
<tr>
<td class="MenuTabNormal" style="height: 11px"><img src="../Images/LeftMenu/box_bottom.gif" height="11" width="100%"></td>
</tr>
</table>

</td>
</tr>
    
</table>
</asp:Panel>
</div> 
</asp:Content>

