<%@include file="studHeader.jsp"%> 
<%@ page import="java.sql.*" %>
<% 
//session.setAttribute("id", 1);
if(session.getAttribute("id")!=null)
{%>

<%--Please Write your code below this line!--%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Blogs</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
</head>
<body>
<%

			
			Connection conn = null;
			PreparedStatement ps;
			ResultSet rs;
			String query, dbUrl, port, databaseName, username, password;
			
			try 
			{
				Class.forName("com.mysql.jdbc.Driver");
				
				dbUrl = "jdbc:mysql://localhost:";
				port = "3306";
				databaseName = "online_teaching_learning_system_DB";
				username = "root";
				password = "root";				
				conn = DriverManager.getConnection(dbUrl+port+"/"+databaseName,username,password);				
				System.out.println("Database connection established....");
			
			
%>	
<div class="jumbotron text-center">
  <h1>Blogs</h1>
  
  
</div>
  
<div class="container">
  <div class="row">
   <!--  <div class="col-sm-4">
     <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalCenterBlogs">
		Add New Blog
	</button>
    </div> -->
    <div class="col-sm-10">		
		<a class="logout btn btn-info" href="../StudentBlogs/student_Blogs.jsp"><i class="fa" aria-hidden="true" id="btnblogs" ></i>&nbsp;All Blogs</a>
    </div>
    <div class="col-sm-2" >   
	 	  <div class="dropdown">
		    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Post Type
		    <span class="caret"></span></button>
		    <ul class="dropdown-menu">
		      <li><a href="?typ=JAVA">JAVA</a></li>
		       <li><a href="?typ=HTML">HTML</a></li>
		      <li><a href="?typ=CSS">CSS</a></li>
		      <li><a href="?typ=JavaScript">JavaScript</a></li>
		      <li><a href="?typ=SQL">SQL</a></li>
		      <li><a href="?typ=.NET">.NET</a></li>
		      <li><a href="?typ=Python">Python</a></li>
		      <li><a href="?typ=Android">Android</a></li>
		      
		    </ul>
	  	</div>
    </div>
  </div>
  <div class="row"> 
  </div>
  <hr style="background-color: yellow;">   
</div>
<!-- Blogs Contener-->
<div class="container">
  <div class="row"> 
<div class="col-sm-12 ">
<%
if(request.getParameter("typ")!=null)
{
ps=conn.prepareStatement("select * from forum where post_type like(?) and author_id="+session.getAttribute("id"));
ps.setString(1,request.getParameter("typ") );
}
else
{
	ps=conn.prepareStatement(" select * from forum where author_id="+session.getAttribute("id"));
}

System.out.println("result :"+ps);
rs=ps.executeQuery();

while(rs.next())
{
%>
<div class="row ">

<div class="col-sm-12  " style="border-style: solid; height: 50px;padding: 10px;">

<div class="col-sm-5">
<label style="color: green;"><%=rs.getString(3) %></label>

</div>
<div class="col-sm-2 left" >
<% String[] date=rs.getString(5).split(" ");%>
<label>Post At : <%=date[0] %></label>

</div>
<div class="col-sm-3">
<% String[] Lastdate=rs.getString(7).split(" ");%>
<label>Last Update : <%=Lastdate[0] %></label>

</div>

<div class="col-sm-1" id="myblogs">
<a href="?Delid=<%=rs.getString(1) %>" class="btn btn-primary" >
  Delete
</a>
</div>

<div class="col-sm-1" id="myblogs"  style="display: none;">
<a onclick="showBlogs(<%=rs.getString(1) %>)" class="btn btn-primary" data-toggle="modal" data-target="#ModalUpdate">
  Update
  </a>

</div>

</div>
<div class="col-sm-12 ">
<br>
<p><%=rs.getString(4) %></p>
<hr style="background-color: red">
</div>


</div>
<br>
<%} %>
</div>
</div>
</div>


<!-- Modal Update -->
<div class="modal fade" id="ModalUpdate" tabindex="-1" role="dialog" aria-labelledby="ModalUpdate" aria-hidden="true">
  <div class="modal-dialog" role="document">
  <form action="../Update.jsp" method="post">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Blogs</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       
        <div class="col-sm-12 ">
        	
		  <label for="cars">Post Type:</label>

			<select name="ddlposttype" id="ddlposttype" required="required" style="width: 100%">
			  <option value="JAVA">JAVA</option>
			  <option value="HTML">HTML</option>
			  <option value="CSS">CSS</option>
			  <option value="JavaScript">JavaScript</option>
			  <option value="SQL">SQL</option>
			  <option value=".NET">.NET</option>
			  <option value="Python">Python</option>
			  <option value="Android ">Android </option>
			</select>
		
        </div>
        
        <div class="col-sm-12 ">
        <label>Post Tital</label>
        <input type="text" id="txtTital" required="required" name="txtTital" style="width: 100%">
        <input type="hidden" id="txtId"  name="post_id" style="width: 100%" required="required">
          <input type="hidden" value="1" name="txtusertype" style="width: 100%" required="required">
        </div>
        <div class="col-sm-12 ">       
        <label>Blog Content</label>
        
        <textarea rows="10" cols="40" id="txtblogContent" name="txtblogContent" required="required" style="width: 100%"></textarea>
        
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Update</button>
      </div>
    </div>
    </form>
  </div>
</div>
<%

//Delete The Blog 
 String Delid =request.getParameter("Delid"); 
if(Delid!=null)
{
	ps=conn.prepareStatement("delete from post_comment where post_id="+Integer.parseInt(Delid));
	ps.executeUpdate();
	ps=conn.prepareStatement("delete from forum where post_id="+Integer.parseInt(Delid));
	System.out.println(ps);
	int i=ps.executeUpdate();
	if(i>0)
	{
		%>
		<script type="text/javascript">
		
		if (window.confirm('Blog Deleted...'))
		{
			window.location = "../StudentBlogs/student_BlogsEdite.jsp";
		}
		else
			{
			window.location = "../StudentBlogs/student_BlogsEdite.jsp";
			}
		</script>
		
		<%
		response.sendRedirect("../StudentBlogs/student_BlogsEdite.jsp");
	}else
	{
		%>
		<script type="text/javascript">
		
		if (window.confirm('Blog Not Delete!'))
		{
			window.location = "../StudentBlogs/student_BlogsEdite.jsp";
		}
		else
			{
			window.location = "../StudentBlogs/student_BlogsEdite.jsp";
			}
		</script>
		
		<%
		//response.sendRedirect("../StudentBlogs/student_BlogsEdite.jsp");
	}
}

System.out.println(Delid);
			}
			catch (SQLException sqle)
			{
				System.out.println(sqle);
			}
			catch (Exception e)
			{
				System.out.println(e);
			}

%>
 <script src="../Blogs.js"></script>

<%
}
else
{	
	response.sendRedirect("/Blogs/");
}%>

























<%--Please Write your code above this line!--%>
<%@include file="studFooter.jsp"%>