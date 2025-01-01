<%-- 
    Document   : home
    Created on : 17 Jan, 2019, 5:02:07 PM
    Author     : HP
--%>


<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
            <% 
           
                    Connection con;
                    PreparedStatement pst,pst2,pst3;

                         String diststrict = request.getParameter("district");
            String car = request.getParameter("car");
                    
                    Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/carrent?user=root&password=root&useSSL=false");
pst=con.prepareStatement("select customer.fname, customer.sname, customer.mobile_no, customer.dist, carsinfo.vihicalname, carsinfo.color, carsinfo.price_non_ac, carsinfo.price_ac from carsinfo INNER JOIN customer on carsinfo.uid = customer.uid;");
pst2=con.prepareStatement("SELECT * FROM alldistrict;");
pst3=con.prepareStatement("SELECT * FROM allcars;");
ResultSet rs=pst.executeQuery();

ResultSet rs2=pst2.executeQuery();
ResultSet rs3=pst3.executeQuery();
%>
   

   

        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="header.jsp"></jsp:include>
        <link href="../css/home.css" rel="stylesheet" type="text/css"/>
        <script src="../js/picslide.js" type="text/javascript"></script>
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
                             <a href="#"  class="homered">Home</a>
                        </td>
                    
                        <td>
                           
                            <a href="help.jsp" class="homeblue">Help</a>
                        </td>
                      <td>
                            <a href="about.jsp" class="homeblue">About</a> 
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
            %> 
        <style>
            
            
        </style>
              
               <div  class="heder_menu">
            
            <table>
               <tr>
                         <td>
                            <a href="index.jsp"  class="homeblue">Index</a>
                            
                         </td>
              
                    
                        <td>
                             <a href="#"  class="homered">Home</a>
                        </td>
                    
                        <td>
                           
                            <a href="help.jsp" class="homeblue">Help</a>
                        </td>
                     
                        <td>
                            <a href="about_us.jsp" class="homeblue">About Us</a> 
                        </td>

                       
                    </tr>
                   
            
              </table>
             </div>
             <%
          
        %>
            
        
            
       
         <div id="newsfield">
            <h> News</h>
            <marquee width="80%" direction="up" height="60%" style="font-size:25px">
                Sample News About <span style="color:red">CarRen!</span><hr>
               Project Made By <span style="color:red">Miss. Bhargavi Joshi</span><hr>
               Name Of College <span style="color:red">DR.BNCPE</span><hr>
               Project Head  <span style="color:red">Miss. Aparna Kapse</span><hr>
               HOD Of College <span style="color:red">Miss. Swati Khobragade</span><hr>
               
            </marquee>
        </div><div id="contentname"><h3>Content</h3>
            <div id="content">
                
                <img  name="slide" width="400" height="300" alt="../images/10.jpg"/>
                
               
            </div>
        </div>
        
              <div id="dropdown">
                  <form action="#" onclick="return ClassNameHere()" method="post">
            <table>
                <tr> 
                    <td> Location</td>
                   
                   
                  
                
        <td>
            <select name="dist" id ="location" required="" >
                <option  value="all"> All </option> 
   <%                                       
while(rs2.next())
{
   
      String dist=rs2.getString(2);
  
  
    request.setAttribute("district",dist);

    
    
%>   

                       
                            <option value="<%
                                    out.println(request.getAttribute("district"));
                                    
                                %>">
                                <%
                                    out.println(request.getAttribute("district"));
                                    }
                                %>
                            </option>

                           
            </select>
       
        </td></tr>
                <tr>
                   <td> Cars</td>
                   <td> <select name="car" id="cars" required="">
                             <option  value="all"> All </option>
                               <%                                       
while(rs3.next())
{
   
      String allcar=rs3.getString(2);
  
  
    request.setAttribute("allcar",allcar);

    
    
%>   

                       
                            <option value="<%
                                    out.println(request.getAttribute("allcar"));
                                    
                                %>">
                                <%
                                    out.println(request.getAttribute("allcar"));
                                    }
                                %>
                            </option>

                           
                         </select>
                    </td>
                   
                </tr>
                <tr>
                    <td>
                 <input type="submit" value="Search"/>
                    </td>
                </tr>
            </table>
                  </form>
        </div>
            
        <div id="extra">
            <h5> Extra</h5>
            <marquee width="80%" direction="up" height="60%" style=" align-content: center" behavior="alternate">
               
               

                    <hr><i style="font-size:20px">CarOnRent</i>
                    <img src="../images/extratabimg/1.jpg" alt="../images/extratabimg/12.JPG" height="100px" width="300px"/>
                    <hr><i style="font-size:20px">CarOnRent</i>
                   <img src="../images/extratabimg/10.jpg" alt="../images/extratabimg/12.JPG" height="100px" width="300px"/>
                   <hr><i style="font-size:20px">CarOnRent</i>
                   <img src="../images/extratabimg/11.jpg" alt="../images/extratabimg/12.JPG" height="100px" width="300px"/>
                   <hr><i style="font-size:20px">CarOnRent</i>
                   <img src="../images/extratabimg/12.JPG" alt="../images/extratabimg/12.JPG" height="100px" width="300px"/>
                   <hr><i style="font-size:20px">CarOnRent</i>
                   <img src="../images/extratabimg/3.jpg" alt="../images/extratabimg/12.JPG" height="100px" width="300px"/>
                   <hr><i style="font-size:20px">CarOnRent</i>
                   <img src="../images/extratabimg/4.jpg" alt="../images/extratabimg/12.JPG" height="100px" width="300px"/>
                   <hr><i style="font-size:20px">CarOnRent</i>
                   <img src="../images/extratabimg/7.jpg" alt="../images/extratabimg/12.JPG" height="100px" width="300px"/>
                   <hr><i style="font-size:20px">CarOnRent</i>
                   <img src="../images/extratabimg/5.jpg" alt="../images/extratabimg/12.JPG" height="100px" width="300px"/>
                   <hr><i style="font-size:20px">CarOnRent</i>
                   <img src="../images/extratabimg/8.jpg" alt="../images/extratabimg/12.JPG" height="100px" width="300px"/>
                   <hr><i style="font-size:20px">CarOnRent</i>
                   <img src="../images/extratabimg/2.png" alt="../images/extratabimg/12.JPG" height="100px" width="300px"/>
                   <hr>
             </marquee>
            
        </div>
        
        
        
        
      

        
        
        
        
        
        
        
        
               <div id="data">
                   <div id="contenttable">
                   <table>
                       <tr id="tbbbold">
                             <td>
                               Name
                           </td>
                            <td>
                               Mobile
                           </td>
                            <td>
                               District
                           </td>
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
                               Profile Show
                           </td>
                            
                       </tr>  <%       
   
                           
while(rs.next())
{
   
   
    
   
      
      String fname=rs.getString("customer.fname");
      
      String sname=rs.getString("customer.sname");
      String mobile_no=rs.getString("customer.mobile_no");
      String dist=rs.getString("customer.dist");
    String vihicalname=rs.getString("carsinfo.vihicalname");
    
    String color=rs.getString("carsinfo.color");
    String rate_non_ac=rs.getString("carsinfo.price_non_ac");
    
    String rate_ac=rs.getString("carsinfo.price_ac");
   
  
    
  
    request.setAttribute("fname", fname);
    request.setAttribute("sname", sname);
    request.setAttribute("mobile", mobile_no);
    request.setAttribute("dist", dist);
    
    request.setAttribute("vihicalname", vihicalname);
    request.setAttribute("color", color);
    request.setAttribute("rate_non_ac", rate_non_ac);
    request.setAttribute("rate_ac", rate_ac);
    
    
%>
                       <tr id="">
                           
                            <td>
                                
                                <%
                                       
                              out.println(request.getAttribute("fname"));
                                
                                out.println(request.getAttribute("sname"));
                                %>
                           </td>
                             <td>
                                
                               <% 
                                     out.println(request.getAttribute("mobile"));
                             
                               %>
                           </td>
                            <td>
                               
                               <% 
                               out.println(request.getAttribute("dist"));
                               %>
                           </td>
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
                             
                                <a href="#" onclick="return ClassNameHere()">Click</a>
                           </td>
                       </tr>
                                  <%
            }
            %>
           
                   </table>
                       
                   </div>
                 
        </div>
            <%--  
        <div id="morelink">
                       <a href="#">See More...</a>
                       </div>
        --%>
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