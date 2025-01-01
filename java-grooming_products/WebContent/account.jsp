<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@page import="beans.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Male Grooming Product</title>
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
			
			<h1>Acoount Login</h1>
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

<div id="login_fill">
<form action="#" method="post" onsubmit="admin()" >
<h3>Login!</h3>
<label style="font-size:20px"> User Id</label><br>

<input type="text" name="uid" placeholder="" required><br>

<label style="font-size:20px"> Password</label><br>

<input type="password" name="psw" placeholder="" required><br>

<input type="submit" value="Submit">
</form>
<hr>
<a href="forgate.jsp">Forgot Password</a> | 
<a href="newacc.jsp">New Account</a>


	</div>

</div>

</div>

<div class="footer">
<h3>Site Devloped By Dhawal Nagrikar</h3>
<h5>All &copy  Right Of DK</h5>
</div>

</body>

<script type="text/javascript">
	function admin()
	{
<%

	String userid,fpassword;
	userid= request.getParameter("uid");
	fpassword= request.getParameter("psw");
	

	
	
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	
	try
	{
		
		DbCon conn=new DbCon();
		con=conn.getDbcon();
		pst=con.prepareStatement("select * from client where id=? and pass=?");
		
		pst.setString(1,userid );
		pst.setString(2, fpassword);
		
		rs=pst.executeQuery();
		
		if(rs.next())
		{
			
			session.setAttribute("suid", userid);
			session.setAttribute("sname", rs.getString("name"));
			 
			 
				
				response.sendRedirect("profile.jsp");
			 
			con.close();
		}
		else
		{
			%>
					<%
			
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
	}
	</script>
	
</html>