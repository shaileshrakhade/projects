<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="Notice.aspx.cs" Inherits="OnlineLearningSystem.Staf.Notice" %>
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

        <div class="col-md-16" style="margin-top: 10px">
            <div class="col-md-8">
                <div class="col-md-16" style="margin-top: 10px">
                    
                    <div class="col-md-3" align="left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ErrorMessage="*" ForeColor="Red" ControlToValidate="txtNotice" 
                            Display="Dynamic" ValidationGroup="frm"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label3" runat="server" Text="Add Notice" Font-Bold="true"></asp:Label>
                    </div>
                    <div class="col-md-10">
                        <asp:TextBox ID="txtNotice" runat="server" class="form-control" TextMode="MultiLine" placeholder=""></asp:TextBox>
                    </div>
                    
                </div>

                <div class="col-md-16" style="margin-top: 10px">
                    <div class="col-md-13" align="right">
                        <asp:Button ID="btnSave" runat="server" class="btn btn-primary" Text="Save" Font-Size="12px"
                            Height="30px" Width="100px" ValidationGroup="frm" onclick="btnSave_Click" 
                             />
                    </div>
                </div>

            </div>
            <div class="col-md-8">
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
            </div>
        </div>
</asp:Content>
