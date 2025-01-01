<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="Comunication.aspx.cs" Inherits="OnlineLearningSystem.Staf.Comunication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


 <div class="dbContainer">
        <h1 style="text-align: center">
            <asp:Label ID="lblHeding" runat="server" Text="Comunication To the Student" 
                Font-Bold="True" Font-Names="Arial Unicode MS"></asp:Label>
        </h1>
        <div class="col-md-16" style="margin-top: 10px">
            <hr />
        </div>

        <div class="col-md-16" style="margin-top: 10px">
            <div class="col-md-8">
             <asp:Label ID="lblReciverName" runat="server"  Text="Student Name" Font-Bold="true"></asp:Label>
             <asp:Label ID="lblStudentId" runat="server"  Text="Student Name" Visible="false" Font-Bold="true"></asp:Label>
                <div class="col-md-16" style="margin-top: 10px">
                    
                    <div class="col-md-3" align="left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ErrorMessage="*" ForeColor="Red" ControlToValidate="txtmsg" 
                            Display="Dynamic" ValidationGroup="frm"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label3" runat="server" Text="Type Message" Font-Bold="true"></asp:Label>
                    </div>
                    <div class="col-md-10">
                        <asp:TextBox ID="txtmsg" runat="server" class="form-control" TextMode="MultiLine" placeholder=""></asp:TextBox>
                    </div>
                    
                </div>

                <div class="col-md-16" style="margin-top: 10px">
                    <div class="col-md-13" align="right">
                        <asp:Button ID="btnSave" runat="server" class="btn btn-primary" Text="Save" Font-Size="12px"
                            Height="30px" Width="100px" ValidationGroup="frm" onclick="btnSave_Click" Enabled="False" 
                             />
                    </div>
                </div>

            </div>
            <div class="col-md-8">
            <div class="col-md-16">
                    <div class="col-md-16" style="margin-top: 10px">
                    </div>
                    <div class="col-md-16" style="width: 100%; height: 90%; overflow: scroll">
                        <asp:GridView ID="GvMsg" runat="server" class="col-md-16" 
                            AutoGenerateColumns="False" onrowcommand="GvMsg_RowCommand" >
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
