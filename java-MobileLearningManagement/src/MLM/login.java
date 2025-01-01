package MLM;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Timer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import stockBeans.*;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);		
		String userid,fpassword;
		userid= request.getParameter("uid");
		fpassword= request.getParameter("psw");
		PrintWriter out=response.getWriter();
		HttpSession session = request.getSession();
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		
		try
		{
			DbCon conn=new DbCon();
			con=conn.getDbcon();
			pst=con.prepareStatement("select * from Register where emailid =? and pass =?");			
			pst.setString(1,userid );
			pst.setString(2, fpassword);			
			rs=pst.executeQuery();			
			if(rs.next())
			{
				
				session.setAttribute("sid", rs.getString(1));
				session.setAttribute("sname", rs.getString(2));
				session.setAttribute("sutype", rs.getString(5));		
				
				if(rs.getString(5).equals("teacher"))
				{
					
					response.sendRedirect("jsp/admin.jsp");
				}
				else if(rs.getString(5).equals("student"))
				{
					response.sendRedirect("jsp/StudentView.jsp");
				}
				else
				{
					out.print(rs.getString(5)+" user Type Not Found...");
				}
				con.close();
			}
			else
			{
				
				out.print("Authentication fail...");
			}
		}
		catch(Exception e)
		{
			out.println(e);
			
		}
		
	}

}
