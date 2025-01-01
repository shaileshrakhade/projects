<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Male Grooming Product</title>
<style type="text/css">
#logout
{
margin-left:90%;
margin-top:-40px;


}
#logout h2
{
color:white;
}
#logout h2:hover
{
color:red;
}
</style>
<link rel="stylesheet" href="basic.css" type="text/css">
</head>
<body>

<div class="header">
<div id="n-logo" style="margin-left:10px; margin-top:0px; ">

				<h1 style="color: white; font-family: cursive; font-size: 25px">Male Grooming <span style="color: orange"> Product</span></h1>
				
			</div>
			<div id="name">
			
			<h1>Client Profile</h1>
			</div>
			
		<div id="logout">
			<a href="account.jsp"><h2>Logout</h2></a>
			
			</div>

</div>
<div id="marquetext">
<marquee>Created By:- Dhawal Nagarikar</marquee>

</div>

<div class="mainbody">
<a href="index.jsp" title="Home" >
<h1>Male Grooming Product</h1>
</a>
<div class="maincontainn">

<p>

 Id :- <%=session.getAttribute("suid")%><br>

Name :- <%=session.getAttribute("sname")%><br>
Mobile :- <%=session.getAttribute("smob")%>
 </p>
</div>

</div>

<div class="footer">
<h3>Site Devloped By Dhawal Nagrikar</h3>
<h5>All &copy  Right Of DK</h5>
</div>
 

</body>
</html>