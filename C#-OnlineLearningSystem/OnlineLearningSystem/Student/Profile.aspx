<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="OnlineLearningSystem.Std.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <div class="dbContainer">
        <h1 style="text-align: center">
            <asp:Label ID="lblHeding" runat="server" Text="Profile" Font-Bold="true" Font-Names="Arial Unicode MS"></asp:Label>
        </h1>
        <div class="col-md-16" style="margin-top: 20px">
            <hr />
        </div>
        <div class="col-md-16" style="margin-top: 20px">
            <div class="col-md-4" align="left">
            <asp:Label ID="lblUidParentj" runat="server" Text="Parent UserName & Password :- " Font-Bold="true"></asp:Label>
            </div>
            <div class="col-md-10" align="left">
            <asp:Label ID="lblUidParent" runat="server" Text="UserName = 'Parent+Your User Name' &  Password is Same of Student." Font-Bold="true"></asp:Label>
            </div>
            
        </div>
        <div class="col-md-16" style="margin-top: 20px">
            <hr />
        </div>
        <div class="col-md-16" style="margin-top: 20px">
            <div class="col-md-2" align="right">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtName" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="lblMedalType" runat="server" Text="Name" Font-Bold="true"></asp:Label>
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtName" runat="server" class="form-control text-uppercase" placeholder="" ></asp:TextBox>
            </div>
            <div class="col-md-5" align="right">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="ddlStream" Display="Dynamic" ErrorMessage="*" 
                    ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                <asp:Label ID="lblStreamName" runat="server" Text="Select Stream To Enroll" Font-Bold="true"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList ID="ddlStream" runat="server" class="form-control text-uppercase"  
                      >
                </asp:DropDownList>
            </div>
            
        </div>
         <div class="col-md-16" style="margin-top: 20px">
            <div class="col-md-2" align="right">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtMobile" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="Label1" runat="server" Text="Mobile No" Font-Bold="true"></asp:Label>
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtMobile" runat="server" class="form-control text-uppercase" placeholder="" ></asp:TextBox>
            </div>
            <div class="col-md-5" align="right">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="Label2" runat="server" Text="Email" Font-Bold="true"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:TextBox ID="txtEmail" runat="server" class="form-control text-uppercase" placeholder="" ></asp:TextBox>
            </div>
            
        </div>
          <div class="col-md-16" style="margin-top: 20px">
            <div class="col-md-2" align="right">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtAddr" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="Label3" runat="server" Text="Address" Font-Bold="true"></asp:Label>
            </div>
            <div class="col-md-4">
                <asp:TextBox ID="txtAddr" runat="server" class="form-control text-uppercase" placeholder=""></asp:TextBox>
            </div>
            <div class="col-md-5" align="right">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtEducation" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
               
                <asp:Label ID="Label4" runat="server" Text="Eduacation" Font-Bold="true"></asp:Label>
            </div>
            <div class="col-md-3">
             <asp:TextBox ID="txtEducation" runat="server" class="form-control text-uppercase" placeholder="" ></asp:TextBox>
            </div>
            
        </div>
         
        <div class="col-md-16" style="margin-top: 20px">
            <div class="col-md-14" align="right">
        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" 
                                Font-Size="12px" Height="30px" Width="100px" 
                    onclick="btnCloseSelectDept_Click"/>
                                </div>
                                </div>

   </div>
</asp:Content>
