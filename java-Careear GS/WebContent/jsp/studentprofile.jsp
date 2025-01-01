<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%@page import="beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adaptive Learning</title>

<link rel="stylesheet" href="../css/basic.css" type="text/css">
 <link rel="stylesheet" href="../css/index.css" type="text/css">
  <link rel="stylesheet" href="../css/headerfooter.css" type="text/css"> 
   <link rel="stylesheet" href="../css/indexbackimg.css" type="text/css">
<style type="text/css">
#course
{
width: 50%;
background-color:aqua;
margin-left: 50%;
margin-top:-5%;
}
#profile 
{
padding:10px;
margin-left:1%;

font-family: cursive;
font-size: 50px;
}
#profile h1
{
margin-left:10%;
font-family: cursive;
font-size: 50px;
}
#profile h2
{
margin-left:10%;
font-family: cursive;
font-size: 20px;
color: lime;
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
						class="icons ic_ask-shiksha"></i><a href="/Careear_GS/jsp/profile.jsp"	action="Profile">Course List</a></span> <span class="n-loginSgnup">
					<i class="blank-pp-icon icons"></i>
					 <a href="/Careear_GS/jsp/logout.jsp"	action="logout">Logout</a>
					  <span class="registerPipe">
				</span>
			</div>
			<p class="clr"></p>
		
		<div class="searchBtnOvrly"></div>
	
</header> 
<div id="marquetext">
<marquee>Adaptive Learning</marquee>

</div>
<%


	Connection con;
	Statement st,st2;
	ResultSet rs,rs2;	
	try
	{		
		DbCon conn=new DbCon();
		con=conn.getDbcon();
		st=con.createStatement();
		st2=con.createStatement();
		int id=Integer.parseInt(session.getAttribute("suid").toString());
		rs=st.executeQuery("select c.id, c.nameofcourse,c.information,c.Education from courses as c inner join enrollstudent as e on c.id=e.CoursesId where e.StudentId="+id+"");		
		rs2=st2.executeQuery("select * from student where id="+id+"");		
		
		%>

<div class="mainbody">
<div class="" align="right" style="height: 30px">

</div>
<div id="profile">
<%
if(rs2.next())
{ %>
<h1>Hello <span style="color:red"><%=rs2.getString(2) %></span></h1>

<%
	rs2.getString(1);
}
	%>
	<br>
	<hr>
	<h2>These is Your Enroll Course List...</h2>
	<br>
	<h2>Click to Course & get the Knowledge...</h2>
</div>
<div id="course">

<div class="col-md-16" style="width: 100%; height: 95%; overflow: scroll">
<%
while(rs.next())
{
	%>

			<div id="CorseName" align="center">
			
			
											<h2><label style="cursor: pointer;font-size: 30px"  class="details"> 
													<a href="/Careear_GS/html/course/<%=rs.getString(1) %>.html">	
			<%=rs.getString(2) %></a></label></a>
												
											</h2>
											
											
										
			
			</div>
			<hr>
			<%}%>
			

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
{	response.sendRedirect("/Careear_GS/");

	
}
%>
</body>
</html>