package com.hos;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateAppointmentForm
 */
@WebServlet("/UpdateAppointmentForm")
public class UpdateAppointmentForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAppointmentForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		String did = request.getParameter("did");
		String dscript = request.getParameter("dscript");
		int olddid=Integer.parseInt(request.getParameter("old").trim());
		
		System.out.println("id  :- "+id);
		System.out.println("did  :- "+did);
		
		System.out.println("Dscript :- "+dscript);
		System.out.println("old :- "+olddid);
		
		Connection con;
		PreparedStatement pst;
		try
		{
			//Class.forName("org.postgresql.Driver");
			DriverManager.registerDriver(new org.postgresql.Driver());
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres?user=postgres&password=221822");
			
			pst = con.prepareStatement("UPDATE hos.client_doctor SET uid = 1, did = ? , disease_description = ? , old_did = ? WHERE id = ?;");
			pst.setInt(1, Integer.parseInt(did));
			pst.setString(2, dscript);
			pst.setInt(3,olddid);
			pst.setInt(4, Integer.parseInt(id));
			int i  = pst.executeUpdate();
			if(i==1)
			{
				out.print("submitted");
			}
			
		
			con.close();
			pst.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
