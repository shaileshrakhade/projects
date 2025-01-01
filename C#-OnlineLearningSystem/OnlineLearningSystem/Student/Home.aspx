<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="OnlineLearningSystem.Std.Home" %>
    
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .dbContainer
        {
            height: 65px;
        }
        
    </style>
   <%-- <script type="text/javascript">
//        var a = document.getElementById("<%=YoutubbeVideo.ClientID%>");
//        a.src = "~/Videos/MySQL.mp4";
       // alert("hello");
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dbContainer">
        <h1 style="text-align: center">
            <asp:Label ID="lblHeding" runat="server" Text="Vartual Lecture" Font-Bold="true" Font-Names="Arial Unicode MS"></asp:Label>
        </h1>
       
        <div class="col-md-16" style="margin-top: 50px">
            <div class="col-md-8" align="left">
                <asp:TextBox ID="txtVideoName" runat="server" 
                    class="form-control text-uppercase" placeholder="Enter The Name Of Video" 
                    AutoPostBack="true" ontextchanged="txtVideoName_TextChanged"></asp:TextBox>
            </div>
            <div class="col-md-1" align="right">
               
            </div>
            <div class="col-md-2" align="right">
                <asp:Label ID="lblClass" runat="server" Text="Select Class :-" Font-Bold="true"></asp:Label>
            </div>
            <div class="col-md-3">
                <asp:DropDownList ID="ddlClass" runat="server" 
                    class="form-control text-uppercase" AutoPostBack="true" onselectedindexchanged="ddlClass_SelectedIndexChanged"
                     >
                </asp:DropDownList>
            </div>
           
        </div>
        
        <div class="row" style="padding: 1px">
        <hr />
        </div>
        <div class="col-md-16">
        <div class="col-md-16" style="width: 100%; height: 90%; overflow: scroll">
            <asp:GridView ID="GVPVideoLecture" runat="server" class="col-md-16" AutoGenerateColumns="False"
                OnRowCommand="GVPVideoLecture_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="Sr. No.">
                        <ItemTemplate>
                            <asp:Label ID="lblSrNo" runat="server" Text="<%# Container.DataItemIndex + 1 %>"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Field Name">
                        <ItemTemplate>
                            <asp:Label ID="lblField" runat="server" Text='<% #Bind("VideoName")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Teacher Name">
                        <ItemTemplate>
                            <asp:Label ID="lblMedalPrize" runat="server" Text='<% #Bind("Name")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                  
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnView" runat="server" Text="View" CommandName="Downlode"
                                CssClass="btn btn-primary" Height="99%" Width="99%" CommandArgument='<% #Bind("VideoUrl") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        </div>
    </div>
    
    <%--=========================================================================================================--%>
</asp:Content>
