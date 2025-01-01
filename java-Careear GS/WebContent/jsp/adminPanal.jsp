<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*" %>
<%@page import="beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Adaptive Learning</title>
 <link rel="stylesheet" href="../css/index.css" type="text/css">
  <link rel="stylesheet" href="../css/headerfooter.css" type="text/css"> 
   <link rel="stylesheet" href="../css/indexbackimg.css" type="text/css">
   <style type="text/css">
   #addCourse
   {
   font-family: cursive;
   font-size: 20px;
   padding: 50px;
   
   } 
   #addCourse h1
   {
   	font-size: 30px;
   	color: red;
   }
   #addCourse label 
   {
	
	}
	#addCourse input[type="submit"]:hover
	{
	background-color: black;
	color: white;
	}
	#addCourse input[type="submit"]
	{
	font-size: 20px;
	height: 40px;
	width: 10%;
	background-color: white;
	color: black;
	}
	#addCourse input 
	{
	height: 30px;
	width: 50%;
	margin-top: 10px;
	margin-bottom: 10px;
	}
	#addCourse textarea 
	{
	height: 80px;
	width: 50%;
	margin-top: 10px;
	margin-bottom: 10px;
	}
	#CourseContent
	{
	margin-left: 60%;
	margin-top: -25%;
	}
   </style>

</head>
<body>
<%
if(session.getAttribute("suid")!=null)
{
	
%>
<header>
	<div class="n-headerP innerpage-header" id="_globalNav">
	<div class="n-logo" align="center" style=" margin-bottom: 20px; ">
				<h1 style="color: white; font-family: cursive; font-size: 35px">Adaptive<span style="color: orange">{Learning}</span></h1>
			</div>
			</div><div class="n-lognSgnBx">
			<span class="ask-shiksha"><a href="#"
					ga-page="gnb" ga-attr="GNB_OPEN_STATE" ga-optlabel="ASK_GNB"
					title="Get answers from current students, alumni &amp; our experts"><i
						class="icons ic_ask-shiksha"></i>Ask</a></span> <span class="n-loginSgnup">
					<i class="blank-pp-icon icons"></i>
					 <a href="/Careear_GS"	action="login">Logout</a>
					  <span class="registerPipe">
				</span>
			</div>
			<p class="clr"></p>
		
		<div class="searchBtnOvrly"></div>
	
</header>

<div id="addCourse" align="left">
<form action="../AddCoures" method="post" >
<h1>Add Course!</h1>
<hr>

<label style="font-size:20px">Name Of Course</label><br>

<input type="text" name="nameofcourse" placeholder="" required><br>

<label style="font-size:20px"> Education</label><br>

<input type="text" name="Education" placeholder="" required><br>
<label style="font-size:20px"> information</label><br>
<textarea rows="" cols="10" name="information" required="required">
</textarea><br>


<input type="submit" value="Insert">
</form>

</div>
<div id="CourseContent"  >
<div class="col-md-16" style="width: 100%; height: 95%; overflow: scroll">
<div id="career-stream" class="career-stream-col">
									
									<%
	Connection con;
	Statement st;
	ResultSet rs;	
	try
	{		
		DbCon conn=new DbCon();
		con=conn.getDbcon();
		st=con.createStatement();
				
		rs=st.executeQuery("select * from courses where IsDelete=0");		
		while(rs.next())
		{
			String idd =rs.getString(1);
			%>
			
			<a href="adminPanal.jsp?id=<%=rs.getString(1) %>" onclick="myFunction()"><h1 style="font-size: 30px; color: olive;"><%=rs.getString(2) %></h1></a>
			<h4 >Education required :-  <%=rs.getString(4) %>	</h4>
			<p style="font-family: cursive;">
			<br>
			<h5>Information Abut Course </h5>
			<%=rs.getString(3) %>			
				</p>
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
{	response.sendRedirect("/Careear_GS/");

	
}
%>
</body>
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
			pst=conn.prepareStatement("update courses set IsDelete=1 where id=?");			
			pst.setInt(1, id);						
			int status=pst.executeUpdate();		
			if(status==1)
			{			
				conn.close();
				%> alert("Successfull Delete...");<%
				response.sendRedirect("http://localhost:8080/Careear_GS/jsp/adminPanal.jsp");
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
	

</html>