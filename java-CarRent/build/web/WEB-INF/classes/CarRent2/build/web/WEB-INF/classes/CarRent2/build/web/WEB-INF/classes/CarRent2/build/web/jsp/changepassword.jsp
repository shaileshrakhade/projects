

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
            <% 
           
                    Connection con;
                    PreparedStatement pst,pst2;

            String oldpass = request.getParameter("oldpass");
      
        String uid = request.getParameter("uid");
            String newpass = request.getParameter("pass"); 
            
            
            
            
                    Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/carrent?user=root&password=root&useSSL=false");
pst=con.prepareStatement("UPDATE customer SET pass = '"+newpass+"' WHERE pass = '"+oldpass+"';");
pst2=con.prepareStatement("select * from customer where uid=? and pass=?;");

pst2.setString(1,uid);
pst2.setString(2,oldpass);
ResultSet rs=pst2.executeQuery();


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <jsp:include page="header.jsp"></jsp:include>
       <link href="../images/logo/logo2.jpg" rel="icon" type="image/png"/>
       <link href="../css/changepassword.css" rel="stylesheet" type="text/css"/>
       <script src="../js/changepassvalidation.js" type="text/javascript"></script>
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
            <h1>Change Password</h1>
            <h3>We Can Change Your Password <span style="color:orange">Hear</span></h3>
            
   <%
                

            if(rs.next())
            {
                 out.println("Login Sucessful "+rs.getString(1)+rs.getString(2));

            
                String msg = ("Change Password Successfully");

    %>
            <h4 id="msg">
                                 <%
                                     out.println(msg);
                                 %>
             </h4>
   <%


            }
            else
            {

                 String msg = ("Fill All Fields!");
    %>
            <h4 id="msg">
                             <%
                                 out.println(msg);
                             %>
                         
            </h4>
    <%
        
    }

   %>
            
            
            
            
                   
            <div id="forgot">
                 
               
                   
                
                <form action="#" method="post" onsubmit="return mypass()">
            <table>
               
                 <tr>
                    <th>Enter User Id</th><th>:</th>
                    <td>
                        <input type="text" placeholder="Uid" id="uid" name="uid"/>
                    </td>
               
                    <td> 
                        <div class="errormsg">
                            
                            <span id="uidmsg"></span>
                                 
                       </div>
  
                    </td>
                </tr>
                <tr>
                    <th>Enter Old Password</th><th>:</th>
                    <td>
                        <input type="text" placeholder="Old Password" id="oldpass" name="oldpass"/>
                    </td>
               
                    <td> 
                        <div class="errormsg">
                            
                            <span id="oldmsg"></span>
                                 
                       </div>
  
                    </td>
                </tr>
              
                <tr>
                    <th>Enter New Password</th><th>:</th>
                    <td>
                        <input type="password" id="newpass" placeholder="New Password" name="pass"/>
                    </td>
                    <td>
                     <div class="errormsg">

                         <span id="newmsg"></span>
                       </div>
                    </td>
                </tr>
                <tr>
                    <th>Re-enter Password</th><th>:</th>
                    <td>
                        <input type="password" id="repass" placeholder="Re-enter Password" name="re_pass"/>
                    </td>
                    <td>
                     <div class="errormsg">

                         <span id="repassmsg"></span>
                       </div>
                    </td>
                </tr>
                <tr>
                   
                    <td>
                        <input type="submit" value="Set New Password"/>
                       
                    </td>
                   
                </tr>
                
                
          
            </table>
                </form>
            </div></div>
    </body>
</html>
