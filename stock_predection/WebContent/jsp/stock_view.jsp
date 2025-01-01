<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="stockBeans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stock Prediction</title>
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
if(session.getAttribute("suid")!=null)

	
{
%>
	<jsp:include page="../html/header.html"></jsp:include>
	<jsp:include page="../html/logout.html"></jsp:include>
	<h1>Hello <%=session.getAttribute("sname") %></h1>
<div id="stock">
<table>
<tr>
<td style="width:60px;color:black;">Name
</td>
<td style="width:60px;color:black;">Old Rate 
</td>
<td style="width:60px;color:black;">New Rate
</td>
<td style="width:700px;color:black;">
Pie Chart Of Increasing The Rate
</td>
</tr>
<tr>
<%
	Connection con;
	Statement pst;
	ResultSet rs;
	String companyId,ComanyName;
	
	try
	{
		
		DbCon conn=new DbCon();
		con=conn.getDbcon();
		pst=con.createStatement();		
		
		rs=pst.executeQuery("select * from company_name");
	
	while(rs.next())
		{
			%>
			


<td style="width:50px"><%=rs.getString(2) %>
</td>
<td style="width:50px"><%=rs.getString(3) %>
</td>
<td style="width:50px"><%=rs.getString(4) %>
</td>

<td style="width:800px;"><%=rs.getString(5) %> %
<div id="">
<table>
<tr>
<td style="width:<%=rs.getInt(5)*10%>px; background-color:green;">

</td>
</tr>
</table>
</div>
</td>
			
	</tr>	

			<%
		
		}
		
	%>

</table>

</div>
	<%
	con.close();
		
	}
	
	catch(Exception e)
	{
		out.println(e);
		
	}

	
}
else
{	response.sendRedirect("../index.jsp");

	
}
	


%>

</body>
</html>