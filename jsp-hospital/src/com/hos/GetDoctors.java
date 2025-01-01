package com.hos;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetDoctors
 */
@WebServlet("/GetDoctors")
public class GetDoctors extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetDoctors() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		
		String dspec = request.getParameter("di");
		System.out.println(dspec);
		
		HashMap<Integer, String> hash = new HashMap<Integer, String>();
		
		Connection con;
		ResultSet rs;
		PreparedStatement pst;
		try
		{
			//Class.forName("org.postgresql.Driver");
			DriverManager.registerDriver(new org.postgresql.Driver());
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres?user=postgres&password=221822");
			
			pst = con.prepareStatement("select did,dname from hos.doctors where dspec = ?;");
			pst.setString(1, dspec);
			rs = pst.executeQuery();
			
			while(rs.next())
			{
				int did = rs.getInt(1);
				String dname =rs.getString(2); 
				if(did!=0)
				{
					hash.put(did, dname);
				}
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
