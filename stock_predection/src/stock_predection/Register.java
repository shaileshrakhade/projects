package stock_predection;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.io.*;
import stockBeans.*;



/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	String ps,nm;
		
		Connection con;
		PreparedStatement pst;
		PrintWriter out=response.getWriter();
	
		try
		{
	
		ps=request.getParameter("psw");
		nm=request.getParameter("name");
		
		
		DbCon conn=new DbCon();
		con=conn.getDbcon();
		pst=con.prepareStatement("insert into user values(null,?,?,default);");
		
		pst.setString(2, ps);
		pst.setString(1, nm);
	
		
		pst.executeUpdate();
		
		out.println("registor");
		
		response.sendRedirect("jsp/RegSucess.jsp");
		
		
		con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}
}
	

