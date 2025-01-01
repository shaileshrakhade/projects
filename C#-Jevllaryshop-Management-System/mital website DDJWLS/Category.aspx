<%@ Page Language="C#" MasterPageFile="~/DDMasterPage.master" AutoEventWireup="true"
    CodeFile="Category.aspx.cs" Inherits="Category" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="min-height: 500px; text-align: center">
        <asp:DataList ID="DataList1" runat="server" CssClass="font" BackColor="#000000" Font-Bold="False"
            Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"
            ForeColor="#FFFFFF" RepeatColumns="3" RepeatDirection="Horizontal" ShowFooter="False"
            ShowHeader="False" Width="90%" OnSelectedIndexChanged="DataList1_SelectedIndexChanged"
            OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table width="100%">
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl=' <%# Eval("Image")%>'
                                Width="130" Height="130" CommandName="Product" CommandArgument='<%# Eval("Category3_ID") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:LinkButton ID="lnkProduct" runat="server" ForeColor="white">  <%# Eval("Category_Name")%>
                            </asp:LinkButton>
                            <br />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
