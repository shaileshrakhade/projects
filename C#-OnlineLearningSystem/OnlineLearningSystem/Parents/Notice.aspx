<%@ Page Title="" Language="C#" MasterPageFile="~/Parent.Master" AutoEventWireup="true" CodeBehind="Notice.aspx.cs" Inherits="OnlineLearningSystem.Parents.Notice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="dbContainer">
        <h1 style="text-align: center">
            <asp:Label ID="lblHeding" runat="server" Text="Notice Board" Font-Bold="true" Font-Names="Arial Unicode MS"></asp:Label>
        </h1>
        <div class="col-md-16" style="margin-top: 10px">
            <hr />
        </div>

            <div class="col-md-16">
                    <div class="col-md-16" style="margin-top: 10px">
                    </div>
                    <div class="col-md-16" style="width: 100%; height: 90%; overflow: scroll">
                        <asp:GridView ID="GvNotice" runat="server" class="col-md-16" 
                            AutoGenerateColumns="False" >
                            <Columns>
                                <asp:TemplateField HeaderText="Sr. No." ControlStyle-Width="10%">
                                    <ItemTemplate>
                                        <asp:Label ID="lblSrNo" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Staff Name">
                                    <ItemTemplate>
                                        <asp:Label ID="lblField" runat="server" Text='<%  #Bind("Name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Notice">
                                    <ItemTemplate>
                                        <asp:Label ID="lblMedalPrize" runat="server" Text='<% #Bind("NoticeText") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                               <%-- <asp:TemplateField HeaderText="Video Details">
                                    <ItemTemplate>
                                        <asp:Label ID="lblIsActive" runat="server" Text='<% #Bind("IsActive") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>--%>
                               <%-- <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button ID="btnView" runat="server" Text="Active" CommandName="VideoActive" CssClass="btn btn-primary"
                                            Height="99%" Width="99%" CommandArgument='<% #Bind("id")%>' />
                                    </ItemTemplate>
                                </asp:TemplateField>--%>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
                </div>
           
</asp:Content>
