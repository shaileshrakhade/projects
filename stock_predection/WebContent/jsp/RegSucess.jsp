<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="stockBeans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="../css/background.css" rel="stylesheet" type="text/css"/>
<link href="../css/font_size.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<jsp:include page="../html/header.html"></jsp:include>

<%
	Connection con;
	Statement pst;
	ResultSet rs;
	
	try
	{
		
		
		
				
				
				DbCon conn=new DbCon();
				con=conn.getDbcon();
				pst=con.createStatement();
				rs=pst.executeQuery("select * from user");
				
				if(rs.last())
				{
					%>
					 <h2>Your user Id </h2>
				<h3><%=rs.getString("id")%></h3>
				<a href="../index.jsp" style="font-size:30px;color:black;">Login</a>	

<%
				}
				con.close();
				}
				catch(Exception e)
				{
					out.println(e);
				}
%>
</body>
</html>