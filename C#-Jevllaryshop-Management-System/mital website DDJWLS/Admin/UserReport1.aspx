<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserReport1.aspx.cs" Inherits="Admin_UserReport1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link rel="stylesheet" href="AdminStyleSheet.css" type="text/css" />
    <title>DD Jewellers | Administarator Panel | Reports</title>
    <script language="javascript" type="text/javascript">

var DA = (document.all) ? 1 : 0
window.onerror=handle_error

function handle_error()
{
  alert("\nNothing was printed. \n\nIf you want to print this page, \nSelect Print from the File menu.");
  return true;
}
function windowPrint() {
	window.print();
}

</script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="min-height:700px">
    <table width=100% class="font"  >
    <tr>
    <td width="60%">
    <span class="BodyTitle"><img src="../Images/LeftMenu/arrow_box.gif" width="13" height="13">&nbsp;
    <asp:Label ID="lblHeader" runat="server" Text="Label" CssClass="BodyTitle"></asp:Label>
</span> 
    </td>
    <td>
    <asp:Label ID="Label1" runat="server" Height="21px" Text="Print this Page" Width="86px" Font-Bold="True" ForeColor="Black" Font-Names="Arial" Font-Size="12px"></asp:Label>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/print.gif" OnClick="ImageButton1_Click" />
    </td></tr>
        
            
            <tr >
<td class="MenuTabNormal" style="height: 11px" width="100%" colspan="2" ><img src="../Images/LeftMenu/box_bottom.gif" height="11" width="100%"></td>
</tr>
        
   
    <tr>
    <td colspan=2 >
        &nbsp;<asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False"
            PageSize="5" Width="100%">
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
    </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
