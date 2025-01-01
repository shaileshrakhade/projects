/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package carrent;
import static java.awt.SystemColor.text;
import java.io.IOException;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static jdk.nashorn.internal.objects.NativeFunction.function;


/**
 *
 * @author Shailesh
 */
public class Customer_Profile extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try 
        
      {
            /* TODO output your page here. You may use following sample code. */
            Connection con;
            PreparedStatement pst,pst2,pst3;
            
            
            String fname = request.getParameter("fname");
            String mname = request.getParameter("mname");
            String sname = request.getParameter("sname");
            String  uid= request.getParameter("uid");
            
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            String mobile = request.getParameter("mobile");
            String address = request.getParameter("address");
            String state = "Maharastra";//request.getParameter("state");
            String district = request.getParameter("district");
            String specification = request.getParameter("specification");
            String  country ="India"; //request.getParameter("country");
           String  dob = request.getParameter("dob");
        
           
           
           Class.forName("com.mysql.cj.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/carrent?user=root&password=root&useSSL=false");
pst=con.prepareStatement("insert into customer values(?,?,?,?,?,?,?,?,?,?,?,?,?,?);");


pst2=con.prepareStatement("SELECT * FROM customer where uid=?;");
pst3=con.prepareStatement("SELECT * FROM customer;");
pst2.setString(1, uid);

ResultSet rs=pst2.executeQuery();
ResultSet rs2=pst3.executeQuery();

if(rs.next())
{
    int idd = Integer.parseInt(rs.getString("id")); 
     String names = rs.getString(5);
System.out.println("insert information successfully"+names);

    if(names!="")
        {
            System.out.println("not avaleble"+uid);
            request.setAttribute("loginex","sdr123");
            response.sendRedirect("jsp/new_account.jsp");
            
        }
        else if(names=="")
        {
             System.out.println("avalebal"+idd);
        }



}
else
{

 System.out.println("avalebal");


  int id=0;
if(rs2.last()){ 
id=rs2.getInt("id")+1; 
} 


//conversion of string data into integre data!
 
pst.setInt(1,id);
pst.setString(2,fname);
pst.setString(3,mname);
pst.setString(4,sname);
pst.setString(5,uid);
pst.setString(6,password);
pst.setString(7,email);
pst.setString(8,mobile);
pst.setString(9,address);
pst.setString(10,state);
pst.setString(11,district);
pst.setString(12,specification);
pst.setString(13,dob);
pst.setString(14,country);




pst.executeUpdate();

System.out.println("insert information successfully");
out.println("insert information successfully"+uid);
response.sendRedirect("jsp/index.jsp");
      
}  
}
    

    


          

    


      
catch(  ClassNotFoundException | NumberFormatException | SQLException e)
{
System.out.println("error :"+e);
}
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Customer_Profile.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Customer_Profile.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
