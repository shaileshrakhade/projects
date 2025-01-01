<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Steganography.login" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
          <div class="login-form">
        <h3>We Increasing the Security of The Comunication...</h3>
        </div>
            <div class="col-md-12">
            <h2>Login</h2>
                <asp:Label ID="errorMsg" runat="server" > </asp:Label>
                </div>
            <div class="col-md-12">
         
                <div class="login-form">
          .
                      <div class="form-group">
                         <label>User Name</label>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ClientIDMode="Static" ControlToValidate="txtUserName" ErrorMessage="*" ForeColor="Red" ValidationGroup="login"></asp:RequiredFieldValidator>
                          <asp:TextBox runat="server" ID="txtUserName" CssClass="form-control"></asp:TextBox>
                    
                      </div>
                      <div class="form-group">
                         <label>Password</label>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ClientIDMode="Static" ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="Red" ValidationGroup="login"></asp:RequiredFieldValidator>
                           <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="form-control"></asp:TextBox>
                   
                      </div>
                    <asp:Button runat="server" Text="Login"  ValidationGroup="login" ID="btnLogin" OnClick="btnLogin_Click" />
                    <asp:Button runat="server"  Text="Register" ID="btnRegister" OnClick="btnRegister_Click" />

             
          
             </div>
                
                </div>
     
    
  <div class="col-md-12">
      <hr />
      </div>
     
</asp:Content>
