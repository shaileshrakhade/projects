
<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="Category1.aspx.cs" Inherits="Category1" Title="Untitled Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="min-height:500px">

<table width="100%" border="0" class="font">
      <tr><td>
      
      
      
      
      </td>
     
      </tr>
    </table>
    <table width="100%">
    <tr>
    <td width ="15%" bgcolor="#000000" >
    <asp:GridView ID="grdmenu" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="grdmenu_SelectedIndexChanged1" OnRowCommand="grdmenu_RowCommand" Width="90%" ForeColor="Black"  BorderStyle="None">
                  <Columns>
                      <asp:TemplateField>
                   
                      <ItemTemplate>
                          <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/black3.JPG" ImageAlign="Left" Height="25px" />
                         <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="white" CommandName="product" CommandArgument='<%# Eval("Category2_ID")%>'><%# Eval("Category_Name")%></asp:LinkButton>
                     
                      </ItemTemplate>
                      </asp:TemplateField>
                  </Columns>
        <HeaderStyle Font-Bold="True" Font-Names="Verdana" Font-Size="14px" BackColor="Black" ForeColor="Black" />
        
              </asp:GridView>
    </td>
    <td width="85%" >
    <asp:Panel ID="panel1" runat="server" CssClass="font" Width="100%" style="text-align: center" >
    <asp:DataList ID="DataList1" runat="server" BackColor="#000000" Font-Bold="False"
            Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False"
            ForeColor="#FFFFFF" RepeatColumns="3" RepeatDirection="Horizontal" ShowFooter="False"
            ShowHeader="False" Width="90%" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
            <table width="100%">
                    
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl=' <%# Eval("Image")%>' Width="130" Height="130" CommandName="Product" CommandArgument='<%# Eval("Category2_ID") %>'/>
                            
                        </td>
                        </tr>
                        <tr>
                        <td>
                        
                           <asp:LinkButton ID="lnkProduct" runat="server" ForeColor=white  >  <%# Eval("Category_Name")%>
                         </asp:LinkButton>
                            
                      
                        <br />
                       </td>
                    </tr>
                    
                </table>
            </ItemTemplate> 
        </asp:DataList>
        </asp:Panel>
            
    </td>
    </tr>
    </table>
    
   </div>  
     









   
    
    
    
</asp:Content>

