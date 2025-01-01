<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.*" %>

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
				
				String post_type=request.getParameter("ddlposttype");
				String title=request.getParameter("txtTital");
				String content=request.getParameter("txtblogContent");
				int post_id=Integer.parseInt(request.getParameter("post_id").toString());//on session 
				int usertype=Integer.parseInt(request.getParameter("txtusertype"));
				
				
				 	Date currentDate = new Date();
		            DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		            String strCurrentDate = df.format(currentDate);
		            //System.out.println("Date is " + strCurrentDate);
				
				//Statement st=conn.createStatement();
				ps=conn.prepareStatement("update forum set post_type=?,title=?,content=?,updated_at=?Where post_id=?");
				ps.setString(1, post_type);
				ps.setString(2, title);
				ps.setString(3, content);
				ps.setString(4, strCurrentDate);
				ps.setInt(5, post_id);
				int i=ps.executeUpdate();
				if(i>0)
				{
					out.println("Data is successfully inserted!");
					if(usertype==1)
					{
					response.sendRedirect("StudentBlogs/student_BlogsEdite.jsp");
					}
					else if(usertype==2)						
					{
						response.sendRedirect("TeacherBlogs/student_BlogsEdite.jsp");
					}
					else
					{
						out.println("User Type Not Valid");
					}
				}
				else
				{
					out.println("Data is not inserted!");
				}
				
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
