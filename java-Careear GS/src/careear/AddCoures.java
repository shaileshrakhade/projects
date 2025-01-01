package careear;

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

import beans.DbCon;

/**
 * Servlet implementation class AddCoures
 */
@WebServlet("/AddCoures")
public class AddCoures extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCoures() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String nameofcourse,Education,information;
		nameofcourse= request.getParameter("nameofcourse");
		Education= request.getParameter("Education");
		information= request.getParameter("information");
		PrintWriter out=response.getWriter();
		Connection con;
		PreparedStatement pst;
		
		
		try
		{
			
			DbCon conn=new DbCon();
			con=conn.getDbcon();
			pst=con.prepareStatement("insert into  courses values(null,?,?,?,default);");		
			pst.setString(1,nameofcourse );
			pst.setString(2, information);
			pst.setString(3, Education);		
			int val=pst.executeUpdate();
			out.print(val);
			response.sendRedirect("/Careear_GS/jsp/adminPanal.jsp?msg="+val);
			}
		catch(Exception e)
		{
			out.println(e);
			
		}
		
		
	}

}
