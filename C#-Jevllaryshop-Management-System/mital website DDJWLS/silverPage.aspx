<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="silverPage.aspx.cs" Inherits="silverPage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="min-height:500px">

<table width="100%" border="0" class="font">
      <tr><td>
      
      
      
      
          <br />
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
              SelectCommand="SELECT [silverimg] FROM [silver]"></asp:SqlDataSource>
          <br />
          <br />
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
              DataSourceID="SqlDataSource1">
              <Columns>
                  <asp:TemplateField HeaderText="silver">
                      <EditItemTemplate>
                          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                      </EditItemTemplate>
                      <ItemTemplate>
                          <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("silverimg") %>' />
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

