<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderReport1.aspx.cs" Inherits="Admin_OrderReport1" %>

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
        <tr>
            <td colspan="2" class="MenuTabNormal" height="8px" >
            <img src="../Images/Menu/box_bottom300.gif" runat=server  height="8" width="890"  /> 
            </td>
        </tr>
   
    <tr>
    <td colspan=2 >
    <asp:GridView ID="GridView1" runat="server"
            AutoGenerateColumns="False"
            PageSize="5" Width="100%">
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
    </td>
    </tr>
    </table>
    
    </div>
    </form>
</body>
</html>
