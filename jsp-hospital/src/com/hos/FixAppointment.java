package com.hos;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FixAppointment
 */
@WebServlet("/FixAppointment")
public class FixAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FixAppointment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out= response.getWriter();
	
		int id = Integer.parseInt(request.getParameter("aid"));
		String strd = request.getParameter("dat");
		java.sql.Date date1 = java.sql.Date.valueOf(strd);
		
		System.out.println("date :- "+date1.toString());
		Connection con;
		PreparedStatement pst;
		try
		{
		//	Class.forName("com.mysql.cj.jdbc.Driver");
			DriverManager.registerDriver(new org.postgresql.Driver());
			
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres?user=postgres&password=221822");
			pst = con.prepareStatement("UPDATE hos.client_doctor SET appointment_date=?,isappointed=true WHERE id=?;");
			pst.setDate(1, date1);
			pst.setInt(2, id);
			int i = pst.executeUpdate();
			
			if(i == 1)
			{
				out.println("Updated");
			}
			pst.close();
			con.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}finally {
			out.close();
		}
	}

}
