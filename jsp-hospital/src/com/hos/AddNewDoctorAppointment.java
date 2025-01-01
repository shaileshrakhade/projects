package com.hos;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.Util;

/**
 * Servlet implementation class AddNewDoctorAppointment
 */
@WebServlet("/AddNewDoctorAppointment")
public class AddNewDoctorAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	private Util util = new Util();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewDoctorAppointment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		String id = util.autogenerate();
        Date date = Date.valueOf(LocalDate.now());
        int did = Integer.parseInt(request.getParameter("did"));
        String dscript = request.getParameter("dscript");
        
		Connection con;

		PreparedStatement pst;
		try
		{
			
			DriverManager.registerDriver(new org.postgresql.Driver());
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres?user=postgres&password=221822");
			
			pst = con.prepareStatement("insert into hos.client_doctor(id,did,date,disease_description) values(?,?,?,?);");
			pst.setInt(1, Integer.parseInt(id));
			pst.setInt(2, did);
			pst.setDate(3, date);
			pst.setString(4, dscript);
			int i = pst.executeUpdate();
			
			if(i==1)
			{
				out.print("Inserted");
			}
			con.close();
			
			pst.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
        
	}

}
