<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
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

                    <link href="../css/header.css" rel="stylesheet" type="text/css"/>
                    <link href="../animation/peeled-text-transforms/css/style.css" rel="stylesheet" type="text/css"/>
                    <link href="../css/login.css" rel="stylesheet" type="text/css"/>
                    <script src="../js/login_pop_up.js" type="text/javascript"></script>
            </head>
                
            <body>
                         <%-- Uppper Header syntax --%>
                    <div id="heder">        

                                    <table>
                                        <tr>
                                            <td>

                                            </td>
                                        </tr> 


                                    </table>

                                                <%-- Right Side Heaser --%>

                                   <div id="right_heder">
                                           <a href="#" id="button" class="loginname">Login/Sign In</a>
                                           <a href="logout.jsp"  class="logoutname">Logout</a>

                                   </div>
                                                <div id="session_name">
                                      <h3><% out.print(session.getAttribute("sname")); %></h3>    
                                                </div>
                                   <%-- Login Pop up --%>     
                                <div class="box">
                                        <div class="close">
                                            <img height="45px" src="../images/xname.png" alt=""/>
                                        </div>

                                        <h1>Login</h1>
                                        
                                        <form action="../login" method="post">
                                                <div class="inputBox">
                                                     <label>Username</label>
                                                        <input type="text"  required="" name="username">
                                                       
                                                </div>

                                                 <div class="inputBox">
                                                     <label>Password</label>
                                                        <input type="Password"  required="" name="password">
                                                        <input type="submit" value="Login" name="" class="log">
                                                </div>
                                                      
                                        </form>
                                        <a href="password_forgot.jsp">Password Forgot</a>
                                        <a href="new_account.jsp"><h2>Sign Up</h2></a>
                                        
                                </div>
                                         
                    </div>   

                         <div id="logo"><jsp:include page="../animation/peeled-text-transforms/logo.html"></jsp:include></div>

                          <%-- Red color Line of Header --%>

                    <div id="line_of_heder">
                                <%-- red Color reader line --%>
                    </div>
                    
                    
                   

            </body>
            
</html>



<script>
    
    
       document.getElementById('button').addEventListener('click',function()
{
             document.querySelector('.box').style.display='block';
}
        );

   
    document.querySelector('.close').addEventListener('click',function()
        {
            document.querySelector('.box').style.display='none';
        }
        );

</script>