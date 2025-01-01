<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="stockBeans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MLM</title>
<link href="../bower_components/LoginPage/Site.css" rel="stylesheet" type="text/css" />
<link href="../bower_components/LoginPage/bootstrap.min.css" rel="stylesheet" type="text/css" />
 <link href="../bower_components/LoginPage/styles.css" rel="stylesheet" type="text/css" />
 <link href="css/background.css" rel="stylesheet" type="text/css"/>
<link href="../css/background.css" rel="stylesheet" type="text/css"/>
<link href="../css/font_size.css" rel="stylesheet" type="text/css"/>

<style type="text/css">
input[type="submit"]
 {
	background-color: olive;
	color: white;
	border-radius: 20px;
	height: 50px;
	width: 100%;
	
}
input[type="submit"]:hover
{
background-color: orange;
	color: white;
}
input[type="number"]
 {
	background-color: white;
	color: black;
	border-radius: 10px;
	height: 50px;
	width: 100%;
}
</style>
</head>
<body>
<jsp:include page="../html/header.html"></jsp:include>
<%
if(session.getAttribute("sid")!=null)
{
	
%>
<%-- 
<%=session.getAttribute("sid")%>
<%=session.getAttribute("semail")%> --%>

<div id="logout" align="right" >
<a href="session.jsp" style="color: white;font-size: 20px; text-decoration: none;">Logout</a>
</div>
<div class="dbContainer" style="height: 700px ">
<h2>Hello <%=session.getAttribute("sname") %> </h2>
<form name="frm" method="post" action="../Enroll">
<div class="col-md-16">
<div class="col-md-8" style="padding: 5%;">
  <div class="col-md-16">
<div class="col-md-5" align="right">
<label>Enter Class Code To join Class :- </label>
<label id="msg" > </label>
</div>

<div class="col-md-4" align="left" >
<input type="number" name="clsid" required="required">
</div>
<div class="col-md-3" align="right">
<input type="submit" value="Enroll"/>
</div>
</div>
</div>
</div>
<div class="col-md-16">
<div class="col-md-8">
 <div class="col-md-16" style="width: 100%; height: 90%; overflow: scroll">
 <%
 	
	Connection con;
	Statement st;
	ResultSet rs;	
	try
	{		
		DbCon conn=new DbCon();
		con=conn.getDbcon();
		st=con.createStatement();
				
		rs=st.executeQuery("select * from register as r inner join classwithstudent as c on r.id=c.ClassId where c.studentid ="+ session.getAttribute("sid")+";");		
		while(rs.next())
		{
			String idd =rs.getString(1);
			%>
			
			<a href="View.jsp?id=<%=rs.getString(1) %>" onclick="myFunction()"><h1 style="font-size: 30px; color: olive;"><%=rs.getString(2) %></h1></a>
			<h4 >Email Id :-  <%=rs.getString(3) %>	</h4>
			
			<%}%>		


	<%
		
	con.close();
	}
	catch(Exception e)
	{
		out.println(e);
		
	}
	
	%>
	
 
 
 </div>
</div>
</div>
</form>
</div>


	 <%
}
else
{	response.sendRedirect("/MobileLearningManagement/");

	
}
%>
</body>
</html>