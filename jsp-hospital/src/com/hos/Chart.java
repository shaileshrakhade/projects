package com.hos;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Chart
 */
@WebServlet("/Chart")
public class Chart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Chart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		
		HashMap<String, Integer> hash = new HashMap<String, Integer>();
		
		
		Connection con;
		ResultSet rs;
		PreparedStatement pst;
		try
		{
			//Class.forName("org.postgresql.Driver");
			DriverManager.registerDriver(new org.postgresql.Driver());
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres?user=postgres&password=221822");
			
			pst = con.prepareStatement("SELECT count(d.did),d.dspec" + 
					"	FROM hos.client_doctor as cd join hos.doctors as d" + 
					"	on d.did = cd.did" + 
					"	group by d.dspec;");
			rs = pst.executeQuery();
		
			while(rs.next())
			{
						hash.put(rs.getString(2), rs.getInt(1));
			}
			out.print(hash);
		
			con.close();
			rs.close();
			pst.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
