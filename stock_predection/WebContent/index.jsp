<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="stockBeans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-widh,intial-scale=1.0">
<title>Stock Prediction!</title>
<link href="css/background.css" rel="stylesheet" type="text/css"/>
<link href="css/font_size.css" rel="stylesheet" type="text/css"/>
<link href="css/index.css" rel="stylesheet" type="text/css"/>
<link href="css/screen.css" rel="stylesheet" type="text/css"/>
</head>
<body>

</head>
<body>
<jsp:include page="html/header.html"></jsp:include>

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
<a href="jsp/forgate.jsp">Forgot Password</a> | 
<a href="jsp/newacc.jsp">New Account</a>


	</div>


<jsp:include page="html/fotter.html"></jsp:include>

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
		pst=con.prepareStatement("select * from user where Id=? and Pass=?");
		
		pst.setString(1,userid );
		pst.setString(2, fpassword);
		
		rs=pst.executeQuery();
		
		if(rs.next())
		{
			
			session.setAttribute("suid", userid);
			session.setAttribute("sname", rs.getString("name"));
			String typ=rs.getString("type");
			if(typ.equals("admin"))
			{
				
				response.sendRedirect("jsp/admin.jsp");
			}
			else
			{
				response.sendRedirect("jsp/stock_view.jsp");
			}
			
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
	
</body>
</html>