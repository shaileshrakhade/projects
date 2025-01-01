<%@ Page Language="C#" MasterPageFile="~/DDMasterPage.master" AutoEventWireup="true" CodeFile="Product1.aspx.cs" Inherits="Product1" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="min-height:500px">


    <asp:Panel ID="PanelSpecials" runat="server" Width="100%" CssClass="font">
        <table width="100%" >
        <tr>
        <td>
   <asp:DataList ID="DataList1" runat="server" BackColor="#000000" Font-Bold="False"
            Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"
            ForeColor="#FFFFFF" RepeatColumns="3" RepeatDirection="Horizontal" ShowFooter="False"
            ShowHeader="False" Width="90%" OnItemCommand="DataList1_ItemCommand" 
                onselectedindexchanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
            <table width="100%">
                    
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl=' <%# Eval("Image")%>' Width="130" Height="130" CommandName="Product_ID" CommandArgument='<%# Eval("Product_ID") %>'/>
                            
                        </td>
                        </tr>
                        <tr>
                        <td>
                            <asp:LinkButton ID="lnkProduct" runat="server" ForeColor=white  >  <%# Eval("Product_Name")%>
                         </asp:LinkButton>
                            
                      
                        <br />
                       </td>
                    </tr>
                    
                </table>
            </ItemTemplate> 
        </asp:DataList>     
        </td>
        </tr>
        <tr>
        <td>
            &nbsp;</td>
        </tr>
        </table>
   
    </asp:Panel>

</div> 

</asp:Content>

