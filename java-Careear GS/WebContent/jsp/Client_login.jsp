<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@page import="beans.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adaptive Learning</title>
 <link rel="stylesheet" href="../css/index.css" type="text/css">
  <link rel="stylesheet" href="../css/headerfooter.css" type="text/css"> 
   <link rel="stylesheet" href="../css/indexbackimg.css" type="text/css">
<style type="text/css">
#login_fill
{
	margin-left:40%;
	text-align:center;
	margin-top:1%;
	background-color:rgba(0,0,0,0.6);
	height:300px;
	width:30%;
	color:white;
	padding:5px;
	border-radius:10px;
	
}
#login_fill input
{
	margin-top:1%;
	width:80%;
	height:30px;
	
}
#login_fill a
{
	margin-top:10px;
	text-decoration: none;
	
	color:white;
}

</style>
<link rel="stylesheet" href="../css/basic.css" type="text/css">
</head>
<body>
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
<div id="marquetext">
<marquee>Career Guidance System</marquee>

</div>

<div class="mainbody">
<a href="../index.jsp" title="Home" >
<h1>Career Guidance System</h1>
</a>
<div class="maincontainn">

<div id="login_fill">
<form action="#" method="post" onsubmit="admin()" >
<h3>Login!</h3>
<label style="font-size:20px"> User Id</label><br>

<input type="text" name="uid" placeholder="" required><br>

<label style="font-size:20px"> Password</label><br>

<input type="password" name="psw" placeholder="" required><br>

<input type="submit" value="Submit">
</form>
<hr>
<a href="forgate.jsp">Forgot Password</a> | 
<a href="newacc.jsp">New Account</a>


	</div>

</div>

</div>

<div class="footer">
<h3>Site Devloped By Bushan Warfade</h3>
<h5>All &copy  Right Of SR Tech</h5>
</div>

</body>

<script type="text/javascript">
	function admin()
	{
<%
	String userid,fpassword;
	userid= request.getParameter("uid");
	fpassword= request.getParameter("psw");
	Connection con;
	PreparedStatement pst;
	ResultSet rs;	
	try
	{
		
		DbCon conn=new DbCon();
		con=conn.getDbcon();
		pst=con.prepareStatement("select * from student where userType='admin' and mob=? and pass=?");
		
		pst.setString(1,userid );
		pst.setString(2, fpassword);
		
		rs=pst.executeQuery();
		
		if(rs.next())
		{
			
			session.setAttribute("suid", userid);
			session.setAttribute("sname", rs.getString("name"));
				response.sendRedirect("../jsp/adminPanal.jsp");
			 
			con.close();
		}
		else
		{
			%>
			alert("jhbj");
					<%
			
		}
			%>
			<hr>
			
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