<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true"
    CodeFile="Customers.aspx.cs" Inherits="Admin_Customers" Title="DD Jewellers | Administarator Panel | Customers"
    MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="min-height: 500px">
        <asp:Panel ID="PanelCustomer" runat="server" Width="100%" CssClass="font">
            <table>
                <tr>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" width="515">
                            <tr>
                                <td width="74">
                                    <img height="66" src="../Images/Icon/i_customers.jpg" width="74" />
                                </td>
                                <td align="left">
                                    <span class="MainTitle">Customers</span>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table border="0" cellspacing="0" cellpadding="1">
                            <tr>
                                <td style="height: 30px">
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td valign="top" class="MenuTabSelect">
                                                <img src="../Images/LeftMenu/left_top.gif" width="5" height="5" border="0" alt="">
                                            </td>
                                            <td class="MenuTabSelect">
                                                <table border="0" cellspacing="0" cellpadding="2" width="100%">
                                                    <tr align="center">
                                                        <td>
                                                            <span class="MenuTabTitle">&nbsp;View&nbsp;</span>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td valign="top" align="right" class="MenuTabSelect">
                                                <img src="../Images/LeftMenu/right_top.gif" width="5" height="5" border="0" alt=""><br>
                                                <img src="../Images/AdminMaster/spacer.gif" width="1" height="15">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <table border="0" cellspacing="0" cellpadding="0" width="515">
                            <tr>
                                <td width="1" style="height: 80px">
                                    <table cellpadding="1" cellspacing="0" border="0" width="515">
                                        <tr bgcolor="#CECECE">
                                            <td align="center">
                                                <table width="515" border="0" cellspacing="0" cellpadding="0">
                                                    <tr align="left">
                                                        <td class="whiteBox">
                                                            <table border="0" cellspacing="0" cellpadding="5" bgcolor="#FFFFFF">
                                                                <tr>
                                                                    <td width="15">
                                                                        <img src="../Images/LeftMenu/arrow_main.gif" width="15" height="15">
                                                                    </td>
                                                                    <td align="left">
                                                                        <span class="SubTitle">Search By Name
                                                                            <asp:TextBox ID="txtcustSearch" runat="server" BorderStyle="Groove"></asp:TextBox></span>&nbsp;
                                                                        <asp:Button ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click" />&nbsp;
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="MenuTabNormal" style="height: 11px">
                                                <img src="../Images/LeftMenu/box_bottom.gif" height="11" width="100%">
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <span class="BodyTitle">
                            <img src="../Images/LeftMenu/arrow_box.gif" width="13" height="13">&nbsp; Customers
                            matching</span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                            AllowSorting="True" PageSize="5" OnRowCommand="GridView1_RowCommand" OnPageIndexChanging="GridView1_PageIndexChanging">
                            <%--OnSelectedIndexChanging="GridView1_SelectedIndexChanging" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged">
--%>                            <Columns>
                                <asp:TemplateField HeaderText="Customer Name">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("First_Name") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblFname" runat="server" Text='<%# Bind("First_Name") %>'></asp:Label>
                                        <asp:Label ID="lblLname" runat="server" Text='<%# Bind("Last_Name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Occupation">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Occupation") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Occupation") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Address">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Street") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Street") %>'></asp:Label>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("State_ID") %>'></asp:Label>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Country_ID") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Contact Number">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Contact_No") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblContact_No" runat="server" Text='<%# Bind("Contact_No") %>'></asp:Label>
                                        <asp:Label ID="lblMobile_No" runat="server" Text='<%# Bind("Mobile_No") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Email_ID" HeaderText="Email Address" />
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td align="left" valign="top" width="11">
                                                </td>
                                                <td align="left">
                                                    <span class="bodyTextBold"></span>
                                                </td>
                                            </tr>
                                        </table>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:ImageButton ID="imgbtnHistory" runat="server" ImageUrl="~/Images/Buttons/button_history.gif"
                                            CommandName="History" CommandArgument='<%# Eval("Customer_ID") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <RowStyle CssClass="row2" />
                            <AlternatingRowStyle CssClass="row1" />
                        </asp:GridView>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
</asp:Content>
