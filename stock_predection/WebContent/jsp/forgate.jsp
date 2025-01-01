<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="stockBeans.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stock Prediction!</title>
<link href="../css/font_size.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<jsp:include page="../html/header.html"></jsp:include>
	
<h1>Password Forgot</h1>
<form action="#" method="post" >

<label style="font-size:20px"> User Id</label><br>

<input type="text" name="uid" placeholder="" required><br>

<label style="font-size:20px"> Name</label><br>

<input type="text" name="nm" placeholder="" required><br>
<br>
<input type="submit" value="Submit">
</form>

<%

	String userid,fpassword;
	userid= request.getParameter("uid");
	fpassword= request.getParameter("nm");
	

	
	
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	
	try
	{
		
		DbCon conn=new DbCon();
		con=conn.getDbcon();pst=con.prepareStatement("select * from user where Id=? and name=?");
		
		pst.setString(1,userid );
		pst.setString(2, fpassword);
		
		rs=pst.executeQuery();
		
		if(rs.next())
		{
		
			
			String pass=rs.getString("pass");
			%>
			<h3>Your Password Is :</h3>
			<%
			out.println(pass);
			
			con.close();
		}
		else
		{
			
		}	
		%>
		<hr>
		
	<%
	
	}
	catch(Exception e)
	{
		out.println(e);
		
	}
	
	%>
	<a href="../index.jsp" style="color:black; font-size:30px;">Home</a>
</body>
</html>