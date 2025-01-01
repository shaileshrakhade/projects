<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="beans.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Male Grooming Product</title>
<link href="font_size.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="basic.css" type="text/css">
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

				<h1 style="color: white; font-family: cursive; font-size: 25px">Male Grooming <span style="color: orange"> Product</span></h1>
				
			</div>
			<div id="name">
			
			<h1>Forget Password</h1>
			</div>


</div>
<div id="marquetext">
<marquee>Created By:- Dhawal Nagarikar</marquee>

</div>

<div class="mainbody">
<a href="index.html" title="Home">
<h1>Male Grooming Product</h1>
</a>

<div class="maincontainn">

<div id="login_fill">

<h1>Password Forget</h1>
<form action="#" method="post" >

<label style="font-size:20px"> User Id</label><br>

<input type="text" name="uid" placeholder="UID" required><br>

<label style="font-size:20px"> Mobile</label><br>

<input type="text" name="mob" placeholder="Mob" maxlength="10" minlength="10" required><br>
<br>
<input type="submit" value="Submit">
</form>
<hr>
<a href="index.html" style="color:black; font-size:20px;">Home</a><br>
<a href="account.jsp" style="color:black; font-size:20px;">Client Login</a>

</div>

<%

	String userid,mobile;
	userid= request.getParameter("uid");
	mobile= request.getParameter("mob");
	

	
	
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	
	try
	{
		
		DbCon conn=new DbCon();
		con=conn.getDbcon();pst=con.prepareStatement("select * from client where id=? and mob=?");
		
		pst.setString(1,userid );
		pst.setString(2, mobile);
		
		rs=pst.executeQuery();
		
		if(rs.next())
		{
		
			
			String pass=rs.getString("pass");
			%>
			<hr><h5>Your Password Is :</h5><span style="color:red; font-size:30px;"><%=rs.getString("pass") %></span><hr>
			<%
			 
			
			con.close();
		}
		else
		{
			
		}	
		%>
		 
		
	<%
	
	}
	catch(Exception e)
	{
		out.println(e);
		
	}
	
	%>
		
	</div>
</div>
<div class="footer">
<h3>Site Devloped By Dhawal Nagrikar</h3>
<h5>All &copy  Right Of DK</h5>
</div>
	

</body>
</html>