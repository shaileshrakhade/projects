package careear;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
import java.io.*;
import beans.*;



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
	String ps,nm,mob,id2 ,nm2,mob2;
		
		Connection con; 
		PreparedStatement pst;
		Statement st;
		ResultSet rs;
		
		
		PrintWriter out=response.getWriter();
		HttpSession session = request.getSession();
	
		try
		{
	
		ps=request.getParameter("psw");
		nm=request.getParameter("name");
		mob=request.getParameter("mob");
		
		DbCon conn=new DbCon();
		con=conn.getDbcon();
		pst=con.prepareStatement("insert into Student values(null,?,?,?,default);");		
		pst.setString(1, nm);
		pst.setString(2, mob);
		pst.setString(3, ps);		
		pst.executeUpdate();
		out.println("registor");
		st=con.createStatement();
		rs=st.executeQuery("select * from Student;");
		//response.sendRedirect("../index.jsp");
		while(rs.last())
		{
			id2=rs.getString(1);
			nm2=rs.getString(2);
			mob2=rs.getString(3);
			session.setAttribute("suid", id2);
			
			session.setAttribute("sname", nm2);
			session.setAttribute("smob", mob2);
			response.sendRedirect("jsp/profile.jsp?id="+id2+"&name="+nm2+"&mob="+mob2+"");
		
		}
		con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}
}
	

