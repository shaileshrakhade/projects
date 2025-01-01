package careear;

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

import beans.DbCon;

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
		String uid,pass;
		Connection con; 		
		Statement st;
		ResultSet rs;
		PrintWriter out=response.getWriter();
		HttpSession session = request.getSession();
		try
		{	
		uid=request.getParameter("Uid");
		pass=request.getParameter("Pass");				
		DbCon conn=new DbCon();
		con=conn.getDbcon();		
		
		st=con.createStatement();
		rs=st.executeQuery("select * from Student where userType='student' and mob='"+uid+"' and pass='"+pass+"';");
		
//		if(rs.equals(null))
//		{
//			out.println("Authentication Not Valid ");
//			
//			response.sendRedirect("/Careear_GS/");
//		}else
//		{
		//response.sendRedirect("../index.jsp");
		if(rs.next())
		{
//			id2=;
//			nm2=;
//			mob2=rs.getString(3);
			session.setAttribute("suid", rs.getString(1));
			session.setAttribute("sname", rs.getString(2));
			session.setAttribute("UserType", rs.getString(5));	
			String utype=rs.getString("userType");
			System.out.print(utype);
			
			out.print(utype);
			out.print("in student");
		 response.sendRedirect("jsp/profile.jsp");
			
		
		}
		else
		{
			response.sendRedirect("/Careear_GS/");
		}
//		}
		con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}

}
