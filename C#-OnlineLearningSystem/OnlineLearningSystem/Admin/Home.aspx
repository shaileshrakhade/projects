<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="OnlineLearningSystem.Adm.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dbContainer">
        <div class="col-md-16">
            <div class="col-md-8" align="left">
                <h1 >
                    <asp:Label ID="lblHeding" runat="server" Text="Admin" Font-Bold="true" Font-Names="Arial Unicode MS"></asp:Label>
                </h1>
            </div>
            <div class="col-md-6" align="right">
                <asp:Label ID="Label2" runat="server" Text="Date & Time :" Font-Bold="true" Font-Names="Arial Unicode MS"></asp:Label>
            </div>
            <div class="col-md-2" align="left">
                <asp:Label ID="lblTime" runat="server" Text="" Font-Bold="true" Font-Names="Arial Unicode MS"></asp:Label>
            </div>
            
            
        </div>
        
       <div class="col-md-16">
        <hr />

        </div>
      
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
            <div class="col-md-2" align="right">
                <asp:Label ID="Label1" runat="server" Text="Total Student :- " Font-Bold="true"></asp:Label>
            </div>
            <div class="col-md-2" align="left">
               <asp:Label ID="LblCountStudent" runat="server" Text="Select Class" Font-Bold="true"></asp:Label>
            </div>
           
        </div>
         <div class="col-md-16" style="margin-top: 10px">
       
        </div>
        <div class="col-md-16" style="width: 100%; height: 90%; overflow: scroll">
            <asp:GridView ID="GVStudentList" runat="server" class="col-md-16" 
                AutoGenerateColumns="False" onrowcommand="GVPVideoLecture_RowCommand"
                >
                <Columns>
                    <asp:TemplateField HeaderText="Sr. No.">
                        <ItemTemplate>
                            <asp:Label ID="lblSrNo" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Student Name">
                        <ItemTemplate>
                            <asp:Label ID="lblField" runat="server" Text='<% #Bind("Name")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Class Name">
                        <ItemTemplate>
                            <asp:Label ID="lblMedalPrize" runat="server" Text='<% #Bind("ClassName")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnView" runat="server" Text="Delete" CommandName="DeleteStudent"
                                CssClass="btn btn-primary" Height="99%" Width="99%" CommandArgument='<% #Bind("authenticationId")%>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                  
                    
                </Columns>
            </asp:GridView>
        </div>
        <hr />
        <div class="row" style="padding: 1px">
            
        </div>
    </div>
</asp:Content>
