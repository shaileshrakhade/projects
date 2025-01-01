package MLM;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	String ps,nm,em,utype;
		
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		PrintWriter out=response.getWriter();
		HttpSession session = request.getSession();
	
		try
		{
	
		ps=request.getParameter("psw");
		nm=request.getParameter("name");
		em=request.getParameter("email");	
		utype=request.getParameter("utype");	
		
		DbCon conn=new DbCon();
		con=conn.getDbcon();
		pst=con.prepareStatement("select id,emailid  from Register where emailid =?");	
		pst.setString(1, em);
		rs=pst.executeQuery();
		if(rs.absolute(1))
		{
			out.print(rs.getString(2));
			out.print("/n This Email Id Is Exist...");	
		}
		else
		{
			out.print("sdr");	
		
//		if(rs.getString(1)==null)
//		{
//		out.println("in if"+rs.getString(1));
		pst=con.prepareStatement("insert into Register values(null,?,?,?,?);");
		pst.setString(1, nm);
		pst.setString(2, em);
		pst.setString(3, ps);
		pst.setString(4, utype);
		int ststus=pst.executeUpdate();
		if(ststus==1)
		{
			pst=con.prepareStatement("select *  from Register ");	
			
			rs=pst.executeQuery();
			if(rs.last())
			{
				out.println("registor");
				session.setAttribute("sid", rs.getString(1));
				session.setAttribute("sname", rs.getString(2));
				session.setAttribute("sutype", rs.getString(5));
			}
			if(rs.getString(5).equals("teacher"))
			{
				response.sendRedirect("jsp/admin.jsp");
			}else
			{
				response.sendRedirect("jsp/StudentView.jsp");
				
			}
			
			
		}else
		{
			out.println("Proble In regiter...");
		}
//		}else
//		{
//			out.println("in else");
//		}
		}
		
		con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}
}
	

