package com.hos;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.Reviews;
import com.util.Util;

/**
 * Servlet implementation class GetDoctorProfile
 */
@WebServlet("/GetDoctorProfile")
public class GetDoctorProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetDoctorProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		int did = Integer.parseInt(request.getParameter("did"));
		Util util = new Util();
		Connection con;
		ResultSet rs;
		PreparedStatement pst;
		try
		{
			//Class.forName("org.postgresql.Driver");
			DriverManager.registerDriver(new org.postgresql.Driver());
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres?user=postgres&password=221822");
			
			pst = con.prepareStatement("SELECT d.dname,d.dmob,d.dspec,h.hname,h.hcity,h.haddress,h.hmob,h.pincode "
										+ "FROM hos.doctors as d join hos.hospital as h "
										+ "on d.dhid = h.hid "
										+ "where d.did=?;");
			pst.setInt(1, did);
			rs = pst.executeQuery();
			String cards = "";
			while(rs.next())
			{
				List<Reviews> listReviews = util.getReviews(did);
				String reviews = "";
				for(int i = 0 ;i<listReviews.size();i++)
				{
					if(i!=0)
					{
						reviews = reviews+",";
					}
					String name = listReviews.get(i).getUname();
					int stars = listReviews.get(i).getStars();
					String comments = listReviews.get(i).getComment();
					
					String json = "{ "
							+"\"name\": \""+name+"\" ,"
							+ "\"stars\":"+stars+" ,"
							+"\"comments\":\""+comments+"\" "
							+ " }";
					reviews = reviews+json;
				}
				cards = "{"
						+"\"dname\":\""+rs.getString(1)
						+"\",\"dmob\":\""+rs.getString(2)
						+"\",\"dspec\":\""+rs.getString(3)
						+"\",\"hname\":\""+rs.getString(4)
						+"\",\"address\":\""+rs.getString(6)+","+rs.getString(5)+","+rs.getString(8)
						+"\",\"hmob\":\""+rs.getString(7)
						+"\",\"reviews\":[ "+reviews
						+ "]}";
				
			}
			out.print(cards);
		
			con.close();
			rs.close();
			pst.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}

	}

}
