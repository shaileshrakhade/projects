package com.hos;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.json.JSONParser;

/**
 * Servlet implementation class GetAppointmentDetail
 */
@WebServlet("/GetAppointmentDetail")
public class GetAppointmentDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAppointmentDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	PrintWriter out = response.getWriter();
		response.setContentType("application/Json");
		int did =  1;//request.getSession(true).getAttribute("usid")//Integer.parseInt(request.getParameter("did"));
		System.out.println(did);
		Connection con;
		ResultSet rs;
		PreparedStatement pst;
		try
		{
			//Class.forName("org.postgresql.Driver");
			DriverManager.registerDriver(new org.postgresql.Driver());
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres?user=postgres&password=221822");
			
			pst = con.prepareStatement("SELECT cd.id, d.dname,d.dmob,h.hname,h.haddress,h.hcity, cd.date, cd.disease_description, cd.appointment_date, o.dname "
											+" FROM hos.client_doctor as cd join hos.doctors as d "
											+ " on cd.did = d.did "
											+ "join hos.hospital as h "
											+ "on h.hid = d.dhid "
											+ "join hos.doctors as o "
											+ "on cd.old_did = o.did "
											+ "where appointment_date = (select max(appointment_date) "
																			+ "from hos.client_doctor "
																			+ "where uid = ?);"	
			);
			pst.setInt(1, did);
			rs = pst.executeQuery();
			String jsonString = "";
			while(rs.next())
			{
				
						int id = rs.getInt(1);
						System.out.println("Id :- "+id);
						String dname = rs.getString(2);
						String dmob = rs.getString(3);
						String hname = rs.getString(4);
						String haddress = rs.getString(5)+", "+rs.getString(6);
						Date  adate = rs.getDate(7);
						String dscript = rs.getString(8);
						Date apdate = rs.getDate(9);
						String old_dname = rs.getString(10);
						 
						String tag = "";
						String prescriptionLink ="#";
						if(!old_dname.equals("None"))
						{
							prescriptionLink = "http://localhost:8080/Hospital/GetPrescription?id="+id;
						
						}
						jsonString = "{"
								+ "\"dname\":\""+dname
								+ "\",\"dmob\":\""+dmob
								+ "\",\"hname\":\""+hname
								+ "\",\"haddress\":\""+haddress
								+ "\",\"adate\":\""+adate
								+ "\",\"dscript\":\""+dscript
								+ "\",\"apdate\":\""+apdate
								+ "\",\"olddname\":\""+old_dname
								+ "\",\"prescription\":\""+prescriptionLink
								+"\"}";
			}
			
			out.print(jsonString);
		
			con.close();
			rs.close();
			pst.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}

	}

}
