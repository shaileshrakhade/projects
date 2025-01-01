<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="UsersReport.aspx.cs" Inherits="Admin_UsersReport" Title="DD Jewellers | Administarator Panel | Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="min-height:500px">
<asp:Panel ID="PanelOrders" runat="server"  Width="100%" CssClass="font">
<table>
<tr>
<td style="height: 83px">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="74"><img src="../Images/Icon/i_reports.jpg" width="74" height="66">
            </td>
            <td width="440" align="left"><span class="MainTitle">Reports</span>
            </td>
</tr>
        </table>
</td>
</tr>
<tr>
<td style="height: 200px" >
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
<td valign=top class="MenuTabSelect" height="17px" ><img
src="../Images/LeftMenu/left_top.gif" width=5 height=5
border=0 alt=""></td>
<td class="MenuTabSelect"  height="17px">
<table border="0" cellspacing="0" cellpadding="2" width="100%">
<tr align="center">
<td style="height: 17px"><span class="MenuTabTitle">&nbsp;Customer&nbsp;Report&nbsp;</span></td>
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
    <td><img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15"></td>
    <td align="left" class="SubTitle">Display user registered between (default is all Users)</td>
    </tr>
    <tr>
    <td></td>
    <td align="left">
    <table border="0" cellspacing="0" cellpadding="1">
    <tr>
    <td class="row4">
    <table cellpadding="5" cellspacing="0" border="0" width="100%">
    <tr>
    <td align="left" class="row2" width="80"><span class="bodyTextBold"><img src="../Images/LeftMenu/dot_box.gif" width="9" height="9">&nbsp;From:</span></td>
    <td class="row2" align="left" width="52">
    <asp:DropDownList ID="ddlstartDay" runat="server" AppendDataBoundItems="True">
        <asp:ListItem>Day</asp:ListItem>
    </asp:DropDownList></td>
    <td class="row2" align="left" width="49">
    <asp:DropDownList ID="ddlstartMonth" runat="server" >
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
        </asp:DropDownList></td>
    <td class="row2" align="left" width="60">
        <asp:DropDownList ID="ddlstartYear" runat="server" AppendDataBoundItems="True">
            <asp:ListItem>Year</asp:ListItem>
        </asp:DropDownList>
       </td>
    <td class="row2">&nbsp;
    </td>
    </tr>
    <tr>
    <td align="left" class="row1"><span class="bodyTextBold"><img src="../Images/LeftMenu/dot_box.gif" width="9" height="9">&nbsp;To:</span></td>
    <td class="row1" align="left">
      <asp:DropDownList ID="ddlendDay" runat="server" AppendDataBoundItems="True">
          <asp:ListItem>Day</asp:ListItem>
      
        </asp:DropDownList></td>
    <td class="row1" align="left">
      <asp:DropDownList ID="ddlendMonth" runat="server" >
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
        </asp:DropDownList></td>
    <td class="row1" align="left">
       <asp:DropDownList ID="ddlendYear" runat="server" AppendDataBoundItems="True">
           <asp:ListItem>Year</asp:ListItem>
        
        </asp:DropDownList></td>
    <td class="row1">
        <asp:Button ID="btnsubmitdate" runat="server" Text="  Go  " OnClick="btnsubmitdate_Click" ValidationGroup="date" />
    </td>
    </tr>
    <tr>
    <td align="right" class="row2">
    </td>
    <td align="left" colspan="2" class="row2">
        &nbsp;<asp:Button ID="btnshowall" runat="server" Text="Show all" onClientClick="location.href='orders.aspx'" CausesValidation="False" />
    </td>
    <td align="right" class="row2">&nbsp;</td>
    <td align="right" class="row2">&nbsp;</td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlstartDay"
            ErrorMessage="Select start Day" InitialValue="Day" ValidationGroup="date" Visible="False"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlstartYear"
            ErrorMessage="Select start Year" InitialValue="Year" ValidationGroup="date" Visible="False"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlstartMonth"
            ErrorMessage="Select start Month" InitialValue="Month" ValidationGroup="date"
            Visible="False"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlendDay"
            ErrorMessage="Select end Day" InitialValue="Day" ValidationGroup="date" Visible="False"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlendMonth"
            ErrorMessage="Select end  Month" InitialValue="Month" ValidationGroup="date"
            Visible="False"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlendYear"
            ErrorMessage="Select end Year" InitialValue="Year" ValidationGroup="date" Visible="False"></asp:RequiredFieldValidator></td>
    </tr>
    </table>
    </td>
    </tr>
    </table>
    </td>
    </tr>
    <tr>
<td class="MenuTabNormal"><img src="../Images/LeftMenu/box_bottom.gif" height="11" width="100%"></td>
</tr>
    </table>
</td></tr>

</table>

</td>
</tr>

    <tr>
        <td><table height="23px" style="width: 85%" >
<tr>
 <td width="75%" >
<span class="BodyTitle">
<img src="../Images/LeftMenu/arrow_box.gif" width="13" height="13">&nbsp;
    <asp:Label ID="lblHeader" runat="server" Text="Label"></asp:Label>
</span> 

</td>
<td>
<span class="BodyTitle">
<asp:LinkButton ID="lnkPrint" runat="server" OnClick="lnkPrint_Click" CausesValidation="False">Print Option</asp:LinkButton>
</span> 
</td>
</tr>
</table>
            <asp:Panel ID="PanelData" runat="server"  Width="100%">
          
        <asp:GridView ID="GridView1" runat="server" Width=100%  AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" OnPageIndexChanging="GridView1_PageIndexChanging" >
        <Columns>
            <asp:TemplateField HeaderText="Customer Id" Visible="False">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Customer_ID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Customer_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("First_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("First_Name") %>'></asp:Label>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Last_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Street") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Street") %>'></asp:Label>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("Pin_Code") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="State">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("State_ID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("State_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Country">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Country_ID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Country_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact Number">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Contact_No") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Contact_No") %>'></asp:Label>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("Mobile_No") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email Address">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Email_ID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Email_ID") %>'></asp:Label>
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
                     <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="68px" ValidationGroup="date"
                         Width="409px" />
                 </asp:Panel>
             </td>
         </tr>
</table>
</asp:Panel>
</div> 
</asp:Content>

