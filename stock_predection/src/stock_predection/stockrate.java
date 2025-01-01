package stock_predection;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stockBeans.*;

/**
 * Servlet implementation class stockrate
 */
@WebServlet("/stockrate")
public class stockrate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public stockrate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String date;
		int cid,oldrate, newsrate;
		Connection con;
		PreparedStatement pst;
		Statement st;
		ResultSet rs;
		
		PrintWriter out=response.getWriter();
	
		try
		{
	
		cid=Integer.parseInt(request.getParameter("cid"));
		date=request.getParameter("date");
		
		oldrate=Integer.parseInt(request.getParameter("cid"));
		newsrate=Integer.parseInt(request.getParameter("newsrate"));
		
		DbCon conn=new DbCon();
		con=conn.getDbcon();
		
		st=con.createStatement();		
		rs=st.executeQuery("select newrte from company_name where id="+cid);
		if(rs.next()) 
		{
			oldrate=rs.getInt("newrte");
			out.print(oldrate);
		}
		pst=con.prepareStatement("insert into stock_rate values(null,?,?,(select newrte from company_name where id=?),?);");
		
		pst.setInt(1, cid);
		pst.setString(2, date);
		pst.setInt(3, oldrate);
		pst.setInt(4, newsrate);
	
		
		pst.executeUpdate();
		
		calulation cal=new calulation();
		cal.setId(cid);
		cal.setOldrate(oldrate);
		cal.setNewrate(newsrate);
		
		if(cal.getResult().equals("update"))
		{
			out.println("done");
		}
		else
		{
			out.println(" not done");
		}
		
		
		
		out.println("registor"+oldrate);
		response.sendRedirect("jsp/admin.jsp");
	
		
		
		con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}
	}
	}


