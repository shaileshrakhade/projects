<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Colorify Admin Portal</title>
 
<style type="text/css">
#admin
{
	 width: 100%;
	 height:90%;
	 border-radius:10px;
	 box-shadow: 5px 1px 25px rgba(0,0,0,0.6);
    margin:0;
    
 
	color:black;
	padding:0px;
	margin: 0px;
	 

}
#admin table

{
width: 90%;

margin:5%;
 
border-radius: 10px;
color:black;
padding:10px;
border-style:double;
 
}
td
{

border-radius:5px;
border:1px;
color:black;
padding:5px;
border-style:solid;

}

tr
{
border-style:solid;

}

</style>

</head>
<body>




<h1 style="color: red; font-family:covsive">Colorify Admin Prtal</h1>
<div id="admin"> 
 

<table id>

<tr style="text-align:center;">
<td style="font-size:20px;">
Name
</td>
<td style="font-size:20px;">
Email
</td>
<td style="font-size:20px;">
Mobile
</td>
<td style="font-size:20px;">
Pincode
</td>

</tr>




<%


Connection con;
Statement st;
ResultSet rs;

 

try
{

	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/paint?user=root&password=root");
	
st=con.createStatement();
rs=st.executeQuery("select * from enquire;");
 while(rs.next())
 {
	 %>
	 <tr>
<td>
<%=rs.getString("name") %>
</td>
<td>
<%=rs.getString("email") %>
</td>
<td>
<%=rs.getString("mob") %>
</td>
<td>
<%=rs.getString("pincode") %>
</td>

</tr>
	 
	 <%
	 
	 
 }
con.close();

}
catch(Exception e)
{

out.println(e);


}

 
%>

</table>
</div>
</body>
</html>