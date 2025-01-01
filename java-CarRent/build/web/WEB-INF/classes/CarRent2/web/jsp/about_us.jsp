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
        <link href="../css/about_us.css" rel="stylesheet" type="text/css"/>
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
                            <a href="#" class="homered">About Us</a> 
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
                            <a href="#" class="homered">About Us</a> 
                        </td>

                       
                    </tr>
                   
            
              </table>
             </div>
             <%
          
        %>
            
        
            
      
      
        
         
            
        
            
            
    
        <div id="back_img">
          
            <img src="../images/11.jpg" alt=""/>
        </div>
        
        <div id="para">
           
  
            <h1>Something about our car <span style="color: gold">CaRent</span></h1>
                    
                <h3>  As any of us already know that Transport facility is a headache for those people<br> 
                    who do not have any personal transport so our car rental 
                    system helps us to find a car by some clicks only.
                    <br> 
                    Car rental system is a online facility to book a car .
                    some people do not afford to have a car, for those people this system become helpful .<br>
                
                </h3>
                  <table>
                      <tr>
                            <ul>
                                   <li>   <b> Detailed existing system functions are listed as follows</b></li>
                            </ul>
                             <br>
                             <br>
                             <ol>

                                 <li>    To register your car, any car provider or car owner must need to create profile on this site first by signing up .</li>
                                   <br>
                                   <li> Every car provider must have to add their car details after signing up.</li>
                                 
                                   <br>
                                   <li>    During the reservation the customers reserve vehicales by making phone call to the organization;</li>
                                     <br>otherwise customer is need to go to organization  to make reservation
                            </ol>
                        </tr>
                                    <br>
                        <tr>
                        <ul>
                            <li> <b> Do you qualify for add your Car on rental site ?</b></li>
                        </ul>
                                    <br>
                                    <br>
                                    <ol>
                                        <li>  You must be 21 years of age or older.</li>
                                     <br>
                                          <li>  You must have comprehnsive and collision converage on your vechile.</li>

                                    <br>
                                         <li>  You must have driving licence. </li>
                                     <br>
                                   
                                              <li>  You must be 21 years of age or older.</li>
                                    <br>
                                             <li>   You must have comprehnsive and collision converage on your vechile.</li>

                                   <br>
                                             <li>You must have driving licence. </li>
                                    <br>
                                    <br>
                                   
                                    </ol>
                          </tr>
                                  

                        <h2>Thank you.</h2>
                        <br>


                                 
       
                
        
</table>
      </div> 
        <div id="contact">
            <h2><b> Ask more about car renatal system when you come in or call us At</b></h2><hr>
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



