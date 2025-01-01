<%-- 
    Document   : pic
    Created on : Mar 7, 2019, 3:23:52 PM
    Author     : Shailesh
--%>

<%@page import="java.io.InputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.MultipartRequest" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String pics = request.getParameter("name");
          
       String imgpath=getServletContext().getRealPath("img");
       MultipartRequest mr=new MultipartRequest(request,imgpath);
       out.print("Suessflly"+pics);
       InputStream ims= null;
       
           try{
               
           }
           catch(Exception e)
           {
               out.print(e);
           }
    
        %>
        
    </body>
</html>
