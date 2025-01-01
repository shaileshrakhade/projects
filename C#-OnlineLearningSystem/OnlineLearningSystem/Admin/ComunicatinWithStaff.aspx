<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true"
    CodeBehind="ComunicatinWithStaff.aspx.cs" Inherits="OnlineLearningSystem.Adm.ComunicatinWithStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dbContainer">
        <div class="col-md-16">
            <div class="col-md-8" align="left">
                <h1>
                    <asp:Label ID="lblHeding" runat="server" Text="Staff Communication " Font-Bold="true"
                        Font-Names="Arial Unicode MS"></asp:Label>
                </h1>
            </div>
        </div>
        <div class="col-md-16">
            <hr />
        </div>

        <div class="col-md-16" style="margin-top: 10px">
            
            <div class="col-md-2" align="left">
                <asp:Label ID="lblClass" runat="server" Text="Select Staff" Font-Bold="true"></asp:Label>
            </div>
            <div class="col-md-4">
                <asp:DropDownList ID="ddlStaff" runat="server" 
                    class="form-control text-uppercase" AutoPostBack="true" onselectedindexchanged="ddlClass_SelectedIndexChanged" 
                     >
                </asp:DropDownList>
            </div>
            <div class="col-md-16" style="margin-top: 10px"></div>
            </div>
                <div class="col-md-16" style="width: 100%; height: 90%; overflow: scroll">
                    <asp:GridView ID="GvMessage" runat="server" class="col-md-16"  RowStyle-Height="30px"
                        AutoGenerateColumns="False" >
                        <Columns>
                            <asp:TemplateField HeaderText="Sr. No." HeaderStyle-Width="10%" >
                                <ItemTemplate >
                                    <asp:Label ID="lblSrNo" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Staff Name" HeaderStyle-Width="20%" >
                                <ItemTemplate>
                                    <asp:Label ID="lblField" runat="server" Text='<%  #Bind("Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Message" HeaderStyle-Width="70%" >
                                <ItemTemplate>
                                    <asp:Label ID="lblMedalPrize" runat="server" Text='<% #Bind("MessageText") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                           <%-- 
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="btnView" runat="server" Text="Delete" CommandName="DeleteStaff"
                                        CssClass="btn btn-primary" Height="99%" Width="99%" CommandArgument='<% #Bind("authenticationId")%>' />
                                </ItemTemplate>
                            </asp:TemplateField>--%>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
    
</asp:Content>
