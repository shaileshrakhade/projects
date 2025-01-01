

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
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
            
        
            
       
        
        
        
        
        <div id="maincontant">
            <h1>Profile edit</h1>
        </div>
    </body>
</html>
