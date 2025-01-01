<%-- 
    Document   : home
    Created on : 17 Jan, 2019, 5:02:07 PM
    Author     : HP
--%>
        <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<% 
           
                    Connection con;
                    PreparedStatement pst,pst2;
            session.getAttribute("sid");
                     
          
                    
                    Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/carrent?user=root&password=root&useSSL=false");
pst=con.prepareStatement("SELECT * FROM carsinfo where uid='"+session.getAttribute("suid")+"';");
//pst.setString(1,(session.getAttribute("sid"))); 

ResultSet rs=pst.executeQuery();

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/about.css" rel="stylesheet" type="text/css"/>
        <jsp:include page="header.jsp"></jsp:include>
        <link href="../images/logo/logo2.jpg" rel="icon" type="image/png"/>
    
        <title>CarOnRent!</title>
    </head>
    <body>
     <% 
            if(session.getAttribute("sid") != null)
            {
        %>
       
        
               <div  class="heder_menu_2">
            
            <table>
               <tr>
                         <td>
                            <a href="index.jsp"  class="homeblue">Index</a>
                            
                         </td>
              
                    
                        <td>
                             <a href="home.jsp"  class="homeblue">Home</a>
                        </td>
                    
                        <td>
                           
                            <a href="help.jsp" class="homeblue">Help</a>
                        </td>
                      <td>
                            <a href="#" class="homered">About</a> 
                        </td>
                        <td>
                            <a href="about_us.jsp" class="homeblue">About Us</a> 
                        </td>

                       
                    </tr>
                   
            
              </table>
             </div>
        
        <style>
            
            .loginname{
                display: none;
            }
            .heder_menu{
                display: none;
            }
            .logoutname{
               display: flex;
            }
             #session_name{
                display: flex;
            }
          
        </style>
        
        
                       
        <%
             
            %>
            
            <%
               }
          else
                response.sendRedirect("index.jsp");
            %> 
        
        <h1>Profile</h1><hr>
        <div id="pic_id">
            <h2 id="idname"><% out.print(session.getAttribute("suid")); %></h2>
           
            
            <form action="#" method="post" enctype="maltipart/form-data">
                <img src="../images/uplod/logodriver.png" alt="../images/uplod/logodriver.png"/><br>
                <input type="file" name="pic"><br>
                          <input type="submit" value="Change Pic"/>
            </form>
            
                <div class="btn">
                    
                    <marquee width="60%" direction="up" height="10%"  behavior="alternate">
                    <a href="new_car_registration.jsp" style="color:red;font-size: 30px"> Insert Cars Details</a>
                    </marquee>
                    <br><br>
                    <a href="profile_edit.jsp">Profile Edit</a><br><br>
            
                    <a href="changepassword.jsp">Change Password</a>
                        
            
        </div>
                          
        </div>
                

<table id="tab_1">
 
                
    <tr><td>
                   <h4>Name <th>:</th> </h4>
             <td> 
                 <i><% out.print(session.getAttribute("fname"));%> <i> </i>   <% out.print(session.getAttribute("mname"));%> <i> </i>   <% out.print(session.getAttribute("sname"));%></i>
                          
                    </td>
                </tr>
                <tr><td>
                        <h4>Mobile <th>:</th></h4></td>
                    <td> 
                        <i><% out.print(session.getAttribute("smobile")); %></i>
                    </td>
                </tr>
                <tr><td>
                        <h4>Email <th>:</th></h4></td>
                    <td> 
                       <i><% out.print(session.getAttribute("semail")); %></i>
                    </td>
                </tr>
                <tr><td>
                        <h4>Date of Birth <th>:</th></h4></td>
                    <td> 
                           <i><% out.print(session.getAttribute("sdob")); %></i>
                    </td>
                
                </tr>
                <tr><td>
                        <h4>Address <th>:</th></h4></td>
                    
                    <td> 
                        <i><% out.print(session.getAttribute("saddress")); %></i>
                    </td>
                </tr>
                <tr><td>
                        <h4>District <th>:</th></h4></td>
                    <td> 
                      <i><% out.print(session.getAttribute("sdist")); %></i>
                    </td>
                </tr>
                <tr><td>
                        <h4>State <th>:</th></h4></td>
                    <td> 
                        <i><% out.print(session.getAttribute("scstate")); %></i>
                    </td>
                </tr>
                  
                <tr><td>
                        <h4>Country <th>:</th></h4></td>
                    <td> 
                       <i><% out.print(session.getAttribute("scountry")); %></i>
                    </td>
                </tr>
              
                
                <tr><td>
                        <h4>Specification <th>:</th></h4></td>
                    <td> 
                           <i><% out.print(session.getAttribute("sspecification")); %></i>
                    </td>
                
                </tr>
               
          
               
               
            </table>
                   
                    
                    
                    
                   <div id="carinfo">
                   <table>
                       <tr id="tbbbold">
                           
                             <td>
                               Car Name
                           </td>
                            <td>
                             Color
                           </td>
                           <td>
                               Rate/Km Non Ac
                           </td>
                             <td>
                               Rate/Km Ac
                           </td>
                            <td>
                               Update
                           </td>
                            
                            <td>
                               Delate
                           </td>
                            
                       </tr>  <%       
   
                           
while(rs.next())
{
   
   
    
   
      

    
    
    String vihicalname=rs.getString("vihicalname");
    
    String color=rs.getString("color");
    String rate_non_ac=rs.getString("price_non_ac");
    
    String rate_ac=rs.getString("price_ac");
   
  
    
  
   
    
    request.setAttribute("vihicalname", vihicalname);
    request.setAttribute("color", color);
    request.setAttribute("rate_non_ac", rate_non_ac);
    request.setAttribute("rate_ac", rate_ac);
    
    
%>
                       <tr id="">
                      
                           
                           <td>
                             
                               <%
                                   out.println(request.getAttribute("vihicalname"));
                               %>
                           </td>
                            <td>
                                
                               <%
                                   out.println(request.getAttribute("color"));
                               %>
                           </td>
                           <td style="font-size:20px">
                                Rs.
                               <% 
                               out.println(request.getAttribute("rate_non_ac"));
                               %>
                           </td>
                            <td style="font-size:20px">
                                Rs.
                               <% 
                               out.println(request.getAttribute("rate_ac"));
                               %>
                           </td>
                           
                          <td>
                                <a href="#" onclick="return ClassNameHere()">Update</a>
                                
                                <%
                                    

                                    %>
                           </td>
                            <td>
                             
                                <a href="#" onclick="return ClassNameHere()">Delete</a>
                                <%
                  
%>
                           </td>
                       </tr>
                                  <%
            }
            %>
                    
                   </table></div>        
                    
   </body>
</html>
        

<script>
     function ClassNameHere()
     {
  var txt;
 //var name= document.getElementById("idd").value;
  if (confirm("Carrenty this opration is not working!")) {
    txt = "You pressed OK!";
    
  
  } 
  else {
    txt = "You pressed Cancel!";
    return false;
  }
 document.getElementById("demo").innerHTML = txt;
}

    </script>

    <%
        
        %>

