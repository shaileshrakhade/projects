<%@ Page Language="C#" MasterPageFile="~/DDMasterPage.master" AutoEventWireup="true" CodeFile="Product_Detail.aspx.cs" Inherits="Product_Detail" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="min-height:500px">
    
    
    
  
    <table width="100%">
    <tr>
    <td style="height: 336px">
    <table width="100%">
    <tr>
    <td valign="bottom" style="width:282px">
    <asp:Image ID="showimage" runat="server" Height="150" Width="130" />
     </td>
     <td  valign="top" style="width:780" >
     <table width="100%">
         <tr>
             <td align="right" style="width: 186px">
                 <asp:Label ID="Label15" runat="server" BackColor="Transparent" Font-Names="Verdana"
                     Font-Size="12px" ForeColor="White" Text="Product Code"></asp:Label></td>
             <td align="left" style="width: 10px">
                 <asp:Label ID="Label17" runat="server" BackColor="Transparent" ForeColor="White"
                     Text="   :   "></asp:Label></td>
             <td align="left">
                 <asp:Label ID="lblproductcode" runat="server" BackColor="Transparent" Font-Names="Verdana"
                     Font-Size="12px" ForeColor="White"></asp:Label></td>
         </tr>
      <tr>
      <td style="width: 186px" align="right">
          <asp:Label ID="Label1" runat="server" BackColor="Transparent" ForeColor="White" Text="Product Name" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
          <td align="left" style="width: 10px">
              <asp:Label ID="Label7" runat="server" BackColor="Transparent" ForeColor="White" Text="   :   "></asp:Label></td>
          <td align="left">
              <asp:Label ID="lblproductname" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
          </tr>
         <tr>
             <td align="right" style="width: 186px">
                 <asp:Label ID="Label13" runat="server" BackColor="Transparent" Font-Names="Verdana"
                     Font-Size="9pt" ForeColor="White" Text="Sub Category"></asp:Label></td>
             <td align="left" style="width: 10px">
                 <asp:Label ID="Label14" runat="server" BackColor="Transparent" ForeColor="White"
                     Text="   :   " Width="12px"></asp:Label></td>
             <td align="left">
                 <asp:Label ID="Labelsubcat" runat="server" BackColor="Transparent" ForeColor="White"></asp:Label></td>
         </tr>
         <tr>
             <td align="right" style="width: 186px">
                 <asp:Label ID="Label2" runat="server" BackColor="Transparent" ForeColor="White" Text=" Category" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
             <td align="left" style="width: 10px">
                 <asp:Label ID="Label8" runat="server" BackColor="Transparent" ForeColor="White" Text="   :   "></asp:Label></td>
             <td align="left">
                 <asp:Label ID="lblcategory" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
         </tr>
         <tr>
             <td align="right" style="width: 186px">
                 <asp:Label ID="Label3" runat="server" BackColor="Transparent" ForeColor="White" Text="Root Category" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
             <td align="left" style="width: 10px">
                 <asp:Label ID="Label9" runat="server" BackColor="Transparent" ForeColor="White" Text="   :   "></asp:Label></td>
             <td align="left">
                 <asp:Label ID="lblrootcate" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
         </tr>
         <tr>
             <td align="right" style="width: 186px">
                 <asp:Label ID="Label4" runat="server" BackColor="Transparent" ForeColor="White" Text="Weight" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
             <td align="left" style="width: 10px">
                 <asp:Label ID="Label10" runat="server" BackColor="Transparent" ForeColor="White"
                     Text="   :   "></asp:Label></td>
             <td align="left">
                 <asp:Label ID="lblweight" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label>
                 <asp:Label ID="lblweightunit" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
         </tr>
         <tr>
             <td align="right" style="width: 186px">
                 <asp:Label ID="Label5" runat="server" BackColor="Transparent" ForeColor="White" Text="Price" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
             <td align="left" style="width: 10px">
                 <asp:Label ID="Label11" runat="server" BackColor="Transparent" ForeColor="White"
                     Text="   :   "></asp:Label></td>
             <td align="left">
                 <asp:Label ID="lblprice" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
         </tr>
         <tr>
             <td align="right" style="width: 186px; height: 21px">
                 <asp:Label ID="Label6" runat="server" BackColor="Transparent" ForeColor="White" Text="Description" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
             <td align="left" style="width: 10px; height: 21px">
                 <asp:Label ID="Label12" runat="server" BackColor="Transparent" ForeColor="White"
                     Text="   :   "></asp:Label></td>
             <td align="left" style="height: 21px">
                 <asp:Label ID="lbldesc" runat="server" BackColor="Transparent" ForeColor="White" Font-Names="Verdana" Font-Size="12px"></asp:Label></td>
         </tr>
          </table>
          </td>
          </tr>
          <tr>
          <td colspan="2">
          <table width="100%">
          <tr>
          <td align="right" >
              &nbsp;<asp:Button ID="btnaddcart" runat="server" Text="Add to cart" OnClick="btnaddcart_Click1"/></td>
          <td align="left" >
              &nbsp;<asp:Button ID="btnorder" runat="server" Text="Order" OnClick="btnorder_Click" /></td>
          </tr>
          </table>
          </td>
          </tr>
          <tr>
          <td align="left" style="width: 282px">
          <asp:Label ID="Label43" runat="server" Text="Detail Description" Font-Bold="True" Font-Size="12px" ForeColor="White" BackColor="Transparent" Font-Names="Verdana" ></asp:Label> 
          </td>
          </tr>
          <tr>
          <td colspan="2">
          <asp:Label ID="lbllongdesc" runat="server" BackColor="Transparent" ForeColor="White" Width="100%" Font-Names="Verdana" Font-Size="12px" ></asp:Label> 
          </td>
          </tr>
          </table>
          </div> 
         
</asp:Content>

