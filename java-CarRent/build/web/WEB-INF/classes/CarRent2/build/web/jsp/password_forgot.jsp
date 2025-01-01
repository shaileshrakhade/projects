

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
            <% 
         try{
                    Connection con;
                    PreparedStatement pst,pst2;
                    
            String mob = request.getParameter("mob");
            String fname = request.getParameter("fname");
            String uid = request.getParameter("uid");
            String dob = request.getParameter("dob"); 
            
            
            
            
                    Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/carrent?user=root&password=root&useSSL=false");

pst2=con.prepareStatement("select pass from customer where mobile_no=? and fname=? and uid=? and dob=?;");

pst2.setString(1,mob);
pst2.setString(2,fname);
pst2.setString(3,uid);
pst2.setString(4,dob);
ResultSet rs=pst2.executeQuery();


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <jsp:include page="header.jsp"></jsp:include>
       <link href="../images/logo/logo2.jpg" rel="icon" type="image/png"/>
       <link href="../css/passwordforgot.css" rel="stylesheet" type="text/css"/>
       <script src="../js/forgatpasswordvalidation.js" type="text/javascript"></script>
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
            <h1>Forgot Password</h1>
            <h3>We Can Change Your Password <span style="color:orange">Hear</span></h3>
            <div id="showpass">
           <%
                

            if(rs.next())
            {
               
                String msg = (rs.getString("pass"));

    %>
            <h4 id="">
                                 <%
                                     out.println("Your Password Is");
                                 %>
                                 <br><span style="color: #ff3333">
                                 <%
                                     out.println(msg);
                                 %>
                                 </span>
             </h4>
   <%


            }
            else
            {

                 String msg = ("Hear is Your Password!");
    %>
    <h4 id=""><br>
                             <%
                                 out.println(msg);
                             %>
                         
            </h4>
    <%
        
    }
}catch(Exception e)
{
    out.println(e);
}

%>
            </div>
            
            
           <h4 id="msg">
                             <%
                                 out.println("Fill All Fields!");
                             %>
                         
            </h4>  
            <div id="forgot">
                 
               
                   
                
                <form action="#" method="post" onsubmit="return myforgetpass()">
            <table>
               
                <tr>
                    <th>Enter Mobile Number</th><th>:</th>
                    <td>
                        <input type="text" placeholder="0000000000" id="mob" name="mob" />
                    </td>
               
                    <td> 
                        <div class="errormsg">
                                <span id="msgmob"></span>
                                 
                       </div>
  
                    </td>
                </tr>
                <tr>
                    <th>Enter First Name</th><th>:</th>
                    <td>
                        <input type="text" placeholder="First Name" id="fname" name="fname" />
                    </td>
                    <td>
                     <div class="errormsg">
                                <span id="msgfname"></span>
                                 
                       </div>
                    </td>
                </tr>
                <tr>
                    <th>Enter User Id</th><th>:</th>
                    <td>
                        <input type="text" placeholder="User Id" id="uid" name="uid"/>
                    </td>
                    <td>
                     <div class="errormsg">
                                 <span id="msguid"></span>
                                 
                       </div>
                    </td>
                </tr>
                <tr>
                    <th>Date Of Birth</th><th>:</th>
                    <td>
                        <input type="date" placeholder="DD/MM/YYYY" id="dob" name="dob"/>
                    </td>
                    <td>
                     <div class="errormsg">
                                <span id="msgdob"></span>
                                 
                       </div>
                    </td>
                </tr>
                <tr>
                   
                    <td>
                        <input type="submit" value="Submit"/>
                       
                    </td>
                   
                </tr>
                
                
          
            </table>
                </form>
            </div></div>
    </body>
</html>
