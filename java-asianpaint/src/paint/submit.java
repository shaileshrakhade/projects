package paint;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 

import java.sql.*;
/**
 * Servlet implementation class submit
 */
@WebServlet("/submit")
public class submit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public submit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection con;
		PreparedStatement pst;
		String name,email,mob,pincode;
		PrintWriter out =response.getWriter();
		try
		{

			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/paint?user=root&password=root");
			
		
		name=request.getParameter("name");
		email=request.getParameter("email");
		mob=request.getParameter("mob");
		pincode=request.getParameter("pincode");
		 
		
		
	
		pst=con.prepareStatement("insert into enquire values(null,?,?,?,?);");
		
	
		pst.setString(1, name);
		pst.setString(2, email);
		pst.setString(3, mob);
		pst.setString(4, pincode);
	
		
		int count=pst.executeUpdate();
		
		
		out.print(count);
	
		if(count==1)
		{
			 
			response.sendRedirect("index2.html");
		}
		else
		{
			 
			response.sendRedirect("index.jsp");
		}
		
		con.close();
		}
		catch(Exception e)
		{
		out.print(e);
		}
	}
		
	}


