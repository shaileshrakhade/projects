<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stock Prediction</title>
<link href="../css/background.css" rel="stylesheet" type="text/css"/>
<link href="../css/font_size.css" rel="stylesheet" type="text/css"/>
<link href="css/index.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<jsp:include page="../html/header.html"></jsp:include>
<h2>New User Registration Form</h2>
<hr>
<form name="frm" method="post" action="../Register">

<table>
<tr>
<td>Name :- 
<td><input type="text" name="name">
</tr>

<tr>
<td>Choice Password :-
<td><input type="password" name="psw">
</tr>

<tr>
<td>
<input type="submit" value="Register"/>
</td>
</tr>
</table>

</form>
<hr>
	<a href="../index.jsp" style="color:black; font-size:30px;">Home</a>
<jsp:include page="../html/fotter.html"></jsp:include>
</body>
</html>