<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="fashion.aspx.cs" Inherits="fashion" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="min-height:500px">

<table width="100%" border="0" class="font">
      <tr><td>
      
      
      
      
          <br />
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT FashionImage FROM Image"></asp:SqlDataSource>
          <br />
          <br />
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
              DataSourceID="SqlDataSource1">
              <Columns>
                  <asp:TemplateField HeaderText="FashionImage" SortExpression="FashionImage">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("FashionImage") %>'></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Label ID="Label1" runat="server" Text='<%# Bind("FashionImage") %>'></asp:Label>
                          <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("FashionImage") %>' />
                      </ItemTemplate>
                  </asp:TemplateField>
              </Columns>
          </asp:GridView>
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
      
      
      
      
      </td>
     
      </tr>
    </table>
    <table width="100%">
    <tr>
    <td width ="15%" bgcolor="#000000" >
        &nbsp;</td>
    </tr>
    </table>
    
   </div>  
     

</asp:Content>

