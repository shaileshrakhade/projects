<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrintOrderForm.aspx.cs" Inherits="DApproveorderefault2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>DD JEWELLERS | PRINT ORDER</title>
</head>
<body>
    <form id="form1" runat="server">
   <div style="min-height:700px">
    
     <asp:Panel ID="pnlbuyerdetail" runat="server" Height="100%" Width="100%" BackColor="Black">
        <table style="width: 100%" height="100%">
            <tr>
                <td align="left" style="width: 370px">
                    <asp:Button ID="btnprint" runat="server" OnClick="btnprint_Click" Text="Print" /></td>
            </tr>
            <tr>
                <td align="left" style="width: 370px">
                    <asp:Label ID="Label15" runat="server" BackColor="Transparent" ForeColor="White"
                        Text="Order Code--" Font-Bold="True" Font-Names="Verdana" Font-Size="14px"></asp:Label>
                    <asp:Label ID="lblodercode" runat="server" BackColor="Transparent" ForeColor="White" Font-Bold="True" Font-Names="Verdana" Font-Size="14px"></asp:Label></td>
            </tr>
            <tr>
                <td align="left" style="width: 370px">
                    <asp:Label ID="lblperchasedpro" runat="server" BackColor="Transparent" ForeColor="White"
                        Text="YOUR DETAILS" Font-Bold="True" Font-Names="Verdana" Font-Size="16px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" width="45%">
                    <asp:Label ID="Label2" runat="server" BackColor="Transparent" ForeColor="White" Text="First Name" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
                <td align="center" width="10%">
                    <asp:Label ID="Label26" runat="server" BackColor="Transparent" ForeColor="White"
                        Text=":"></asp:Label></td>
                <td align="left" width="45%">
                    <asp:Label ID="lblfname" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" style="height: 21px" width="45%">
                    <asp:Label ID="Label3" runat="server" BackColor="Transparent" ForeColor="White" Text="Last Name" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
                <td align="center" style="height: 21px" width="10%">
                    <asp:Label ID="Label25" runat="server" BackColor="Transparent" ForeColor="White"
                        Text=":"></asp:Label></td>
                <td align="left" style="height: 21px" width="45%">
                    <asp:Label ID="lbllastname" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" width="45%">
                    <asp:Label ID="Label4" runat="server" BackColor="Transparent" ForeColor="White" Text="Occupation" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
                <td align="center" width="10%">
                    <asp:Label ID="Label24" runat="server" BackColor="Transparent" ForeColor="White"
                        Text=":"></asp:Label></td>
                <td align="left" width="45%">
                    <asp:Label ID="lbloccupation" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" style="height: 21px" width="45%">
                    <asp:Label ID="Label5" runat="server" BackColor="Transparent" ForeColor="White" Text="Street" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
                <td align="center" style="height: 21px" width="10%">
                    <asp:Label ID="Label23" runat="server" BackColor="Transparent" ForeColor="White"
                        Text=":"></asp:Label></td>
                <td align="left" style="height: 21px" width="45%">
                    <asp:Label ID="lblstreet" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" style="height: 21px" width="45%">
                    <asp:Label ID="Label6" runat="server" BackColor="Transparent" ForeColor="White" Text="Country" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
                <td align="center" style="height: 21px" width="10%">
                    <asp:Label ID="Label22" runat="server" BackColor="Transparent" ForeColor="White"
                        Text=":"></asp:Label></td>
                <td align="left" style="height: 21px" width="45%">
                    <asp:Label ID="lblcountry" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" width="45%" style="height: 32px">
                    <asp:Label ID="Label7" runat="server" BackColor="Transparent" ForeColor="White" Text="State" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
                <td align="center" width="10%" style="height: 32px">
                    <asp:Label ID="Label21" runat="server" BackColor="Transparent" ForeColor="White"
                        Text=":"></asp:Label></td>
                <td align="left" width="45%" style="height: 32px">
                    <asp:Label ID="lblstate" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" style="height: 21px" width="45%">
                    <asp:Label ID="Label8" runat="server" BackColor="Transparent" ForeColor="White" Text="City" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
                <td align="center" style="height: 21px" width="10%">
                    <asp:Label ID="Label20" runat="server" BackColor="Transparent" ForeColor="White"
                        Text=":"></asp:Label></td>
                <td align="left" style="height: 21px" width="45%">
                    <asp:Label ID="lblcity" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" style="height: 21px" width="45%">
                    <asp:Label ID="Label9" runat="server" BackColor="Transparent" ForeColor="White" Text="Pin Code" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
                <td align="center" style="height: 21px" width="10%">
                    <asp:Label ID="Label19" runat="server" BackColor="Transparent" ForeColor="White"
                        Text=":"></asp:Label></td>
                <td align="left" style="height: 23px" width="45%">
                    <asp:Label ID="lblpincode" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" style="height: 21px" width="45%">
                    <asp:Label ID="Label10" runat="server" BackColor="Transparent" ForeColor="White"
                        Text="Contact No" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
                <td align="center" style="height: 21px" width="10%">
                    <asp:Label ID="Label18" runat="server" BackColor="Transparent" ForeColor="White"
                        Text=":"></asp:Label></td>
                <td align="left" style="height: 21px" width="45%">
                    <asp:Label ID="lblcontactno" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" width="45%">
                    <asp:Label ID="Label11" runat="server" BackColor="Transparent" ForeColor="White"
                        Text="Mobile No" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
                <td align="center" width="10%">
                    <asp:Label ID="Label17" runat="server" BackColor="Transparent" ForeColor="White"
                        Text=":"></asp:Label></td>
                <td align="left" width="45%">
                    <asp:Label ID="lblmobileno" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" style="height: 21px" width="45%">
                    <asp:Label ID="Label12" runat="server" BackColor="Transparent" ForeColor="White"
                        Text="Email ID" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
                <td align="center" style="height: 21px" width="10%">
                    <asp:Label ID="Label16" runat="server" BackColor="Transparent" ForeColor="White"
                        Text=":"></asp:Label></td>
                <td align="left" style="height: 21px" width="45%">
                    <asp:Label ID="lblemailid" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" style="width: 370px">
                </td>
                <td align="center" style="width: 18px">
                </td>
                <td align="left">
                </td>
            </tr>
        </table>
    </asp:Panel>
    
    <asp:Panel ID="Panel1" runat="server" Width="100%" Height="155px">
        <table width="100%">
            <tr>
                <td style="width: 131px; height: 26px" align="left" bgcolor="black">
                    <asp:Label ID="Label14" runat="server" BackColor="Transparent" ForeColor="White"
                  Text="Purchased Product" Font-Names="Verdana" Font-Size="16px" Font-Bold="True" Width="204px"></asp:Label></td>
            </tr>
            <tr> 
                <td >
                    <asp:GridView ID="GridView1" runat="server" BackColor="LightGray" AutoGenerateColumns="false" AllowSorting="true" Width="100%" RowStyle-HorizontalAlign="Center" ForeColor="Black">
                <Columns>
                    <asp:TemplateField Visible="False">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Product_ID")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            Product Name
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("product_Name")%>'></asp:Label>  
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            Weight
                        </HeaderTemplate>
                        <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Weight")%>'></asp:Label>
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("Weight_Unit")%>'></asp:Label>
                            <%--<asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Weight")%>'></asp:TextBox>--%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            Price
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                       
                </Columns>
                        <RowStyle HorizontalAlign="Center" />
                         <HeaderStyle Font-Bold="True" Font-Names="Verdana" Font-Size="14px" BackColor="DimGray" ForeColor="White" />
                           <AlternatingRowStyle BackColor="DarkGray" />
                                
            </asp:GridView>
                </td>
            </tr>
            
            
                <tr>
                <td style="width: 131px; height: 27px; text-align: right;" align="right" bgcolor="black">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Home Page" />
                    <asp:Label ID="lblamt" runat="server" BackColor="Transparent" ForeColor="White" Text="Total Amount : " Font-Names="Verdana" Font-Size="14px" Font-Bold="True"></asp:Label>
                    <asp:Label ID="lblAmount" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px"
                        ForeColor="White" Text="Label"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td align="right" style="width: 131px">
                    &nbsp;
                    </td>
            </tr>
        </table>
        &nbsp;
    </asp:Panel>
    
    
    </div>
    </form>
</body>
</html>
