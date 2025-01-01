<%-- 
    Document   : index
    Created on : 17 Jan, 2019, 4:34:39 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="animation/peeled-text-transforms/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <link href="css/header.css" rel="stylesheet" type="text/css"/>
        <script src="animation/typed-text/js/index.js" type="text/javascript"></script>
        <jsp:include page="jsp/header.jsp"></jsp:include>
       
    </head>
    <body>
        
         <% 
            if(session.getAttribute("username") != null)
            {
        %>
       
        
               <div  class="heder_menu_2">
            
            <table>
               <tr>
                         <td>
                            <a href="#"  class="homered">Index</a>
                            
                         </td>
              
                    
                        <td>
                             <a href="jsp/home.jsp"  class="homeblue">Home</a>
                        </td>
                    
                        <td>
                           
                            <a href="jsp/help.jsp" class="homeblue">Help</a>
                        </td>
                      <td>
                            <a href="jsp/about.jsp" class="homeblue">About</a> 
                        </td>
                        <td>
                            <a href="jsp/about_us.jsp" class="homeblue">About Us</a> 
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
          
        </style>
        
        
                       
        <%
             String sessionName=(String) session.getAttribute("username");
             out.println("Session username : " + sessionName);
             
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
                            <a href="#"  class="homered">Index</a>
                            
                         </td>
              
                    
                        <td>
                             <a href="jsp/home.jsp"  class="homeblue">Home</a>
                        </td>
                    
                        <td>
                           
                            <a href="jsp/help.jsp" class="homeblue">Help</a>
                        </td>
                     
                        <td>
                            <a href="jsp/about_us.jsp" class="homeblue">About Us</a> 
                        </td>

                       
                    </tr>
                   
            
              </table>
             </div>
             <%
          
        %>
            
        
            
       
        
        
        
        
        
        
        
        
        
        
        <div id="back_img">
            <img src="images/index_back.jpg" alt=""/>
            
        </div>
        
        <div id="project_name">
                        <h2>My Cars On <h2>
                        <h1>RENT</h1>
                        <h3>... </h3>
            
        </div> 
        
        <div id="project_moto">
            <h4>Relax ,you are with us!<h4>
            <h3>we make it<span id="messageLabel"> SIMPLE...</span></h3>
            <script src="animation/typed-text/js/index.js"></script>
        </div>
         <div id="info_label">
             
             <ul> 
                 <li> Total peoples</li>
                <li> 000000 </li>
             
             </ul>
              <ul> 
             <li> Total cars</li>
             <li> 66666666 </li>
             
             </ul>
            <ul> 
             <li> Total km covers</li>
             <li> 00000000 </li>
             
             </ul>
            
                </div>
       
    </body>
</html>

      
        