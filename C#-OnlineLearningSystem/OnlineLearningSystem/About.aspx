<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="OnlineLearningSystem.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="dbContainer">
        <h1 style="text-align: center">
            <asp:Label ID="lblHeding" runat="server" Text="About" Font-Bold="true" Font-Names="Arial Unicode MS"></asp:Label>
        </h1>
        <div class="col-md-16" style="margin-top: 10px">
            <hr />
        </div>
        <div class="col-md-16" style="margin-top: 10px">
            <img  src="Image/About.jpg" height="400px" width="100%"/>
        </div>
        <div class="col-md-16" style="margin-top: 10px">
            <p>
                A learning system based on formalised teaching but with the help of electronic resources is known as E-learning. While teaching can be based in or out of the classrooms, the use of computers and the Internet forms the major component of E-learning.
            </p>
            <p>
            online learning is a part of many institutions' course offerings around the world. From certificates, PhDs, impactful online language learning and everything in between, learning online has never been so easy!

Offered by some of the world's top-ranked institutions, online learning offers you all the perks of attending your dream university, with the added convenience of a learning experience tailored to your schedule.  With courses available in almost every subject, and flexible timetables to suit almost every lifestyle, students are increasingly turning to online learning as a viable alternative to on-campus study. It could allow you to study abroad remotely, at a university not in your home country!
            </p>
        </div>
    </div>
</asp:Content>
