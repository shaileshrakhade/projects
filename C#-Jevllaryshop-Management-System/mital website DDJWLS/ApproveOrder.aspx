<%@ Page Language="C#" MasterPageFile="~/DDMasterPage.master" AutoEventWireup="true" CodeFile="ApproveOrder.aspx.cs" Inherits="ApproveOrder" Title="DD JEWELLERS | ORDER" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="min-height:500px">

    <asp:Panel ID="pnlorderid" runat="server"  Width="100%" CssClass="font"  >
        <table width="100%">
            <tr>
                <td style="height: 21px">
                    <asp:Label ID="Label13" runat="server" Text="Order Code -" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="13px"></asp:Label>
                    <asp:Label ID="lblOrdercode" runat="server" BackColor="Transparent" ForeColor="White" Font-Bold="True" Font-Names="Verdana" Font-Size="13px"></asp:Label></td>
            </tr>
        </table>
        
        <table width="100%">
            <tr>
                <td>
                    <asp:Label ID="Label28" runat="server" Text="Your order code is mailed to your registered mailid" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px" Visible="False"></asp:Label>
                    <asp:Label ID="lblmailid" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px" Visible="False"></asp:Label></td>
            </tr>
        </table>
    
    
    </asp:Panel>




<asp:Panel ID="pnlbuyerdetail" runat="server" Height="244px" Width="100%" CssClass="font">
        <table style="width: 100%">
            <tr>
                <td style="width: 369px" align="left">
                    <asp:Label ID="lblperchasedpro" runat="server" BackColor="Transparent" ForeColor="White" Text="YOUR DETAILS" Font-Bold="True" Font-Names="Verdana" Font-Size="16px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" style="width: 45%">
                    <asp:Label ID="Label2" runat="server" BackColor="Transparent" ForeColor="White" Text="First Name" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
                <td align="center" style="width: 10%">
                    <asp:Label ID="Label26" runat="server" BackColor="Transparent" ForeColor="White"
                        Text=":"></asp:Label></td>
                <td align="left" style="width: 45%px">
                    <asp:Label ID="lblfname" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" style="width: 45%" >
                    <asp:Label ID="Label3" runat="server" BackColor="Transparent" ForeColor="White" Text="Last Name" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
                <td align="center" style="width: 10%" >
                    <asp:Label ID="Label25" runat="server" BackColor="Transparent" ForeColor="White"
                        Text=":"></asp:Label></td>
                <td align="left" style=" width: 45%;">
                    <asp:Label ID="lbllastname" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" style="width: 45%">
                    <asp:Label ID="Label4" runat="server" BackColor="Transparent" ForeColor="White" Text="Occupation" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
                <td align="center" style="width: 10%">
                    <asp:Label ID="Label24" runat="server" BackColor="Transparent" ForeColor="White"
                        Text=":"></asp:Label></td>
                <td align="left" style="width: 45%">
                    <asp:Label ID="lbloccupation" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" width="45%" style="height: 21px">
                    <asp:Label ID="Label5" runat="server" BackColor="Transparent" ForeColor="White" Text="Street" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
                <td align="center" style="width: 10%; height: 21px;">
                    <asp:Label ID="Label23" runat="server" BackColor="Transparent" ForeColor="White"
                        Text=":"></asp:Label></td>
                <td align="left" width="45%" style="height: 21px">
                    <asp:Label ID="lblstreet" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" style="height: 21px" width="45%">
                    <asp:Label ID="Label6" runat="server" BackColor="Transparent" ForeColor="White" Text="Country" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
                <td align="center" style="height: 21px" width="10%">
                    <asp:Label ID="Label22" runat="server" BackColor="Transparent" ForeColor="White"
                        Text=":"></asp:Label></td>
                <td align="left" style="height: 21px;" width="45%">
                    <asp:Label ID="lblcountry" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" width="45%">
                    <asp:Label ID="Label7" runat="server" BackColor="Transparent" ForeColor="White" Text="State" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
                <td align="center" width="10%">
                    <asp:Label ID="Label21" runat="server" BackColor="Transparent" ForeColor="White"
                        Text=":"></asp:Label></td>
                <td align="left" width="45%">
                    <asp:Label ID="lblstate" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" style="height: 21px" width="45%">
                    <asp:Label ID="Label8" runat="server" BackColor="Transparent" ForeColor="White" Text="City" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
                <td align="center" style="height: 21px" width="10%">
                    <asp:Label ID="Label20" runat="server" BackColor="Transparent" ForeColor="White"
                        Text=":"></asp:Label></td>
                <td align="left" style="height: 21px;" width="45%">
                    <asp:Label ID="lblcity" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" style="height: 23px" width="45%">
                    <asp:Label ID="Label9" runat="server" BackColor="Transparent" ForeColor="White" Text="Pin Code" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
                <td align="center" style="height: 23px" width="10%">
                    <asp:Label ID="Label19" runat="server" BackColor="Transparent" ForeColor="White"
                        Text=":"></asp:Label></td>
                <td align="left" style="height: 23px;" width="45%">
                    <asp:Label ID="lblpincode" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" style="height: 21px" width="45%">
                    <asp:Label ID="Label10" runat="server" BackColor="Transparent" ForeColor="White"
                        Text="Contact No" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
                <td align="center" style="height: 21px" width="10%">
                    <asp:Label ID="Label18" runat="server" BackColor="Transparent" ForeColor="White"
                        Text=":"></asp:Label></td>
                <td align="left" style="height: 21px;" width="45%">
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
                <td align="left" style="height: 21px;" width="45%">
                    <asp:Label ID="lblemailid" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" style="width: 369px; height: 21px;">
                    </td>
                <td align="center" style="width: 18px; height: 21px;">
                    </td>
                <td align="left" style="width: 337px; height: 21px;">
                    </td>
            </tr>
        </table>
        
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server" Width="100%" CssClass="font">
        <table width="100%">
            <tr>
                <td style="width: 131px; height: 26px" align="left">
                    <asp:Label ID="Label14" runat="server" BackColor="Transparent" ForeColor="White"
                  Text="Purchased Product" Font-Bold="True" Font-Names="Verdana" Font-Size="16px" Width="217px"></asp:Label></td>
            </tr>
            <tr>
                <td >
                    <asp:GridView ID="GridView1" runat="server" BackColor="LightGray" AutoGenerateColumns="false" AllowSorting="true" Width="100%" RowStyle-HorizontalAlign="Center" ForeColor="Black" Font-Names="Verdana" Font-Size="12px">
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
                     
                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("Weight_Unit")%>'></asp:Label>
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
            
            
                <tr align=right style="text-align:right  ">
                <td style="width: 131px; text-align: right;" align="right">
                    
                    <asp:Label ID="lblamt" runat="server" BackColor="Transparent" ForeColor="White" Text="Total Amount : " Font-Bold="True" Font-Names="Verdana" Font-Size="14px"></asp:Label><asp:Label ID="lblamount" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="14px" Font-Bold="True"></asp:Label>
                    </td>
                    
            </tr>
            <tr>
                <td align="right" style="width: 131px">
                    &nbsp;
                    <asp:Button ID="btnprint" runat="server" OnClick="Button1_Click" Text="Print This Page" Height="24px" /></td>
            </tr>
        </table>
        &nbsp;
    </asp:Panel>
</div> 
</asp:Content>

