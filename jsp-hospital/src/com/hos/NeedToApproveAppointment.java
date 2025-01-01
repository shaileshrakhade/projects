package com.hos;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.Util;

/**
 * Servlet implementation class NeedToApproveAppointment
 */
@WebServlet("/NeedToApproveAppointment")
public class NeedToApproveAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
     Util util = new Util();  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NeedToApproveAppointment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		int did = Integer.parseInt(request.getParameter("did"));
		System.out.println(did);
		Connection con;
		ResultSet rs;
		PreparedStatement pst;
		try
		{
			//Class.forName("org.postgresql.Driver");
			DriverManager.registerDriver(new org.postgresql.Driver());
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres?user=postgres&password=221822");
			
			pst = con.prepareStatement("SELECT cd.id, u.uname, cd.date, cd.disease_description,o.dname "
										+ "FROM hos.client_doctor As cd join hos.doctors as d "
										+ "on cd.did = d.did "
										+ "join hos.user as u "
										+ "on cd.uid = u.uid "
										+ "join hos.doctors as o "
										+ "on cd.old_did = o.did "
										+ "where cd.did=? and cd.isAppointed=false;"
									   );
			pst.setInt(1, did);
			rs = pst.executeQuery();
			String table = 	
					"<table class='table table-hover'>"
							+ "<thead>"
								+ "<tr class='bg-primary'>"
									+ "<th scope='col'>Patient Name</th>"
									+ "<th scope='col'>Date of Application</th>"
									+ "<th scope='col'>Description</th>"
									+ "<th scope='col'>Old Doctor Name</th>"
									+ "<th scope='col'>Show Prescription</th>"
									+ "<th scope='col'>Appointment Date</th>"
									+ "<th scope='col'>Fix Appointment</th>"
								+ "</tr>"
							+ "</thead>"
						+ "<tbody>";
			while(rs.next())
			{
				
						int id = rs.getInt(1);
						System.out.println("Id :- "+id);
						String uname = rs.getString(2);
						Date  date = rs.getDate(3);
						String dscript = rs.getString(4);
						
						String old_dname = rs.getString(5);
						 
						String tag = "";
						String prescriptionLink ="#";
						if(!old_dname.equals("None"))
						{
							prescriptionLink = "http://localhost:8080/Hospital/GetPrescription?id="+id;
							tag = "<a class='btn btn-primary' href='"+prescriptionLink+"' target='_blank'>Show Prescription</a>";
						}
						table = table + 
					
						    "<tr>"
						    	+ "<th scope='row'>"+uname+"</th>"
						    		+ "<td>"+date.toString()+"</td>"
						    		+ "<td class='text-wrap'>"+dscript+"</td>"
						    		+ "<td>"+old_dname+"</td>"
						    		+ "<td>"+tag+"</td>"
						    		+ "<td><input type='date' class='form-control' id='appdate"+id+"'></td>"
						    		+ "<td><a class='btn btn-success' href='javascript:fixAppointment("+id+")'>Submit</a></td>"
						    +"</tr>";
						
			}
			table = table + "</tbody></table>";
			out.print(table);
		
			con.close();
			rs.close();
			pst.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
