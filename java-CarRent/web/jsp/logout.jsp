<%-- 
    Document   : logout
    Created on : Jan 23, 2019, 12:26:09 PM
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
            session.invalidate();
            response.sendRedirect("index.jsp");
            
            %>
    </body>
</html>
