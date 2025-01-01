<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="CustomerHistory.aspx.cs" Inherits="CustomerHistory" Title="DD Jewellers | Administarator Panel | Customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="min-height:500px">
<table class="font" >
<tr>
<td>
<asp:Panel ID="Panel1" runat="server" >
<table>
<tr>
<td style="height: 99px">
<table border="0" cellpadding="0" cellspacing="0" width="515">
<tr>
<td >
<img height="66" src="../Images/Icon/i_customers.jpg" width="74" /></td>
<td align="left" width="440">
<span class="MainTitle">Customers</span></td>
</tr>
</table>
<br />
<img height="13" src="../Images/LeftMenu/arrow_box.gif" width="13" /><span class="BodyTitle">
Customer History</span></td>
</tr>
<tr>
<td >
<asp:Panel ID="PanelHistory" runat="server"  Width="100%">
<table border="0" cellspacing="0" cellpadding="0" width="515">

<tr>
<td style="height: 364px" >

<table cellpadding=1 cellspacing=0 border=0 width="515">
<tr bgcolor="#CECECE">
<td align=center>

    
<table width="515" border="0" cellspacing="0" cellpadding="5">
<tr align="left">
<td class="whiteBox" >
<br>
<img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15">
<a href="Customers.aspx" class="SubTitle">&nbsp;Return to customers main</a><br>
<br>
<img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15">&nbsp;<span class="SubTitle">Customer History for&nbsp;<asp:Label ID="lblCustomerName" runat="server"></asp:Label></span><br>
    &nbsp;
 <table width="515px" border="0" cellspacing="0" cellpadding="0">
<tr>
<td style="height: 238px; vertical-align: top; text-align: left;">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" >
 <Columns>
     <asp:TemplateField HeaderText="Order ID" Visible="False">
         <EditItemTemplate>
             <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Order_ID") %>'></asp:TextBox>
         </EditItemTemplate>
         <ItemTemplate>
             <asp:Label ID="Label1" runat="server" Text='<%# Bind("Order_ID") %>'></asp:Label>
         </ItemTemplate>
     </asp:TemplateField>
     <asp:TemplateField HeaderText="Order Code">
         <EditItemTemplate>
             <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Order_Code") %>'></asp:TextBox>
         </EditItemTemplate>
         <ItemTemplate>
             <asp:Label ID="Label2" runat="server" Text='<%# Bind("Order_Code") %>'></asp:Label>
         </ItemTemplate>
     </asp:TemplateField>
     <asp:TemplateField HeaderText="Order Date">
         <EditItemTemplate>
             <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Order_Date") %>'></asp:TextBox>
         </EditItemTemplate>
         <ItemTemplate>
             <asp:Label ID="Label3" runat="server" Text='<%# Bind("Order_Date") %>'></asp:Label>
         </ItemTemplate>
     </asp:TemplateField>
     <asp:TemplateField HeaderText="No of Products">
         <EditItemTemplate>
             <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("No_Of_Products") %>'></asp:TextBox>
         </EditItemTemplate>
         <ItemTemplate>
             <asp:Label ID="Label5" runat="server" Text='<%# Bind("No_Of_Products") %>'></asp:Label>
         </ItemTemplate>
     </asp:TemplateField>
     <asp:TemplateField HeaderText="Order Total">
         <EditItemTemplate>
             <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Order_Total") %>'></asp:TextBox>
         </EditItemTemplate>
         <ItemTemplate>
             <asp:Label ID="Label4" runat="server" Text='<%# Bind("Order_Total") %>'></asp:Label>
         </ItemTemplate>
     </asp:TemplateField>
     <asp:TemplateField HeaderText="Processed Date">
         <EditItemTemplate>
             <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Processed_Date") %>'></asp:TextBox>
         </EditItemTemplate>
         <ItemTemplate>
             <asp:Label ID="Label6" runat="server" Text='<%# Bind("Processed_Date") %>'></asp:Label>
         </ItemTemplate>
     </asp:TemplateField>
            
            
           
        </Columns>
        <RowStyle CssClass="row2" />
        <AlternatingRowStyle CssClass="row1" />
    </asp:GridView>
    &nbsp;
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

</table>
</asp:Panel> 
</td>
</tr>
<tr>
<td style="height: 101px" >
&nbsp;<asp:Panel ID="Panel2" runat="server" Visible=false   >
    <table border="0" cellpadding="2" cellspacing="0" style="width: 516px">
        <tr>
            <td valign="top" >
                <img height="24" src="../Images/LeftMenu/admin.gif" width="17" /><img align="top" height="16"
                    hspace="2" src="../Images/Icon/alt.gif" width="22" /></td>
            <td valign="top">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td align="right" valign="top" width="11">
                            <img height="9" hspace="2" src="../Images/LeftMenu/arrow_gray.gif" vspace="2" width="9" /></td>
                        <td align="left" valign="top" width="440">
                            <span class="bodyTextError">The customer does not have an order history.
                                <br />
                                <br />
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" >
                            <img height="15" hspace="2" src="../Images/LeftMenu/arrow_main.gif" width="15" /></td>
                        <td align="left" valign="top" width="440">
                            &nbsp;<a class="bodyText" href="Customers.aspx">Back to customers</a>
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
</td>
</tr>
</table>
</div> 
</asp:Content>

