<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 
 
 <title>Colorly!</title>
 
<style type="text/css">
#login_fill
{
	margin-left:40%;
	text-align:center;
	margin-top:1%;
	background-color:rgba(0,0,0,0.6);
	height:300px;
	width:30%;
	color:white;
	padding:5px;
	border-radius:10px;
	
}
#login_fill input
{
	margin-top:1%;
	width:80%;
	height:30px;
	
}
#login_fill a
{
	margin-top:10px;
	text-decoration: none;
	
	color:white;
}

</style>
<link rel="stylesheet" href="css/basic.css" type="text/css">
</head>
<body>

<div class="header">
<div id="n-logo" style="margin-left:10px; margin-top:0px; ">

				<h1 style="color: white; font-family: cursive; font-size: 25px">Colorfly <span style="color: orange">!</span></h1>
				
			</div>
			<div id="name">
			
			<h1>Admin Login</h1>
			</div>


</div>
<div id="marquetext">
<marquee>Colorly! Authentication of Admin</marquee>

</div>

<div class="mainbody">
<a href="index.jsp" title="Home" >
<h1> Admin Login</h1>
</a>

<div class="maincontainn">

<div id="login_fill">

<h1>Login</h1>
<form action="admin" method="post" >

<label style="font-size:20px"> User Id</label><br>

<input type="text" name="uid" placeholder="UID" required><br>

<label style="font-size:20px"> Password</label><br>

<input type="text" name="pass" placeholder="Password" required ><br>
<br>
<input type="submit" value="Submit">
</form>
<hr>
<a href="index.jsp" style="color:black; font-size:20px;">Home</a><br>


</div>

</div>

</div>

<div class="footer">
<h3>Site Devloped By Kanchan Bole</h3>
<h5>All &copy  Right Of SR Tech</h5>
</div>

</body>
</html>