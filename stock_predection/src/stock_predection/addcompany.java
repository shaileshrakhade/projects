package stock_predection;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stockBeans.DbCon;

/**
 * Servlet implementation class addcompany
 */
@WebServlet("/addcompany")
public class addcompany extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addcompany() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String newcname;
		int oldrate;
		Connection con;
		PreparedStatement pst;
		PrintWriter out=response.getWriter();
	
		try
		{

		newcname=request.getParameter("companyadd");
		oldrate=Integer.parseInt(request.getParameter("oldrate"));
		
		DbCon conn=new DbCon();
		con=conn.getDbcon();
	
		pst=con.prepareStatement("insert into company_name values(null,?,?,null,null);");
		
	
		pst.setString(1, newcname);
		pst.setInt(2, oldrate);
	
		
		pst.executeUpdate();
		
		out.println("registor");
		response.sendRedirect("jsp/admin.jsp");
		
	
		
		
		con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}

}
