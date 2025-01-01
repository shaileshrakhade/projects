<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page  import="java.sql.*" %>
    <%@page import="stockBeans.*" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>MLM</title>
<link href="../bower_components/LoginPage/Site.css" rel="stylesheet" type="text/css" />
<link href="../bower_components/LoginPage/bootstrap.min.css" rel="stylesheet" type="text/css" />
 <link href="../bower_components/LoginPage/styles.css" rel="stylesheet" type="text/css" />
<link href="../css/background.css" rel="stylesheet" type="text/css"/>
<link href="../css/font_size.css" rel="stylesheet" type="text/css"/>
<style type="text/css">
#studentlist h4
{
margin-left: 20px;

}
#StudentList1
{

margin-right: 30%;
}

#StudentList1 a
{
  font-size: 20px;
  text-decoration: none;
  color:graytext;
  box-shadow: 1px 2px 1px black;
  }
</style>


<script type="text/javascript">
function myFunction() {
	
	var txt;
	var r = confirm("Press Ok Button To Delete!");
	if (r == true) {		
		<%
		try{
		int id;
		id= Integer.parseInt(request.getParameter("id"));		
		Connection conn;
		PreparedStatement pst;			
				
			DbCon connn=new DbCon();
			conn=connn.getDbcon();
			pst=conn.prepareStatement("update classcontent set IsDelete=1 where id=?");			
			pst.setInt(1, id);						
			int status=pst.executeUpdate();		
			if(status==1)
			{			
				conn.close();
				%> alert("Successfull Delete...");<%
				response.sendRedirect("http://localhost:8080/MobileLearningManagement/jsp/admin.jsp");
			}
			else
			{
				%>
				alert("Error...");
						<%
				
			}
				%>
				
				
			<%
			
			
		}
		catch(Exception e)
		{
			out.println(e);
			
		}
		
		%>
	  
	}
</script>
</head>
<body>

<%
if(session.getAttribute("sid")!=null)
{
	
%>



<jsp:include page="../html/header.html"></jsp:include>
<div id="logout" align="right" >
<a href="session.jsp" style="color: white;font-size: 20px; text-decoration: none;">Logout</a>
</div>

<h1>Hello  <%=session.getAttribute("sname") %> Teacher</h1>
<h5>Code For Students To Join :- <span style="color:orange;"><%=session.getAttribute("sid") %></span></h5>

<div align="right" id="StudentList1">
<a href="#"  onclick="StudentList()"> Student List</a>
</div>
<div class="dbContainer" style="height: 700px ">


<div class="col-md-16">
 <h2>Post Your Study Material</h2>
 <hr>
 
</div>


<div class="col-md-16">
<div class="col-md-8">
<div class="col-md-16">
<form action="../postData" method="post" enctype="application/x-www-form-urlencoded">
<label>Enter Tital :- </label><br>

<input type="text" name="tital" placeholder="Subject Of Post" required="required"><br>


<label>Write Post :- </label><br>


<textarea rows="10" cols="70" name="Postmsg" required="required"></textarea><br>


<label>Attachment :- </label><br>

<input type="file" name="Attachment" ><br>
<input type="submit" value="Post">
</form>
</div>
</div>
</div>
<%
 	
	Connection con;
	Statement st;
	ResultSet rs,rs2;	
	try
	{		
		DbCon conn=new DbCon();
		con=conn.getDbcon();
		st=con.createStatement();
		rs=st.executeQuery("select r.name,r.userType from register as r inner join classwithstudent c on r.id=c.studentid where c.ClassId ="+ session.getAttribute("sid")+";");		
		while(rs.next())
		{
		
		%>
		<div align="left" id="studentlist"  style="visibility:visbal;">
		
		<li><label><%=rs.getString(1) %></label>
			
			</li>
			
		</div>
		
		<% 
		}%>

<div class="col-md-16" style="width: 100%; height: 90%; overflow: scroll">

<div class="col-md-8">
<hr>
 
		<%		
		rs=st.executeQuery("select * from ClassContent where IsDelete=0 and clsid ="+ session.getAttribute("sid")+";");		
		while(rs.next())
		{
			String idd =rs.getString(1);
			%>
			
			<a href="admin.jsp?id=<%=rs.getString(1) %>" onclick="myFunction()"><h1 style="font-size: 30px; color: olive;"><%=rs.getString(3) %></h1></a>
			<h4 >Email Id :-  <%=rs.getString(4) %>	</h4>
			<hr>
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

<%
}
else
{	response.sendRedirect("/MobileLearningManagement/");

	
}
%>
</body>

</html>

