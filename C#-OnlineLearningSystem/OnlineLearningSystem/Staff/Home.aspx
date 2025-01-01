<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="OnlineLearningSystem.Staf.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dbContainer">
        <h1 style="text-align: center">
            <asp:Label ID="lblHeding" runat="server" Text="Learning Material" Font-Bold="true" Font-Names="Arial Unicode MS"></asp:Label>
        </h1>
        <div class="col-md-16" style="margin-top: 10px">
            <hr />
        </div>
        
        <div class="col-md-16" style="margin-top: 10px">
            <div class="col-md-8">
                <div class="col-md-16" style="margin-top: 10px">
                    <div class="col-md-3" align="left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="*" ForeColor="Red" ControlToValidate="lodeFile" 
                            Display="Dynamic" ValidationGroup="frm"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label1" runat="server" Text="Select Video" Font-Bold="true"></asp:Label>
                    </div>
                    <div class="col-md-10">
                        <asp:FileUpload runat="server" ID="lodeFile" CssClass="form-control" />
                    </div>
                    </div>
                    <div class="col-md-16" style="margin-top: 10px">
                        <hr />
                    </div>
                    <div class="col-md-16" style="margin-top: 10px">
                    
                    <div class="col-md-3" align="left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="*" ForeColor="Red" ControlToValidate="ddlClass" 
                            Display="Dynamic" InitialValue="0" ValidationGroup="frm"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblClass" runat="server" Text="Select Stream" Font-Bold="true"></asp:Label>
                    </div>
                    <div class="col-md-10">
                        <asp:DropDownList ID="ddlClass" runat="server" class="form-control text-uppercase"
                            >
                        </asp:DropDownList>
                    </div>
                    
                </div>
                <div class="col-md-16" style="margin-top: 10px">
                    
                    <div class="col-md-3" align="left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ErrorMessage="*" ForeColor="Red" ControlToValidate="txtVideoName" 
                            Display="Dynamic" ValidationGroup="frm"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label2" runat="server" Text="Video Name" Font-Bold="true"></asp:Label>
                    </div>
                    <div class="col-md-10">
                        <asp:TextBox ID="txtVideoName" runat="server" class="form-control" placeholder=""></asp:TextBox>
                    </div>
                    
                </div>
                <div class="col-md-16" style="margin-top: 10px">
                    
                    <div class="col-md-3" align="left">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ErrorMessage="*" ForeColor="Red" ControlToValidate="txtVideoInfo" 
                            Display="Dynamic" ValidationGroup="frm"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label3" runat="server" Text="Video Information" Font-Bold="true"></asp:Label>
                    </div>
                    <div class="col-md-10">
                        <asp:TextBox ID="txtVideoInfo" runat="server" class="form-control" TextMode="MultiLine" placeholder=""></asp:TextBox>
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
            <%------------------------------------------------------------------------%>
            <div class="col-md-8">
                <div class="col-md-16">
                    <div class="col-md-16" style="margin-top: 10px">
                    </div>
                    <div class="col-md-16" style="width: 100%; height: 90%; overflow: scroll">
                        <asp:GridView ID="GvVideo" runat="server" class="col-md-16" 
                            AutoGenerateColumns="False" onrowcommand="GvVideo_RowCommand">
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
                                <asp:TemplateField HeaderText="Video Details" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="lblIsActive" runat="server" Text='<% #Bind("IsActive") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button ID="btnView" runat="server" Text="Active" CommandName="VideoActive" CssClass="btn btn-primary"
                                            Height="99%" Width="99%" CommandArgument='<% #Bind("id")%>' />
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
