<%@include file="studHeader.jsp"%> 
<%@ page import="java.sql.*" %>
<% 
session.setAttribute("id", 1);
//remove  this line when project is combine temp session id 
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
    <div class="col-sm-5">
     <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ModalCenterBlogs">
		Add New Blog
	</button>
    </div>
    <div class="col-sm-5">
		<a class="logout btn btn-info" href="../StudentBlogs/student_BlogsEdite.jsp"><i class="fa" aria-hidden="true" id="btnblogs" ></i>&nbsp;My Blogs</a>
	
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
<div class="col-sm-12 ">
<%
if(request.getParameter("typ")!=null)
{
ps=conn.prepareStatement("select f.post_id,f.post_type,f.title,f.content,f.posted_on,f.author_id,f.updated_at,u.fname from forum f inner join user u on f.author_id =u.user_id where post_type like(?) ORDER BY f.post_id DESC,updated_at");
ps.setString(1,request.getParameter("typ") );
}
else
{
	ps=conn.prepareStatement("select f.post_id,f.post_type,f.title,f.content,f.posted_on,f.author_id,f.updated_at,u.fname from forum f inner join user u on f.author_id =u.user_id ORDER BY f.post_id DESC,updated_at;");
}

System.out.println(ps);
rs=ps.executeQuery();

while(rs.next())
{
%>
<div class="row ">

<div class="col-sm-12  " style="border-style: solid; height: 50px;padding: 10px;">

<div class="col-sm-6">
<label style="color: red; font-family: cursive; font-size: large;"><%=rs.getString(3) %></label>

</div>
<div class="col-sm-2">
<% String[] date=rs.getString(5).split(" ");%>
<label>Post At : <%=date[0] %></label>

</div>
<div class="col-sm-2">
<% String[] Lastdate=rs.getString(7).split(" ");%>
<label>Update at: <%=Lastdate[0] %></label>

</div>
<div class="col-sm-2">
<label >Owner : <span style="color: green;"><%=rs.getString(8) %></span> </label>

</div>

</div>
<div class="col-sm-12 ">
<br>
<p><%=rs.getString(4) %></p>

</div>
<div class="col-sm-12 ">
<a class="btn btn-primary" onclick="showBlogsCommnets(<%=rs.getString(1) %>)" style="width: 100%" data-toggle="modal" data-target="#exeModalComments"  >Comments</a>

</div>

</div>
<hr style="background-color: red">
<br>
<%}

%>
</div>
</div>

<!-- Blogs Contener-->




<!-- Modal -->
<div class="modal fade" id="ModalCenterBlogs" tabindex="-1" role="dialog" aria-labelledby="ModalCenterBlogs" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
  <form action="../insert.jsp" method="post">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Write Blog</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="col-sm-12 ">
        	
		  <label for="cars">Post Type:</label>

			<select name="ddlposttype" id="cars" required="required" style="width: 100%">
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
        <input type="text" required="required" name="txtTital" style="width: 100%">
        <input type="hidden" value="1" name="txtusertype" style="width: 100%">
        </div>
        <div class="col-sm-12 ">       
        <label>Blog Content</label>
        
        <textarea rows="10" cols="40" name="txtblogContent" required="required" style="width: 100%"></textarea>
        
        </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save</button>
      </div>
    </div>
    </form>
  </div>
</div>





<!-- Modal Delete -->
<div class="modal fade" id="ModalDelete" tabindex="-1" role="dialog" aria-labelledby="ModalDelete" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Blogs</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form class="modal-content" action="/action_page.php">
      <div class="modal-body">
         
   
      <h1>Delete Blogs?</h1>
      <p>Are you sure you want to delete your account?</p>    
   
  
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Delete</button>
      </div>
      </form>
    </div>
  </div>
</div>

<!-- Modal Update -->
<div class="modal fade" id="ModalUpdate" tabindex="-1" role="dialog" aria-labelledby="ModalUpdate" aria-hidden="true">
  <div class="modal-dialog" role="document">
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

			<select name="ddlposttype" id="cars" required="required" style="width: 100%">
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
        <input type="text" required="required" name="txtTital" style="width: 100%">
        <input type="hidden" value="1" name="txtusertype" style="width: 100%">
        </div>
        <div class="col-sm-12 ">       
        <label>Blog Content</label>
        
        <textarea rows="10" cols="40" name="txtblogContent" required="required" style="width: 100%"></textarea>
        
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>


<!-- Modal Comments -->

<div class="modal fade" id="exeModalComments" tabindex="-1" role="dialog" aria-labelledby="ModalCommentsclick" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
  
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Blog Comments</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body">
	         
	    <div class="col-sm-12 overflow-auto" id="CommentSection" style="height: 400px" >  
	    
	<!--    bind By js -->
	    	
	    </div>
	    
	    <br>
	    <br>
	     <form  action="../process.jsp?CommnetId=" method="post">
	    <div class="col-sm-12 ">   	
  	
       
        <input type="text" required="required" name="txtCommnet" style="width: 100%; padding: 10px; border-radius: 15px">
    	 
        <input type="hidden"   id="txtCommnetPostId" name="txtCommnetPostId" style="width: 100%">  
        <input type="hidden" value="1" name="txtusertype" style="width: 100%">   
        
  		</div>
  		<div class="col-sm-12 " style="padding: 5px">  
  		</div>

  		<div class="col-sm-12 "> 
  		<input type="submit" style="width: 100%" class="btn btn-primary" value="Commnet">
  		   
  		</div>
  		</form>
	    
	  
      </div>
     
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
     
      </div>
      
    </div>
  </div>
</div>



<%

System.out.println("end Loop");

			}
			catch (SQLException sqle)
			{
				System.out.println("SQL "+sqle);
			}
			catch (Exception e)
			{
				System.out.println("Other "+e);
			}

}
else
{	
	response.sendRedirect("/Blogs/");
}%>
 <script src="../Blogs.js"></script>
<%--Please Write your code above this line!--%>
<%@include file="studFooter.jsp"%>