<%-- 
    Document   : session
    Created on : Jan 23, 2019, 12:16:10 PM
    Author     : Shailesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
       <% 
            if(session.getAttribute("username") != null)
            {
        %>
        see, the server rememberd you:
        
<div id="right_heder">
                <td> <a href="#" id="button">Login/Sign In</a></td>
                       
        <%
             String sessionName=(String) session.getAttribute("username");
             out.println("Session username : " + sessionName);
             
            %>
            <br>
            <a href="logout.jsp">logout</a>
            <%
               }
          else
            %> <h1>success!</h1>
        <%
          
        %>
    </body>
</html>

