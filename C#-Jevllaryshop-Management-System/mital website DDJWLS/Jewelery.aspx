<%@ Page Language="C#" MasterPageFile="~/DDMasterPage.master" AutoEventWireup="true" CodeFile="Jewelery.aspx.cs" Inherits="Gold" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="min-height:500px">





    <asp:Panel ID="PanelSpecials" runat="server" Width="100%" CssClass="font">
        <table width="100%" style="height: 391px">
        <tr>
        <td>
   
            <asp:GridView ID="GridView1" runat="server" 
                >
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [tblAdmin]"></asp:SqlDataSource>
   
        </td>
        </tr>
        <tr>
        <td>
            <asp:LinkButton ID="lnkNext" runat="server"  ForeColor=whiteSmoke OnClick="lnkNext_Click" >Next</asp:LinkButton>
        </td>
        </tr>
        </table>
   
    </asp:Panel>


















<%--<asp:DataList ID="DataList2" runat="server" Width="100%" RepeatLayout="table" RepeatColumns="4" BorderColor="Gray" BorderStyle="Ridge" BorderWidth="1px" CellPadding="9" GridLines="Horizontal">
    <ItemTemplate>
    <table width="100%">
    <tr>
                        <td  align="right" style="width:10px">
                       <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("imageThumbnail")%>' Width="100" Height="100" PostBackUrl="~/product.aspx" CommandArgument='<%# Eval("productID") %>'/>
                        
    </td>
    <td align="left" >
                            <%# Eval("productName")%>
                            <br /><%# Eval("shortDescription") %>
    </tr>
    </table>
    </ItemTemplate>
    </asp:DataList>--%>
    
    </div> 
    
        </asp:Content>

