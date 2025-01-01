/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package carrent;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Shailesh
 */
public class login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
              
            try
            {
                    Connection con;
                    PreparedStatement pst;

                    String uname = request.getParameter("username");
                    String pass = request.getParameter("password");
                    
                    Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/carrent?user=root&password=root&useSSL=false");
pst=con.prepareStatement("select * from customer where uid=? and pass=?;");

pst.setString(1,uname);
pst.setString(2,pass);
ResultSet rs=pst.executeQuery();

if(rs.next())
{
    
    
    out.println("Login Sucessful "+rs.getString(1));
    
    String session_id=rs.getString(1);
    String session_fname=rs.getString(2);
    String session_mname=rs.getString(3);
    String session_sname=rs.getString(4);
    String session_uid=rs.getString(5);
    
    String session_email=rs.getString(7);
    String session_mobile=rs.getString(8);
    String session_address=rs.getString(9);
    String session_cstate=rs.getString(10);
    String session_dist=rs.getString(11);
    String session_specification=rs.getString(12);
    String session_dob=rs.getString(13);
     String session_country=rs.getString(14);
   HttpSession session =request.getSession();
   
    session.setAttribute("sid", session_id);
    session.setAttribute("fname", session_fname);
    session.setAttribute("mname", session_mname);
    session.setAttribute("sname", session_sname);
    session.setAttribute("suid", session_uid);
    session.setAttribute("semail", session_email);
    session.setAttribute("smobile", session_mobile);
    session.setAttribute("saddress", session_address);
    session.setAttribute("scstate", session_cstate);
    session.setAttribute("sdist", session_dist);
    session.setAttribute("sspecification", session_specification);
    session.setAttribute("sdob", session_dob);
    session.setAttribute("scountry", session_country);
   response.sendRedirect("jsp/about.jsp");
  
   

   
}
else
{
    
    out.println("<h3>Login Faild..<h3>");
  
    
    out.println("The User Name:- "+uname+" OR Password :- "+pass+" Is Wrong!");
    
     out.println("<p>Go Back!<p>");
     out.println(" <a href=\"index.jsp\" onclick=\"return ClassNameHere()\">Click</a>");
}

                
            }
            catch(ClassNotFoundException | SQLException e)
            {
                out.println("error"+ e);
            }
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
     
        {
            
            
        }
        
        
        
    }
 @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
    }
   
}
