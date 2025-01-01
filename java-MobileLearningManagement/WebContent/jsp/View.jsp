<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="stockBeans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MLM</title>
<link href="../css/background.css" rel="stylesheet" type="text/css"/>
<link href="../css/font_size.css" rel="stylesheet" type="text/css"/>
<style type="text/css">

#stock
{

margin-left:5%;

height:80%;
width:80%;
background-color:rgba(0,0,0,0.6);
}
#stock td
{
height:40px;
color:red;
font-size:20px;
text-align:center;
background-color:white;
}

</style>
</head>
<body>





<%
if(session.getAttribute("sid")!=null)

	
{
%>
	<jsp:include page="../html/header.html"></jsp:include>
	<jsp:include page="../html/logout.html"></jsp:include>
	<h1>Hello <%=session.getAttribute("sname") %></h1>
	<h5> Click Here To <a href="/MobileLearningManagement/jsp/StudentView.jsp">Back</a>.</h5>
	
<div id="stock">
<div class="col-md-16" style="width: 100%; height: 90%; overflow: scroll">

<div class="col-md-8">
<hr>
<%
	Connection con;
	Statement pst;
	ResultSet rs;
	String companyId,ComanyName;
	int id;
	id= Integer.parseInt(request.getParameter("id"));
	try
	{
		
		DbCon conn=new DbCon();
		con=conn.getDbcon();
		pst=con.createStatement();		
		
		rs=pst.executeQuery("select * from classcontent where IsDelete=0 and clsid="+id+"");
	
	while(rs.next())
		{
		String idd =rs.getString(1);
		%>
		
		<h1 style="font-size: 30px; color:white;"><%=rs.getString(3) %></h1>
		<h4 style="color: aqua;" >Post :- <p> <%=rs.getString(4) %>	</p></h4>
		<%
		if(rs.getString(5).equals(""))
		{
		
		}
		else
		{
			%>
			<a href="http://localhost:8080/MobileLearningManagement/files/<%=rs.getString(5) %>" style="text-decoration: none; color: white"><h5>Download Attachment</h5></a>
			<hr>
			<%
		}
				

		}
			%>
			

</div>

</div>

</div>
	<%
	con.close();
		
	}
	
	catch(Exception e)
	{
		out.println(e);
		
	}

	

	


%>
<%
}
else
{	response.sendRedirect("/MobileLearningManagement/");

	
}
%>
</body>
</html>