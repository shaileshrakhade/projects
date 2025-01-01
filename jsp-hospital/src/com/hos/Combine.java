package com.hos;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
 * Servlet implementation class Combine
 */
@WebServlet("/Combine")
public class Combine extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Util util = new Util();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Combine() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String city = request.getParameter("city");
		String disease = request.getParameter("disease");
		
		System.out.println("city :- "+city+"   disease :- "+disease);
		Connection con;
		ResultSet rs;
		PreparedStatement pst;
		try
		{
			//Class.forName("org.postgresql.Driver");
			DriverManager.registerDriver(new org.postgresql.Driver());
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres?user=postgres&password=221822");
			
			pst = con.prepareStatement("SELECT h.hname, h.hcity, h.haddress, h.hmob, h.pincode,d.dname,d.dmob,d.dspec,d.did FROM hos.hospital h left outer join hos.doctors d on h.hid = d.dhid where h.hcity ilike ? and d.dspec=?;");
			pst.setString(1, city);
			pst.setString(2, disease);
			rs = pst.executeQuery();
			String cards = "";
			while(rs.next())
			{
						String ratings = "";
						int rating = util.getAvgStars(rs.getInt(9));
						for(int i=0;i<5;i++)
						{
							if(i<rating)
							{
								ratings = ratings + "<span class='fa fa-star checked'></span>";
							}else
							{
								ratings = ratings + "<span class='fa fa-star'></span>";
							}
						}
						cards = cards + "<div class='card col-sm-3 mx-2 border-primary text-center' style='background-image:linear-gradient(to right,#0FFF0F,#FFFFFF)'>"
											+ " <div class='card-body'>"
												+ "<h5 class='card-title'>"
													+ "<p id='hname"+ rs.getString(9)+"'>"+rs.getString(1) +"</p>"
												+ "</h5>"
												+ "<p class='card-text'>Ratings : "+ratings+"</p>"
												+ "<p class='card-text'>Address :- "
													+ "<p id='address"+ rs.getString(9)+"'>"+rs.getString(3)+","+rs.getString(2)+"</p>"
												+ "</p>"
												+ "<p>"
													+ "<h5>Doctor Name :- "
														+ "<label id='dname"+rs.getString(9)+"'>"+rs.getString(6)+"</label>"
													+ "</h5>"
												+ "</p>"
												+ "<p class='card-text'>"
													+ "<p class='text-muted'>Doctor Mob No :- "
														+ "<p id='mob"+ rs.getString(9)+"'>"+rs.getString(7)+"</p>"
													+ "</p>"
												+ "</p>"
												+ "<div class='card-footer justify-content-center'>"
													+ "<a href='javascript:showDoctorProfile("+rs.getString(9)+")' class='btn btn-primary m-3'>Show Profile</a> "
													+ "<a href='javascript:callNextForm("+ rs.getString(9)+")' class='btn btn-primary'>Get Apointment</a>"
												+ "</div>"
											+ "</div>"
										+ "</div>";
			}
			System.out.println(cards);
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
