          <% 
           
                    Connection con;
                    PreparedStatement pst2;

                     
                    
                    Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/carrent?user=root&password=root&useSSL=false");
pst2=con.prepareStatement("SELECT * FROM alldistrict;");



ResultSet rs2=pst2.executeQuery();

%>





<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="../images/logo/logo2.jpg" rel="icon" type="image/png"/>
         <script src="../js/massege_pop_up.js" type="text/javascript"></script>
         <script src="../js/newaccvalidation.js" type="text/javascript"></script>
        <title>CarOnRent!</title>
        <link href="../css/new_account.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1><i>Owner Registration Form</i></h1>
        <div id="cancelbtn">
                        <a href="index.jsp">Cancel</a>
        </div>
        
        <form action="../Customer_Profile"  method="post"   onsubmit="return validation()">
            <table id="tab_1"><hr>
               
               
                
                
                <tr>
                    <th><i>Name* :</i></th>
                    <td> 
                        <input type="text" placeholder="First Name" name="fname" id="fname">
                        <input type="text" placeholder="Middle Name" name="mname" id="mname">
                        <input type="text" placeholder="Surname" name="sname" id="sname">
                    </td> 
                    <th> 
                        <span id="msgname" style="color: red"></span>
                    </th>
                </tr>
                  <tr>
                    <th><i>Mobile No.* :</i></th>
                    <td> 
                        <input type="text" placeholder="Mobile Number" name="mobile" id="mobile_no">
                    </td>
                     <th> 
                        <span id="msg_mobile_no" style="color: red"></span>
                    </th>
                </tr>
                    <tr>
                    <th><i>Email* :</i> </th>
                    <td> 
                        <input type="text" placeholder="Email" name="email" id="email">
                    </td>
                     <th> 
                        <span id="msgemail" style="color: red"></span>
                    </th>
                </tr>
                  <tr>
                    <th><i>Date Of Birth* :</i> </th>
                    <td> 
                        <input type="date" placeholder="DD/MM/YY" name="dob" id="dob">
                    </td>
                     <th> 
                        <span id="msgdob" style="color: red"></span>
                    </th>
                </tr>
                 <tr>
                    <th><i>Country :</i></th>
                    <td> 
                        <input type="text" disabled="" placeholder="Country" name="country" value="India">
                    </td>
                </tr>
                 
                 <tr>
                    <th><i>State :</i></th>
                    <td> 
                        <input type="text" disabled="" placeholder="State"  value="Maharastra" name="state" id="state">
                    </td>
                    <th> 
                        <span id="msgstate" style="color: red"></span>
                    </th>
                </tr>
                
                    <tr>
                    <th><i>District* :</i></th>
                    <td> 
                        
                        <select placeholder="District" name="district" id="dist">
                     
                            <option value=""></option>
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
                            
                        </select>
                    </td>
                     <th> 
                        <span id="msgdist" style="color: red"></span>
                    </th>
                </tr>
               
                   <tr>
                    <th><i>Address :</i></th>
                    <td> 
                        <input type="text" placeholder="Address" name="address">
                    </td>
                </tr>
                   
                   
                
              
                
                <tr>
                    <th> <i>Write your specification :</i></th>
                    <td> 
                            <input type="text" placeholder="Specification" name="specification">
                    </td>
                
                </tr>
          
                
                <tr>
               
                    <th> <i>Enter the User Id* :</i></th>
                    <td> 
                        
                        <input type="text" placeholder="User Id" name="uid" id="userid">
                        <input type="text" placeholder="User Id" hidden="" name="uid1" id="userid1" value="<% 
                               out.println(request.getAttribute("uname1"));
                        %>">
                        
                       
                    </td>
                    <th> 
                        <span id="msguserid" style="color: red"></span>
                    </th>
                </tr>
                
                <tr>
                    <th><i>Enter Password* :</i></th>
                    <td> 
                        <input type="password" placeholder="Password" name="password" id="pass" >  
                    </td>
                    <th> 
                        <span id="msgpass" style="color: red"></span>
                    </th>
                </tr>
                <tr>
                    <th><i>Re-Enter password* :</i></th>
                    <td> 
                        <input type="password" placeholder="Re-Password" name="re_password" id="repass">
                    </td>
                    <th> 
                        <span id="msgrepass" style="color: red"></span>
                    </th>
                </tr>
           
                
           
           
            
                
            </table> <hr class="line"><hr class="line">
            <table id="tab_3">  
                <tr>
                   
                    
                    <td>
                        <input type="reset" value="Reset">
                    </td>
                    <td>
                        <input type="submit" value="Submit">
                    </td> 
                </tr>
            </table>
         
       
        </form>
       
    </body>
</html>


    
<%
    String msgalt =(String) request.getAttribute("loginex");
    if (msgalt=="sdr123")
    {
        System.out.print("alrt");
    }
    else
    {
        
        
    }

%>
