<%@ Page Title="" Language="C#" MasterPageFile="~/Parent.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OnlineLearningSystem.Parents.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="dbContainer">
        <h1 style="text-align: center">
            <asp:Label ID="lblHeding" runat="server" Text="Comunication To the Staff" Font-Bold="true"
                Font-Names="Arial Unicode MS"></asp:Label>
        </h1>
        <div class="col-md-16" style="margin-top: 10px">
            <hr />
        </div>
        <div class="col-md-16" style="margin-top: 10px">
            <div class="col-md-8">
                <div class="col-md-16" style="margin-top: 20px">
                    <div class="col-md-4" align="right">
                        <asp:Label ID="lblStreamName" runat="server" Text="Select Staff To Message" Font-Bold="true"></asp:Label>
                    </div>
                    <div class="col-md-5">
                        <asp:DropDownList ID="ddlStaff" runat="server" 
                            class="form-control text-uppercase" onselectedindexchanged="ddlStaff_SelectedIndexChanged"
                            >
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-1" align="right">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlStaff"
                            Display="Dynamic" ErrorMessage="Required" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <hr />
                <div class="col-md-16" style="margin-top: 20px">
                    <div class="col-md-1" align="right">
                    </div>
                    <div class="col-md-15" align="left">
                        <asp:Label ID="lblTeacherName" runat="server" Text="You write Message Here" Font-Bold="true"></asp:Label>
                    </div>
                </div>
                <div class="col-md-16" style="margin-top: 20px">
                    <div class="col-md-1" align="right">
                    </div>
                    <div class="col-md-14">
                        <asp:TextBox ID="txtMsg" runat="server" class="form-control text-uppercase" Height="200px"
                            Width="100%" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="col-md-1" align="right">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMsg"
                            Display="Dynamic" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-md-16" style="margin-top: 20px">
                    <div class="col-md-15" align="right">
                        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" Font-Size="12px"
                            Height="30px" Width="100px" onclick="btnSave_Click" />
                    </div>
                </div>
            </div>
            <%-----------------------------------------------%>
            <div class="col-md-8">
            <div class="col-md-16">
                    <div class="col-md-16" style="margin-top: 10px">
                    </div>
                    <div class="col-md-16" style="width: 100%; height: 90%; overflow: scroll">
                        <asp:GridView ID="GvMsg" runat="server" class="col-md-16" 
                            AutoGenerateColumns="False"  >
                            <Columns>
                                <asp:TemplateField HeaderText="Sr. No.">
                                    <ItemTemplate>
                                        <asp:Label ID="lblSrNo" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Student Name">
                                    <ItemTemplate>
                                        <asp:Label ID="lblField" runat="server" Text='<%  #Bind("Name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Message">
                                    <ItemTemplate>
                                        <asp:Label ID="lblMedalPrize" runat="server" Text='<% #Bind("MessageText") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                               <%-- <asp:TemplateField HeaderText="Video Details">
                                    <ItemTemplate>
                                        <asp:Label ID="lblIsActive" runat="server" Text='<% #Bind("IsActive") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>--%>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button ID="btnView" runat="server" Text="Message" CommandName="Msgsend" CssClass="btn btn-primary"
                                            Height="99%" Width="99%" CommandArgument='<% #Bind("StudentId")%>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
                </div>
        </div>
    </div>
</asp:Content>
