package MLM;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import stockBeans.DbCon;

/**
 * Servlet implementation class Enroll
 */
@WebServlet("/Enroll")
public class Enroll extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Enroll() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int sid,tid;
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		PrintWriter out=response.getWriter();
		HttpSession session = request.getSession();
	
		try
		{
	
		sid=Integer.parseInt(session.getAttribute("sid").toString());
		tid=Integer.parseInt(request.getParameter("clsid"));
			
		DbCon conn=new DbCon();
		con=conn.getDbcon();
		pst=con.prepareStatement("select id,emailid  from Register where userType='teacher' and id =?");	
		//pst.setInt(1, sid);
		pst.setInt(1, tid);
		rs=pst.executeQuery();
		if(rs.absolute(1))
		{
			out.print(rs.getString(1));
			out.print("/n This Email Id Is Exist...");	
			pst=con.prepareStatement("insert into ClassWithStudent values(null,?,?,default);");
			pst.setInt(1, sid);
			pst.setInt(2, tid);			
			int ststus=pst.executeUpdate();
			if(ststus==1)
			{
				response.sendRedirect("jsp/StudentView.jsp");
			}
			else
			{
				out.print(" Valid Class Id... But Some Other Problem");	
			}
		}
		else
		{
			out.print("Not Valid Class Id...");			

		}
		
		con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}

}
