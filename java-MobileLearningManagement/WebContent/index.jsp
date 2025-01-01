<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="stockBeans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-widh,intial-scale=1.0">
<title>MLM</title>

<link href="bower_components/LoginPage/Site.css" rel="stylesheet" type="text/css" />
    <link href="bower_components/LoginPage/bootstrap.min.css" rel="stylesheet" type="text/css" />
 <link href="bower_components/LoginPage/styles.css" rel="stylesheet" type="text/css" />
    <link href="css/background.css" rel="stylesheet" type="text/css"/>
<link href="css/font_size.css" rel="stylesheet" type="text/css"/>
<link href="css/index.css" rel="stylesheet" type="text/css"/>
<link href="css/screen.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
input {
	color: black;
}
</style>
</head>
<body>

</head>
<body>
<jsp:include page="html/header.html"></jsp:include>

<div id="login_fill">
<form action="login" method="post" >
<h3>Login!</h3>
<label style="font-size:20px"> Email Id</label><br>

<input type="text" name="uid" placeholder="" required><br>

<label style="font-size:20px"> Password</label><br>

<input type="password" name="psw" placeholder="" required><br>


<input type="submit" value="Submit">
</form>
<hr>
<a href="jsp/forgate.jsp">Forgot Password</a> | 
<a href="jsp/newacc.jsp">New Account</a>


	</div>


<jsp:include page="html/fotter.html"></jsp:include>

	
	
</body>
</html>