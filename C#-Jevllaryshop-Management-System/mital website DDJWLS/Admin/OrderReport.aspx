<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="OrderReport.aspx.cs" Inherits="Admin_OrderReport" Title="DD Jewellers | Administarator Panel | Reports" %>
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
<td valign=top class="MenuTabNormal" style="height: 15px">
<img src="../Images/Menu/left_top.gif" width=5 height=5 border=0 alt=""></td>
<td class="MenuTabNormal" style="height: 15px">
<table border="0" cellspacing="0" cellpadding="2" width="100%">
<tr align="center">
<td style="height: 15px; width: 57px;"><a href="Reports.aspx" class="MenuFolder">&nbsp;Reports&nbsp;</a></td>
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
<td style="height: 17px"><span class="MenuTabTitle">&nbsp;Order Report&nbsp;</span></td>
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
<td style="height: 15px"><a href="ProductReport.aspx" class="MenuFolder">&nbsp;Product Report&nbsp;</a></td>
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
<td style="height: 15px"><a href="UsersReport.aspx" class="MenuFolder">&nbsp;Customer&nbsp;Report&nbsp;</a></td>
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
    <td valign="top"><img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15" vspace="2"></td>
    <td align="left" valign="top">
    <table cellpadding="0" cellspacing="0" border="0">
    <tr>
    <td style="width: 100px"><span class="SubTitle">Report for </span></td>
    <td>&nbsp;:&nbsp;</td>
    <td>
        <asp:DropDownList ID="ddlMonth" runat="server" Width="100px" >
        <asp:ListItem Value="0">Month</asp:ListItem>
        <asp:ListItem Value="1">Jan</asp:ListItem>
        <asp:ListItem Value="2">Feb</asp:ListItem>
        <asp:ListItem Value="3">March</asp:ListItem>
        <asp:ListItem Value="4">April</asp:ListItem>
        <asp:ListItem Value="5">May</asp:ListItem>
        <asp:ListItem Value="6">June</asp:ListItem>
        <asp:ListItem Value="7">July</asp:ListItem>
        <asp:ListItem Value="8">Aug</asp:ListItem>
        <asp:ListItem Value="9">Sept</asp:ListItem>
        <asp:ListItem Value="10">Oct</asp:ListItem>
        <asp:ListItem Value="11">Nov</asp:ListItem>
        <asp:ListItem Value="12">Dec</asp:ListItem>
        </asp:DropDownList>
    </td>
    <td style="width: 109px" >&nbsp;
        <asp:DropDownList ID="ddlYear" runat="server" Width="100px" AppendDataBoundItems="True" >
            <asp:ListItem>Year</asp:ListItem>
        </asp:DropDownList>
    </td>
    <td>
       
    </td>
    </tr>
        <tr>
            <td colspan="5" style="height: 13px">
                Default it shows all orders.</td>
        </tr>
    </table>
    </td>
    </tr>
        <tr>
            <td valign="top">
                <img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15" vspace="2"></td>
            <td align="left" valign="top">
            <table cellpadding="0" cellspacing="0" border="0">
    <tr>
    <td style="width: 100px"><span class="SubTitle">Order Status</span></td>
    <td>&nbsp;:&nbsp;</td>
    <td>
        <asp:DropDownList ID="ddlStatus" runat="server" Width="135px">
            <asp:ListItem>All Orders</asp:ListItem>
            <asp:ListItem>Processed Orders</asp:ListItem>
            <asp:ListItem>Cancelled Orders</asp:ListItem>
        </asp:DropDownList>
    </td>
   
    
    </tr>
        
    </table>
            </td>
        </tr>
        <tr>
            <td valign="top">
            </td>
            <td align="left" style="text-align: center" valign="top">
                &nbsp;<asp:Button ID="btnGo" runat="server" OnClick="btnGo_Click" Text="Show Orders" /></td>
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
</td></tr>

</table>
<table width=100% height="23px" >
<tr>
 <td width="75%" >
<span class="BodyTitle">
<img src="../Images/LeftMenu/arrow_box.gif" width="13" height="13">&nbsp;
    <asp:Label ID="lblHeader" runat="server" Text="Label"></asp:Label>
</span> 

</td>
<td>
<span class="BodyTitle">
<asp:LinkButton ID="lnkPrint" runat="server" OnClick="lnkPrint_Click">Print Option</asp:LinkButton>
</span> 
</td>
</tr>
</table>
</td>
</tr>
    <tr>
        <td>
            <asp:Panel ID="PanelData" runat="server"  Width="100%">
          
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging" Width="595px">
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
            <asp:TemplateField HeaderText="Order Date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Order_Date") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Order_Date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Customer Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("First_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("First_Name") %>'></asp:Label>
                     <asp:Label ID="Label2" runat="server" Text='<%# Bind("Last_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Customer EmailId">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Email_ID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Email_ID") %>'></asp:Label>
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
            <asp:BoundField DataField="No_Of_Products" HeaderText="No of Product" />
                     
           
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

