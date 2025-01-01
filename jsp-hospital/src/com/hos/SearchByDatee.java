package com.hos;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.Util;

/**
 * Servlet implementation class SearchByDatee
 */
@WebServlet("/SearchByDatee")
public class SearchByDatee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchByDatee() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out= response.getWriter();
		int id = Integer.parseInt(request.getParameter("did"));
		String strd = request.getParameter("dta");
		java.sql.Date date1 = java.sql.Date.valueOf(strd);
		
		System.out.println("date :- "+date1.toString());
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		try
		{
		//	Class.forName("com.mysql.cj.jdbc.Driver");
			DriverManager.registerDriver(new org.postgresql.Driver());
			
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres?user=postgres&password=221822");
			pst = con.prepareStatement("SELECT c.id,cl.uname, d.dname, c.disease_description, c.appointment_date,o.dname "
										+ "	FROM hos.client_doctor as c join hos.doctors as d "
										+ "on c.did = d.did "
										+ "join hos.user as cl "
										+ "on c.uid = cl.uid "
										+" join hos.doctors as o "  
										+ "on c.old_did = o.did "
										+ "where c.did = ? and c.appointment_date = ? and c.isappointed=true and c.case_ended = false;"
									  );
			pst.setInt(1, id);
			pst.setDate(2, date1);
			
			rs = pst.executeQuery();
			
			String table = 	
					"<table class='table table-hover'>"
							+ "<thead>"
								+ "<tr class='bg-primary'>"
									+ "<th scope='col'>Patient Name</th>"
									+ "<th scope='col'>Description</th>"
									+ "<th scope='col'>Old Doctor Name</th>"
									+ "<th scope='col'>Appointment Date</th>"
									+ "<th scope='col'>End Case</th>"
								+ "</tr>"
							+ "</thead>"
						+ "<tbody>";
	
			while(rs.next())
			{
				int caseid = rs.getInt(1);
				String uname = rs.getString(2);
				String dscript = rs.getString(4);
				Date dt = rs.getDate(5);
				String dname = rs.getString(6);
				
				table = table + 	
					    "<tr id='row-id-"+caseid+"'>"
					    	+ "<th scope='row'>"+uname+"</th>"
					    		+ "<td class='text-wrap'>"+dscript+"</td>"
					    		+ "<td>"+dname+"</td>"
					    		+ "<td>"+dt+"</td>"
					    		+ "<td><a class='btn btn-danger' href='javascript:endCase("+caseid+")'>Case Ended</a></td>"
					    	+"</tr>";
				
			}
			table = table + "</tbody></table>";
			out.print(table);
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
