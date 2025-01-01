<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adaptive Learning</title>
 
 
<link rel="stylesheet" href="../css/basic.css" type="text/css">
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
</head>
<body>

<div class="header">
<div id="n-logo" style="margin-left:10px; margin-top:0px; ">

				<div class="n-logo" align="center" style=" margin-bottom: 20px; ">
				<h1 style="color: white; font-family: cursive; font-size: 35px">Adaptive<span style="color: orange">{Learning}</span></h1>
			</div>
			</div>
			


</div>
<div id="marquetext">
<marquee>Adaptive Learning</marquee>

</div>

<div class="mainbody">


<div class="maincontainn">
 <div id="login_fill">
<h2>New User Registration Form</h2>
<hr>
<form name="frm" method="post" action="../Register">

<table>
<tr>
<td>Name :- 
<td><input type="text" name="name" minlength="3" maxlength="20" required="required">
</tr>

<tr>
<td>User Name :-
<td><input type="text" name="mob" required="required">
</tr>

<tr>
<td>Choice Password :-
<td><input type="password" name="psw" minlength="5" maxlength="20" required="required">
</tr>
<tr>
<td></td>
<td>
<input type="submit" value="Register"/>
</td>
</tr>
</table>

</form>
<hr>
	<a href="../index.jsp" style="color:black; font-size:30px;">Home</a>
 
</div>
</div>
</div>
<div class="footer">
<h3>Site Devloped By Bhushan Warfade</h3>
<h5>All &copy  Right Of SR Tech.</h5>
</div>
 
</body>
</html>