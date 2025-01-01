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
#CorseName
{
	font-family: cursive;
	font-size: 20px;
	font-weight: bold;
	padding: 10px;
	
}
#CorseName a
{
text-decoration: none;
}
#CorseName a:hover {
	color: red;
}
#serarch input:hover
{
background-color: lime;
}
#serarch input
{
border-radius:10px;
height: 30px;
width: 70%;
}
#serarch
{
	
	padding:20px;
	margin-left: 10%;
	
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
						class="icons ic_ask-shiksha"></i><a href="/Careear_GS/jsp/studentprofile.jsp"	action="Profile">Profile</a></span> <span class="n-loginSgnup">
					<i class="blank-pp-icon icons"></i>
					 <a href="/Careear_GS/jsp/logout.jsp"	action="logout">Logout</a>
					  <span class="registerPipe">
				</span>
			</div>
			<p class="clr"></p>
		
		<div class="searchBtnOvrly"></div>
	
</header> 
<div id="marquetext">
<marquee>Available Courses... </marquee>

</div>

<div class="mainbody">
<div class="" align="right" style="height: 30px">

</div>

<div class="maincontainn" style="height: 99%; ">
<div id="serarch">

</div>
<div class="col-md-16" style="width: 100%; height: 95%; overflow: scroll">

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
			%>
			<div id="CorseName" align="center">
			
			
											<h2><label style="cursor: pointer;font-size: 30px"  class="details"> 
													<a href="/Careear_GS/jsp/MoreInfo.jsp?id=<%=rs.getString(1) %>">	
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