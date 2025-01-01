package careear;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.DbCon;

/**
 * Servlet implementation class enrollcourse
 */
@WebServlet("/enrollcourse")
public class enrollcourse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public enrollcourse() {
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
		int cid,sid;
		PrintWriter out=response.getWriter();
		HttpSession session = request.getSession();
		try{
			
			
		cid= Integer.parseInt(request.getParameter("cid").toString());	
		sid=Integer.parseInt(session.getAttribute("suid").toString());	
		Connection conn;
		PreparedStatement pst;			
		
			DbCon connn=new DbCon();
			conn=connn.getDbcon();
			pst=conn.prepareStatement("insert into enrollStudent values(null,?,?,default)");			
			pst.setInt(1, sid);			
			pst.setInt(2, cid);	
			int status=pst.executeUpdate();		
			if(status==1)
			{			
				conn.close();
				
				response.sendRedirect("http://localhost:8080/Careear_GS/jsp/studentprofile.jsp");
			}
			else
			{
			out.print("error");
					
			}
		
			conn.close();
		}
		catch(Exception e)
		{
			out.print(e);
			
		}
	}
		
		
	
	

}
