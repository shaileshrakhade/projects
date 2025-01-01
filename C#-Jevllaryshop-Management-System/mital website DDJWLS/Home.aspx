<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master"  AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" Title="DD JEWELLERS | HOME" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="min-height:500px">
<asp:Panel ID="PanelHome" runat="server" Width="100%" HorizontalAlign=center CssClass="font"  >
        <table width=90% align="center">
        <tr>
        <td>
   <asp:DataList ID="DataList1" runat="server" BackColor="#000000" Font-Bold="False"
            Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"
            ForeColor="#FFFFFF" RepeatColumns="3" RepeatDirection="Horizontal" ShowFooter="False"
            ShowHeader="False" Width="100%" OnItemCommand="DataList1_ItemCommand" style="vertical-align: middle; text-align: center" >
            <ItemTemplate>
            <table width="100%">
                    
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl=' <%# Eval("Image")%>' Width="130" Height="130" CommandName="product"  CommandArgument='<%# Eval("Product_ID") %>'/>
                            
                        </td>
                        </tr>
                        <tr>
                        <td>
                            <asp:LinkButton ID="lnkProduct" runat="server" ForeColor=white CommandName="product"  CommandArgument='<%# Eval("Product_ID") %>' >  <%# Eval("Product_Name")%></asp:LinkButton>
                    
                      
                      
                       </td>
                    </tr>
                    
                </table>
            </ItemTemplate> 
        </asp:DataList>     
        </td>
        </tr>
        <tr>
        <td style="vertical-align: middle; text-align: right">
            <asp:LinkButton ID="lnkNext" runat="server"  ForeColor=whiteSmoke OnClick="lnkNext_Click" Font-Bold="True" >More</asp:LinkButton>
        </td>
        </tr>
        </table>
   
    </asp:Panel>
    
    </div> 
    
</asp:Content>

