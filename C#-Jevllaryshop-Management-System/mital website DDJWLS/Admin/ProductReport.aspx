<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ProductReport.aspx.cs" Inherits="Admin_ProductReport" Title="DD Jewellers | Administarator Panel | Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="min-height:500px">
<asp:Panel ID="PanelOrders" runat="server"  Width="100%" CssClass="font" >
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
<td valign=top class="MenuTabNormal" style="height: 15px">
<img src="../Images/Menu/left_top.gif" width=5 height=5 border=0 alt=""></td>
<td class="MenuTabNormal" style="height: 15px">
<table border="0" cellspacing="0" cellpadding="2" width="100%">
<tr align="center">
<td style="height: 15px"><a href="OrderReport.aspx" class="MenuFolder">&nbsp;Order Report&nbsp;</a></td>
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
<td style="height: 17px"><span class="MenuTabTitle">&nbsp;Product Report&nbsp;</span></td>
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
    <table cellpadding="3" cellspacing="0" border="0">
    <tr>
    <td style="width: 150px"><span class="SubTitle">Search By Product</span></td>
    <td>&nbsp;:&nbsp;</td>
    <td>
    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
    </td>
    <td style="width: 34px">&nbsp;
    <asp:Button ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click" />
    </td>
    
    </tr>
        <tr>
            <td colspan="3">
                Enter Product Code or Product Name</td>
            <td style="width: 34px">
            </td>
        </tr>
    </table>
    </td>
    </tr>
        <tr>
            <td valign="top" style="height: 83px">
                <img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15" vspace="2"></td>
            <td align="left" valign="top" style="height: 83px">
            <table cellpadding="3" cellspacing="0" border="0">
    <tr>
    <td style="width: 150px; height: 24px;"><span class="SubTitle">Search By Customer</span></td>
    <td style="height: 24px">&nbsp;:&nbsp;</td>
    <td style="height: 24px">
    <asp:TextBox ID="txtFname" runat="server" Width="70px"></asp:TextBox>
    </td>
        <td style="width: 34px; height: 24px">
            <asp:TextBox ID="txtLname" runat="server" Width="70px"></asp:TextBox></td>
    <td style="width: 34px; height: 24px;">&nbsp;
        <asp:Button ID="btnSearchCustomer" runat="server" Text="Go" OnClick="btnSearchCustomer_Click" />
    </td>
    
    </tr>
                <tr>
                    <td style="width: 150px; height: 18px">
                    </td>
                    <td style="height: 18px">
                    </td>
                    <td style="height: 18px">
                        First&nbsp;Name</td>
                    <td style="width: 34px; height: 18px">
                        Last&nbsp;Name</td>
                    <td style="width: 34px; height: 18px">
                    </td>
                </tr>
    </table>
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
</td></tr>

</table>
<table height="23px" style="width: 85%" >
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
          
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" OnPageIndexChanging="GridView1_PageIndexChanging" >
        <Columns>
            <asp:TemplateField HeaderText="Order Id" Visible="False">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Order_ID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Order_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Product Code">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Product_Code") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("Product_Code") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Product Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Product_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("Product_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Customer Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("First_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("First_Name") %>'></asp:Label>
                      <asp:Label ID="Label4" runat="server" Text='<%# Bind("Last_Name") %>'></asp:Label>
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
            <asp:TemplateField HeaderText="Processed">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Processed") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Processed") %>'></asp:Label>
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

