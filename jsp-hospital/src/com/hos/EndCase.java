package com.hos;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EndCase
 */
@WebServlet("/EndCase")
public class EndCase extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EndCase() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		
		int id = Integer.parseInt(request.getParameter("id"));
		Connection con;
		PreparedStatement pst;
		try
		{
			DriverManager.registerDriver(new org.postgresql.Driver());
			
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres?user=postgres&password=221822");
			pst = con.prepareStatement("UPDATE hos.client_doctor "
										+ "SET case_ended=true "
										+ "WHERE id=?;"
									  );
			pst.setInt(1, id);
			
			int i = pst.executeUpdate();
			
			
			pst.close();
			con.close();
			if(i==1)
			{
				out.print("Case Ended");
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}finally {
			out.close();
		}
	}

}
