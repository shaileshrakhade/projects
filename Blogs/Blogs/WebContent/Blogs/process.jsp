<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.util.Date" %>

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
				String Update=request.getParameter("Update");
				//String Commnet=request.getParameter("CommnetId");
				String GetCommentsId=request.getParameter("GetCommentsId");
				
				String op="";
				//for updating the Blogs
				if(Update!=null)
				{
					ps=conn.prepareStatement("select * from forum where post_id="+Integer.parseInt(Update));
					System.out.println(ps);
					rs=ps.executeQuery();
					if(rs.next())
					{
						op = "{"
								+"\"post_id\":\""+rs.getString(1).toString()
								+"\",\"post_type\":\""+rs.getString(2).toString()
								+"\",\"title\":\""+rs.getString(3).toString()
								+"\",\"content\":\""+rs.getString(4).toString()
								+"\""+
								"}";
						
						 
						 
					}
					System.out.print("data"+op);
					out.print(op);
					
				}
				
				
				//Get Comments
				
				if(GetCommentsId!=null)
				{
					String comments="";
					String comment="";
					String fname="";
					String updated_at="";
					ps=conn.prepareStatement(" select c.comment,u.fname ,c. updated_at from post_comment c inner join user u on c.author_id=u.user_id  where c.post_id="+Integer.parseInt(GetCommentsId)+" ORDER BY  c.updated_at desc");
					System.out.println(ps);
					rs=ps.executeQuery();
					
					while(rs.next())
					{
						//["1", "2", "3"]
								if(rs.isLast()!=true)
								{
								comment="\"comment\":"
								+"\""+rs.getString(1)+"\"";
								fname="\"fname\":"
								+"\""+rs.getString(2)+"\"";
								updated_at="\"updated_at\":"
										+"\""+rs.getString(3)+"\"";
								}
								else
								{
									comment="\"comment\":"
											+"\""+rs.getString(1)+"\"";
											fname="\"fname\":"
											+"\""+rs.getString(2)+"\"";
											updated_at="\"updated_at\":"
													+"\""+rs.getString(3)+"\"";
								}
						
								if(rs.isLast()!=true)
								{
									comments=comments+"{"+comment+","+fname+","+updated_at+"},";
								}
								else
								{
									comments=comments+"{"+comment+","+fname+","+updated_at+"}";
								}
						 
					}
					op = "{"
							+"\"list\":"+"["+comments+"]"
							
							+
							"}";
					System.out.print("data"+op);
					out.print(op);
					
				}
				
				//for commenting
				//out.print(Commnet);
				String txtCommnetPostId=request.getParameter("txtCommnetPostId");	
				if(txtCommnetPostId!=null)
				{
					String txtCommnet=request.getParameter("txtCommnet");
									
					int author_id=Integer.parseInt(session.getAttribute("id").toString());//on session 
					int usertype=Integer.parseInt(request.getParameter("txtusertype"));
					
					
					 	Date currentDate = new Date();
			            DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			            String strCurrentDate = df.format(currentDate);
			            System.out.println("txtCommnetPostId" + txtCommnetPostId);
					
					//Statement st=conn.createStatement();
					ps=conn.prepareStatement("insert into post_comment(post_id,comment,posted_on,author_id,updated_at)values(?,?,?,?,?)");
					ps.setString(1, txtCommnetPostId);
					ps.setString(2, txtCommnet);
					ps.setString(3, strCurrentDate);
					ps.setInt(4, author_id);
					ps.setString(5, strCurrentDate);
					int i=ps.executeUpdate();
					System.out.println("comment sql " + ps);
					if(i>0)
					{
						out.println("Data is successfully inserted!");
						if(usertype==1)
						{
							response.sendRedirect("StudentBlogs/student_Blogs.jsp");
						}
						else if(usertype==2)						
						{
							response.sendRedirect("TeacherBlogs/teacher_Blogs.jsp");
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
