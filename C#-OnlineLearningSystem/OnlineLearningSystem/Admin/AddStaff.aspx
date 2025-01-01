<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true"
    CodeBehind="AddStaff.aspx.cs" Inherits="OnlineLearningSystem.Adm.AddStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dbContainer">
        <div class="col-md-16">
            <div class="col-md-8" align="left">
                <h1>
                    <asp:Label ID="lblHeding" runat="server" Text="Staff Management " Font-Bold="true"
                        Font-Names="Arial Unicode MS"></asp:Label>
                </h1>
            </div>
        </div>
        <div class="col-md-16">
            <hr />
        </div>
        <div class="col-md-16" style="margin-top: 10px">
            <div class="col-md-8" >
            <div class="col-md-16" style="margin-top: 10px">
                <div class="col-md-2" align="right">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtUid"
                            Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="RegisterUserValidationGroup"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label5" runat="server" Text="Name" Font-Bold="true"></asp:Label>
                    </div>
                    <div class="col-md-10">
                        <asp:TextBox ID="txtUid" runat="server" class="form-control" placeholder=""></asp:TextBox>
                    </div>
                     <div class="col-md-4">
                    <asp:Literal ID="ErrorMessage"  runat="server"></asp:Literal>
                    </div>
                </div>
                
                <div class="col-md-16" style="margin-top: 10px">
                    <div class="col-md-15" align="right">
                        <asp:Button ID="btnCheck" runat="server" class="btn btn-primary" Text="Check"  Font-Size="12px"
                            Height="30px" Width="100px" onclick="btnCheck_Click" 
                            ValidationGroup="RegisterUserValidationGroup"  />
                    </div>
                    </div>
                    <div class="col-md-16" style="margin-top: 10px">
                    <hr />
                    </div>

                    <%--===========================================================================--%>
                    <%--===========================================================================--%>
                <div class="col-md-16" style="margin-top: 20px">
                    <div class="col-md-2" align="right">
                        
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                            CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required."
                            ValidationGroup="info">*</asp:RequiredFieldValidator>
                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                    </div>
                    <div class="col-md-5">
                        <asp:TextBox ID="Password" runat="server" class="form-control "  TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="col-md-3" align="right">
                        
                        <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" CssClass="failureNotification"
                            Display="Dynamic" ErrorMessage="Confirm Password is required." ID="ConfirmPasswordRequired"
                            runat="server" ToolTip="Confirm Password is required." 
                            ValidationGroup="info">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password"
                            ControlToValidate="ConfirmPassword" CssClass="failureNotification" Display="Dynamic"
                            ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="info">*</asp:CompareValidator>
                            <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                    </div>
                    <div class="col-md-5">
                        <asp:TextBox ID="ConfirmPassword" class="form-control " runat="server" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-16" style="margin-top: 20px">
                    <div class="col-md-2" align="right">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                            Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="info"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblMedalType" runat="server" Text="Name" Font-Bold="true"></asp:Label>
                    </div>
                    <div class="col-md-5">
                        <asp:TextBox ID="txtName" runat="server" class="form-control text-uppercase" placeholder=""></asp:TextBox>
                    </div>
                    <div class="col-md-3" align="right">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlStream"
                            Display="Dynamic" ErrorMessage="*" ValidationGroup="info" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblStreamName" runat="server" Text="Select Stream To Enroll" Font-Bold="true"></asp:Label>
                    </div>
                    <div class="col-md-5">
                        <asp:DropDownList ID="ddlStream" runat="server" class="form-control text-uppercase">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-md-16" style="margin-top: 20px">
                    <div class="col-md-2" align="right">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMobile"
                            Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="info"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label1" runat="server" Text="Mobile No" Font-Bold="true"></asp:Label>
                    </div>
                    <div class="col-md-5">
                        <asp:TextBox ID="txtMobile" runat="server" class="form-control text-uppercase" placeholder=""></asp:TextBox>
                    </div>
                    <div class="col-md-3" align="right">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail"
                            Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="info"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label2" runat="server" Text="Email" Font-Bold="true"></asp:Label>
                    </div>
                    <div class="col-md-5">
                        <asp:TextBox ID="txtEmail" runat="server" class="form-control text-uppercase" placeholder=""></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-16" style="margin-top: 20px">
                    <div class="col-md-2" align="right">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAddr"
                            Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="info"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label3" runat="server" Text="Address" Font-Bold="true"></asp:Label>
                    </div>
                    <div class="col-md-5">
                        <asp:TextBox ID="txtAddr" runat="server" class="form-control " placeholder=""></asp:TextBox>
                    </div>
                    <div class="col-md-3" align="right">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEducation"
                            Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="info"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label4" runat="server" Text="Staff Eduacation" Font-Bold="true"></asp:Label>
                    </div>
                    <div class="col-md-5">
                        <asp:TextBox ID="txtEducation" runat="server" class="form-control text-uppercase"
                            placeholder=""></asp:TextBox>
                    </div>
                </div>
                
                <div class="col-md-16" style="margin-top: 20px">
                    <div class="col-md-15" align="right">
                        <asp:Button ID="btnSave" runat="server" class="btn btn-primary" Text="Save"  Font-Size="12px"
                            Height="30px" Width="100px" onclick="btnSave_Click" Enabled="False" 
                            ValidationGroup="info" />
                    </div>
                </div>
            </div>
            <div class="col-md-8" style="border-left-color: Black">
            <div class="col-md-16" style="margin-top: 10px">
            
            <div class="col-md-2" align="left">
                <asp:Label ID="lblClass" runat="server" Text="Select Class" Font-Bold="true"></asp:Label>
            </div>
            <div class="col-md-4">
                <asp:DropDownList ID="ddlClass" runat="server" 
                    class="form-control text-uppercase" AutoPostBack="true" onselectedindexchanged="ddlClass_SelectedIndexChanged" 
                     >
                </asp:DropDownList>
            </div>
            <div class="col-md-16" style="margin-top: 10px"></div>
            </div>
                <div class="col-md-16" style="width: 100%; height: 90%; overflow: scroll">
                    <asp:GridView ID="GvStaffProfile" runat="server" class="col-md-16" 
                        AutoGenerateColumns="False" onrowcommand="GVPVideoLecture_RowCommand">
                        <Columns>
                            <asp:TemplateField HeaderText="Sr. No.">
                                <ItemTemplate>
                                    <asp:Label ID="lblSrNo" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Staff Name">
                                <ItemTemplate>
                                    <asp:Label ID="lblField" runat="server" Text='<%  #Bind("Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Stream Name">
                                <ItemTemplate>
                                    <asp:Label ID="lblMedalPrize" runat="server" Text='<% #Bind("ClassName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="btnView" runat="server" Text="Delete" CommandName="DeleteStaff"
                                        CssClass="btn btn-primary" Height="99%" Width="99%" CommandArgument='<% #Bind("authenticationId")%>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
