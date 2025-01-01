<%-- 
    Document   : home
    Created on : 17 Jan, 2019, 5:02:07 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="header.jsp"></jsp:include>
     
        <link href="../css/help.css" rel="stylesheet" type="text/css"/>
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
                           
                            <a href="#" class="homered">Help</a>
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
                             <a href="home.jsp"  class="homeblue">Home</a>
                        </td>
                    
                        <td>
                           
                            <a href="#" class="homered">Help</a>
                        </td>
                     
                        <td>
                            <a href="about_us.jsp" class="homeblue">About Us</a> 
                        </td>

                       
                    </tr>
                   
            
              </table>
             </div>
             <%
          
        %>
            
        
            
        
        
        <div id="upercontent">
        
        <h1> <b>Can I Help <span style="color: yellowgreen">You!</span></b></h1>
        
        
           <h3>
                    Some people do not afford to have a car, for those people this system become helpful .
                    
           </h3>
     
        <h2 style="color: #ff3300">
                    How to Use The Site.
                    
           </h2>
        
        <h3>Index</h3>
        <img src="../images/helppageimg/index.png" alt=""/><hr>
        <h3> Home page</h3>
        <img src="../images/helppageimg/home.png" alt=""/><hr>
        <h3> About Us</h3>
        <img src="../images/helppageimg/aboutus.png" alt=""/><hr>
        <h3> Login</h3>
        <img src="../images/helppageimg/login.png" alt=""/><hr>
        <h3> Forgat Password</h3>
        <img src="../images/helppageimg/forgatpassword.png" alt=""/><hr>
        <h3> Create New</h3>
        <img src="../images/helppageimg/newaccofcllient.png" alt=""/><hr>
        <h3> About</h3>
        <img src="../images/helppageimg/about.png" alt=""/><hr>
        <h3> Inserting car Details </h3>
        <img src="../images/helppageimg/vihicalregistration.png" alt=""/><hr>
        <h3> Change Password</h3>
        <img src="../images/helppageimg/changepass.png" alt=""/><hr>
        <h3> Profile Update</h3>
                Upcoming Modules..
        <h3> Logout</h3>
        Click logout Button on Header of the page
        
        
        
        
        </div>
        
        
        
                   <div id="contact">
            <h2><b>Technical Support </b></h2><hr>
            <img src="../images/logo/whatsapp.png" alt=""/>
            <a href="#"><span style="color: blue">9130429439</span></a>
        <br><hr>
        <img src="../images/logo/gmail.png" alt=""/>
     <a href="https://mail.google.com/mail/u/0/#inbox"><span style="color: blue">Bhargaavijoshi98@gmail.com</span></a>
        <br><hr>
        <img src="../images/logo/twitter.png" alt=""/>
      <a href="https://twitter.com/"><span style="color: blue">Click</span></a>
        
       <br><hr>
       <img src="../images/logo/facebook.png" alt=""/>
       <a href="https://www.facebook.com/profile.php?id=100004329436839"> <span style="color: blue">Click</span></a>
        
       <hr>
        
        </div>
       
         </body>
</html>


        
        
        
        
        
</html>
