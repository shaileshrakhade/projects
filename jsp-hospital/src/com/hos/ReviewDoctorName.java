package com.hos;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ReviewDoctorName
 */
@WebServlet("/ReviewDoctorName")
public class ReviewDoctorName extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewDoctorName() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		PrintWriter out = response.getWriter();
		int uid = 1;
		String jsonData = "";
		Connection con;
		ResultSet rs;
		PreparedStatement pst;
		try
		{
			//Class.forName("org.postgresql.Driver");
			DriverManager.registerDriver(new org.postgresql.Driver());
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres?user=postgres&password=221822");
			
			pst = con.prepareStatement("SELECT cd.id,d.dname, cd.appointment_date" + 
					"	FROM hos.client_doctor as cd join hos.doctors as d" + 
					"	on cd.did = d.did " + 
					"	where cd.uid = ? and cd.appointment_date is not null" + 
					"	order by cd.appointment_date desc;");
			pst.setInt(1, uid);
			rs = pst.executeQuery();
		
			while(rs.next())
			{
				Date d = rs.getDate(3);
				LocalDate localDate = LocalDate.now();
				System.out.print("Database Date :- "+d + "      Current Date :- "+localDate);
				Date currentDate = Date.valueOf(localDate);
				System.out.println("Date Before current_Date :- "+d.before(currentDate));
				if(d.before(currentDate))
				{
					jsonData = "{"
							+"\"id\":"+rs.getInt(1)+","
							+"\"dname\" : \""+rs.getString(2)+ "\" }";
					break;
				}
			}
			out.println(jsonData);
		
			con.close();
			rs.close();
			pst.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	
	}

}
