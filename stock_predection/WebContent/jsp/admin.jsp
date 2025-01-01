<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page  import="java.sql.*" %>
    <%@page import="stockBeans.*" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Stock Prediction</title>
<link href="../css/background.css" rel="stylesheet" type="text/css"/>
<link href="../css/font_size.css" rel="stylesheet" type="text/css"/>
</head>
<body>

<%
if(session.getAttribute("suid")!=null)
{
	
%>



<jsp:include page="../html/header.html"></jsp:include>
<jsp:include page="../html/logout.html"></jsp:include>

<h1>Hello Admin <%=session.getAttribute("sname") %></h1>

<div id="admin">
<hr>
<form action="../stockrate" method="post">

<h3>Updating Current Rate!</h3>
<table>

<tr>
<td><label style="font-size:20px">Company Name</label>
</td>
<td><label style="font-size:20px"> Date</label>
</td>

<td>
<label style="font-size:20px"> News Rate</label>
</td>
</tr>

<tr>
<td>
<select name="cid" required>
<option selected></option>
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
			
			
			<option value="<%=rs.getString(1)%>"><%=rs.getString(2) %></option>

			<%
		
		}
		
	
	con.close();
		
	}
	
	catch(Exception e)
	{
		out.println(e);
		
	}
	
	%>

</select>
</td>
<td>
<input type="date" name="date" placeholder="" required>
</td>

<td>
<select name="newsrate" required>
<option selected></option>
<option value="-10">-10</option>
<option value="-9">-9</option>
<option value="-8">-8</option>
<option value="-7">-7</option>
<option value="-6">-6</option>
<option value="-5">-5</option>
<option value="-4">-4</option>
<option value="-3">-3</option>
<option value="-2">-2</option>
<option value="-1">-1</option>
<option value="0">0</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>

</select>
</td>

<td><input type="submit" value="Submit" ></td>
</tr>
</table>

</form>
<hr>
<h3 style="color:red">This Is Optional!</h3>
<h4>When You Add The Another Name Of Company Directly...</h4>

<form action="../addcompany" method="post"  id="myForm">
<table>
<tr>
<td><label>Adding New Company?</label></td>
<td><input type="text" name="companyadd"  placeholder="Write The Company Name" required/>
<td><label>Old Stock Rate?</label></td>
<td><input type="number" name="oldrate"  placeholder="Write The Company Name" required/>

<td><input type="submit" Value="Add"/>
</tr></table>

</form>
</div>
<%
}
else
{	response.sendRedirect("../index.jsp");

	
}
%>

</body>

</html>

