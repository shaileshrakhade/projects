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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Shailesh
 */
public class newcar extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            Connection con;
            PreparedStatement pst,pst2;
            
            String vehiclename = request.getParameter("vehiclename");
            String Engine = request.getParameter("Engine");
            String vehicleno = request.getParameter("vehicleno");
            String Fuel = request.getParameter("Fuel");
            String  Mileage= request.getParameter("Mileage");
            String passing = request.getParameter("passing");
            String Seats = request.getParameter("Seats");
            String yearpurchase = request.getParameter("yearpurchase");
            String color = request.getParameter("color");
            String aboutdriver = request.getParameter("aboutdriver");
            String otherdetail = request.getParameter("otherdetail");
            String Price_Non_ac = request.getParameter("Price_Non_ac");
            String  Price_ac = request.getParameter("Price_ac");
            String  uid = request.getParameter("uid");
        
           Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/carrent?user=root&password=root&useSSL=false");
pst=con.prepareStatement("insert into carsinfo values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);");


       

pst2=con.prepareStatement("SELECT * FROM carsinfo;");

ResultSet rs=pst2.executeQuery();


if(rs.last())
{



int idd = Integer.parseInt(rs.getString("id")); 
String vihicalname = rs.getString("vihicalname");
String uidd = rs.getString("uid");
System.out.println("insert information successfully"+idd+vihicalname+uidd);

int id=0;
if(rs.last())
{ 
id=rs.getInt("id")+1; 
}
 
//conversion of string data into integre data!
    
pst.setString(1,uid);     
pst.setString(2,vehiclename);
pst.setString(3,Engine);
pst.setString(4,Fuel);
pst.setString(5,Mileage);
pst.setString(6,passing);
pst.setString(7,Seats);
pst.setString(8,yearpurchase);
pst.setString(9,color);
pst.setString(10,aboutdriver);
pst.setString(11,otherdetail);
pst.setString(12,Price_Non_ac);
pst.setString(13,Price_ac);
pst.setString(14,vehicleno);
pst.setInt(15,id);


pst.executeUpdate();
System.out.println("insert information successfully");


con.close();
 response.sendRedirect("jsp/about.jsp");
}
      }
catch(  ClassNotFoundException | NumberFormatException | SQLException e)
{
System.out.println("error :"+e);
}
        
        
        }
    

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(newcar.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(newcar.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    

}
