<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Auth.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-6 col-sm-12">
            <div class="login-form">
                .<h2>Register</h2>
                <asp:Label ID="errorMsg" runat="server"> </asp:Label>
                  <div class="form-group">
                     <label>First Name</label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ClientIDMode="Static" ControlToValidate="txtUserName" ErrorMessage="*" ForeColor="Red" ValidationGroup="reg"></asp:RequiredFieldValidator>
                      <asp:TextBox runat="server" ID="txtFirstName" CssClass="form-control"></asp:TextBox>
                    
                  </div>
                  <div class="form-group">
                     <label>Last Name</label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ClientIDMode="Static" ControlToValidate="txtLastName" ErrorMessage="*" ForeColor="Red" ValidationGroup="reg"></asp:RequiredFieldValidator>
                       <asp:TextBox runat="server" ID="txtLastName"  CssClass="form-control"></asp:TextBox>
                   
                  </div>
                  <div class="form-group">
                     <label>Phone Number</label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ClientIDMode="Static" ControlToValidate="txtPhone" ErrorMessage="*" ForeColor="Red" ValidationGroup="reg"></asp:RequiredFieldValidator>
                       <asp:TextBox runat="server" ID="txtPhone" TextMode="Phone" MaxLength="10" CssClass="form-control"></asp:TextBox>
                   
                  </div>
                  <div class="form-group">
                     <label>User Name</label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ClientIDMode="Static" ControlToValidate="txtUserName" ErrorMessage="*" ForeColor="Red" ValidationGroup="reg"></asp:RequiredFieldValidator>
                       <asp:TextBox runat="server" ID="txtUserName"  CssClass="form-control"></asp:TextBox>
                   
                  </div>
                <div class="form-group">
                     <label>Password</label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ClientIDMode="Static" ControlToValidate="txtPassword" ErrorMessage="*" ForeColor="Red" ValidationGroup="reg"></asp:RequiredFieldValidator>
                       <asp:TextBox runat="server" ID="txtPassword" TextMode="Password"  CssClass="form-control"></asp:TextBox>
                   
                  </div>
                <asp:Button runat="server"  Text="Register" ID="btnRegister" ValidationGroup="reg" OnClick="btnRegister_Click"/>

             
            </div>
         </div>
</asp:Content>
