<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Auth.login" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="MainContent" runat="server">
          <div class="login-form">
        <h3>We Increasing the Security Here & Make user easy to login</h3>
        </div>
            <div class="col-md-12">
            <h2>Login</h2>
                <asp:Label ID="errorMsg" runat="server" > </asp:Label>
                </div>
            <div class="col-md-12">
         <div class="col-md-6">
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
                <div class="col-md-6">
                    <div class="login-form">
      .   
                  <div class="form-group">
                       

                     <label>Select The QR Code</label>
                     
                           
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ClientIDMode="Static" ControlToValidate="fileUplode" ErrorMessage="*" ForeColor="Red" ValidationGroup="loginByQR"></asp:RequiredFieldValidator>

                      <asp:FileUpload runat="server" ID="fileUplode" CssClass="form-control" accept=".png" ></asp:FileUpload>
                      
                    
                  </div>
                         <asp:Button runat="server" Text="Login"  ValidationGroup="loginByQR" ID="btnWithQR" OnClick="btnWithQR_Click" />
                        </div>
                    </div>
                </div>
     
    
  <div class="col-md-12">
      <hr />
      </div>
     
</asp:Content>
