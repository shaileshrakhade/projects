<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true"
    CodeBehind="Masters.aspx.cs" Inherits="OnlineLearningSystem.Adm.Masters" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dbContainer">
        <h1 style="text-align: left">
            <asp:Label ID="lblHeding" runat="server" Text="Online Learning System" Font-Bold="true"
                Font-Names="Arial Unicode MS"></asp:Label>
        </h1>
        <div class="col-md-16" style="margin-top: 10px">
            <hr />
        </div>
        <div class="col-md-16" style="margin-top: 10px">
            <div class="col-md-8">
                <div class="col-md-16" style="margin-top: 10px">
                    <div class="col-md-2" align="right">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtStream"
                            Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="Stream"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label5" runat="server" Text="Stream" Font-Bold="true"></asp:Label>
                    </div>
                    <div class="col-md-10">
                        <asp:TextBox ID="txtStream" runat="server" class="form-control" placeholder=""></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-16" style="margin-top: 10px">
                    <div class="col-md-15" align="right">
                        <asp:Button ID="btnStream" runat="server" class="btn btn-primary" Text="Add" Font-Size="12px"
                            Height="30px" Width="100px" ValidationGroup="Stream" 
                            onclick="btnStream_Click" />
                    </div>
                </div>
                <div class="col-md-16" style="margin-top: 10px">
                    <hr />
                </div>
                <div class="col-md-16" style="margin-top: 10px">
                    <div class="col-md-2" align="right">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserType"
                            Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="usertype"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label1" runat="server" Text="User Type" Font-Bold="true"></asp:Label>
                    </div>
                    <div class="col-md-10">
                        <asp:TextBox ID="txtUserType" runat="server" class="form-control" placeholder=""></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-16" style="margin-top: 10px">
                    <div class="col-md-15" align="right">
                        <asp:Button ID="btnuserType" runat="server" class="btn btn-primary" Text="Add" Font-Size="12px"
                            Height="30px" Width="100px" ValidationGroup="usertype" 
                            onclick="btnuserType_Click" />
                    </div>
                </div>
                <div class="col-md-16" style="margin-top: 10px">
                    <hr />
                </div>
            </div>
            <%------------------------------------------------------------------------%>
            <div class="col-md-8">
                <div class="col-md-16" style="margin-top: 10px">
                    <div class="col-md-2" align="left">
                        <asp:Label ID="lblClass" runat="server" Text="Select Staff" Font-Bold="true"></asp:Label>
                    </div>
                    <div class="col-md-4">
                        <asp:DropDownList ID="ddlStaff" runat="server" class="form-control text-uppercase"
                            AutoPostBack="true" onselectedindexchanged="ddlStaff_SelectedIndexChanged">
                        </asp:DropDownList>
                        </div>
                        <div class="col-md-2">
                        </div>
                        <div class="col-md-2" align="left">
                            <asp:Label ID="Label2" runat="server" Text="Select Stream" Font-Bold="true"></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <asp:DropDownList ID="ddlStream" runat="server" class="form-control text-uppercase"
                                AutoPostBack="true" 
                                onselectedindexchanged="ddlStream_SelectedIndexChanged">
                            </asp:DropDownList>
                        </div>
                    
                    
                </div>
                
                <div class="col-md-16" style="margin-top: 10px">
                    </div>
                <div class="col-md-16" style="width: 100%; height: 90%; overflow: scroll">
                    <asp:GridView ID="GvVideo" runat="server" class="col-md-16" 
                        AutoGenerateColumns="False" onrowcommand="GvStaffProfile_RowCommand">
                        <Columns>
                            <asp:TemplateField HeaderText="Sr. No.">
                                <ItemTemplate>
                                    <asp:Label ID="lblSrNo" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Video Name">
                                <ItemTemplate>
                                    <asp:Label ID="lblField" runat="server" Text='<%  #Bind("VideoName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Video Details">
                                <ItemTemplate>
                                    <asp:Label ID="lblMedalPrize" runat="server" Text='<% #Bind("InfrormationOfVideo") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="btnView" runat="server" Text="Downlode" CommandName="Downlode"
                                        CssClass="btn btn-primary" Height="99%" Width="99%" CommandArgument='<% #Bind("VideoUrl")%>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
    
</asp:Content>
