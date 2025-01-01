<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*" %>
<%@page import="beans.*" %>
<%@page import="careear.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Adaptive Learning</title>
 <link rel="stylesheet" href="../css/index.css" type="text/css">
  <link rel="stylesheet" href="../css/headerfooter.css" type="text/css"> 
   <link rel="stylesheet" href="../css/indexbackimg.css" type="text/css">


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
<div id="main-wrapper">
 

	<div id="content-wrapper">
		<!-- floating online form widget -->
		<div id="incomplete-widget"></div>


		<div class="wrapperFxd" id="main-wrapper">
		 
			<!--Code Starts form here-->
			<div class="career-wrapper">
				<div class="sheet-wrapper">
					<div class="sheet-top-effect">
						<div class="sheet-bot-effect">

							<div style="padding: 10px 0px;">
								<a href="#"> </a> >  <a
									href="/Careear_GS/jsp/profile.jsp">Careers</a> >
								Opportunities
							</div>

							<div class="career-contents">
								


								<h5 class="stream-sub-title">What's next?</h5>
								<h1 class="choice-option">
									What are your career interests? Choices:
								</h1>

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
				
		rs=st.executeQuery("select * from courses where IsDelete=0 and id="+request.getParameter("id"));		
		if(rs.next())
		{
			%>
			<hr>
			<h1 style="font-size: 30px; color: olive;"><%=rs.getString(2) %></h1>
			<h4 >Education required :-  <%=rs.getString(4) %>	</h4>
			<p style="font-family: cursive;">
			<br>
			<h5>Information Abut Course </h5>
			<%=rs.getString(3) %>			
				</p>
			
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
					</div>
				</div>
			</div>
		 
			 
		</div>
		 
	</div>
</div>
<!-- just in case div's are not closed  -->
 
 

 
<p class="clr"></p>
<footer id="footer">
	<div class="n-footer2">
		<div class="container">
			 
			<div class="n-fotHelplne">
				<p>
					To Get More Info About This Course  <br>Click To <strong>
						Enroll Button </strong>
				</p>
				<form id="form1" action="../enrollcourse" method="post">
				<input type="hidden" name="cid" value="<%=request.getParameter("id") %>" >
			
				<br>
				<br>
				<input class="btn__prime button button--orange"type="submit" value="Inroll Your Seat " >
				</form>
				
			</div>
			 
								<div class="career-offers">
									<p class="source-by">Content on this page is by Career
										Expert</p>
									<p class="source-name">Mr. Bhushan Warfade</p>
									<p class="source-dtls">
										 Msc Final Year Student Sant Gadge Baba Amravati Univarsity,Amravati| <a
											href="#">View
											Complete Proﬁle</a>
									</p>
								</div>
		</div>
		<div class="n-fotFolw">
			<ul>
				 </ul>
		</div>
		<p class="clr"></p>
	</div>
	
			
</footer>


 <%
}
else
{	response.sendRedirect("/Careear_GS/");

	
}
%>
 
   </body>
 
 
 
 
</html>