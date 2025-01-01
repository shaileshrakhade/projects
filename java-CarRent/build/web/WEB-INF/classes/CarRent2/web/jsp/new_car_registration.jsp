
          <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<% 
           
                    Connection con;
                    PreparedStatement pst2;

                     
                    
                    Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/carrent?user=root&password=root&useSSL=false");
pst2=con.prepareStatement("SELECT * FROM allcars;");



ResultSet rs2=pst2.executeQuery();

%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
       
        <meta charset="UTF-8">
        <link href="../css/newcarregistration.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
           <link href="../images/logo/logo2.jpg" rel="icon" type="image/png"/>
           <script src="../js/newcarregistrationvalidation.js" type="text/javascript"></script>
        <title>CarOnRent!</title>
    </head>
    
    <body>    
        
          <% 
            if(session.getAttribute("sid") != null)
            {
            
        %>
        <h2>Introduce With Your <span style="color: red">Vehicle!</span></h2>
       
        <form action="../newcar" method="post" onsubmit="return carvalidation()">
            
             <div id="uid">
      
                    
                    
            <h2><% out.print(session.getAttribute("suid")); %>
                <input name="uid" hidden="" value="<% out.print(session.getAttribute("suid")); %>">
            </h2>
        </div>
            
            
            <div id="vihicalform">
            <table id=""><hr>                
                
                  <tr>
                      <th>Name Of Vehicle*</th><th>:</th>
                    <td> 
                        
                                                
                        <select placeholder="Audi R8" name="vehiclename" id="vehiclename">
                     
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
                        <span id="msgvehiclename" style="color: red"></span>
                    </th>
                </tr>
                
                
                <%-- <tr>
                    <th>Engine*</th><th>:</th>
                    <td> 
                        <input type="text" placeholder="5204CC" name="Engine" id="Engine">
                        
                    </td>
                     <th> 
                        <span id="msgEngine" style="color: red"></span>
                    </th>
                </tr>
                --%>
                  <tr>
                    <th>Vehicle Number*</th><th>:</th>
                    <td> 
                        <input type="text" placeholder="MH00-AB-0143" name="vehicleno" id="vehicleno">
                    </td>
                     <th> 
                        <span id="msgvehicleno" style="color: red"></span>
                    </th>
                </tr>
                 <tr>
                    <th>Fuel Type</th><th>:</th>
                    <td> 
                        <select name="Fuel" >
                            <option value="">  </option>
                            <option value="Petrol"> Petrol </option>
                            <option value="Diesel"> Diesel </option>
                           
            </select>
                    </td>
                </tr>
                 <tr>
                    <th>Mileage Km/L</th><th>:</th>
                    <td> 
                        <input type="text" placeholder="17" name="Mileage" >
                    </td>
                </tr>
                <tr>
                    <th>Passing State*</th><th>:</th>
                    <td> 
                        <input type="text" placeholder="Maharatra" name="passing" id="passing" >
                    </td>
                     <th> 
                        <span id="msgpassing" style="color: red"></span>
                    </th>
                </tr>
                  <tr>
                    <th>Seats</th><th>:</th>
                    <td> 
                        <input type="text" placeholder="2" name="Seats" >
                    </td>
                </tr>
              
                
                <tr>
                    <th>Year of Purchase*</th><th>:</th>
                    <td> 
                       
                        <select placeholder="2019"  name="yearpurchase" id="yearpurchase">
                            
                            <option value=""></option>
                            <option value="2019">2019</option>
                             <option value="2018">2018</option>
                              <option value="2017">2017</option>
                               <option value="2016">2016</option>
                                <option value="2015">2015</option>
                                 <option value="2014">2014</option>
                                  <option value="2013">2013</option>
                                   <option value="2012">2012</option>
                                    <option value="2011">2011</option>
                                     <option value="2010">2010</option>
                                      <option value="2009">2009</option>
                                       <option value="2008">2008</option>
                                        <option value="2007">2007</option>
                                         <option value="2006">2006</option>
                                          <option value="2005">2005</option>
                                            <option value="2004">2004</option>
                                             <option value="2003">2003</option>
                                              <option value="2002">2002</option>
                                                <option value="2001">2001</option>
                                        
                                        
                                     
                        </select>
                    </td>
                    <th> 
                        <span id="msgyearpurchase" style="color: red"></span>
                    </th>
                </tr>
                
                    <tr>
                    <th>Color*</th><th>:</th>
                    <td> 
                        <input type="text" placeholder="Black" name="color" id="color">
                    </td>
                     <th> 
                        <span id="msgcolor" style="color: red"></span>
                    </th>
                </tr>
                   <tr>
                    <th> About Driver*</th><th>:</th>
                    <td> 
                        <textarea rows="2" cols="15" placeholder="About Driver In 30 Words" name="aboutdriver" id="aboutdriver"></textarea>
                    </td>
                     <th> 
                        <span id="msgaboutdriver" style="color: red"></span>
                    </th>
                
                </tr>
                    <tr>
                    <th>Other Details</th><th>:</th>
                    <td> 
                        <textarea rows="2" cols="15" placeholder="Details In 30 Words " name="otherdetail"></textarea>
                    </td>
                </tr>
                    
               <hr class="line">
                <tr>
                    <th><i>Price/Km With Non Ac*</i></th><th>:</th>
                    <td> 
                        <input type="text" placeholder="18" name="Price_Non_ac" id="Price_Non_ac">  
                    </td>
                     <th> 
                        <span id="msgPrice_Non_ac" style="color: red"></span>
                    </th>
                </tr>
                <tr>
               
                    <th> <i>Price/Km With Ac*</i></th><th>:</th>
                    <td> 
                        <input type="text" placeholder="22" name="Price_ac" id="Price_ac">  
                    </td>
                     <th> 
                        <span id="msgPrice_ac" style="color: red"></span>
                    </th>
                </tr>
              
            </table>
            
            </div>
        
        <div id="condition">
            <hr>
                <input type="checkbox" required="" placeholder=""> We Accept all Tearm and Condition!
           
                
        </div>
                
            
            <table id="tab_3">  
                <tr>
                    <td>
                        <input type="reset" value="Reset">
                    </td> 
                    <td>
                        <input type="submit" value="Submit">
                    </td> 
                    <td>
                        <a href="about.jsp">Cancel</a>
                    </td> 
                    
                </tr>
            </table>
         
       
        </form>
            <%
            
            }else
                response.sendRedirect("index.jsp");
            %>
                     
    </body>   
    

    `                               