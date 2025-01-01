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
 * Servlet implementation class DisSearch
 */
@WebServlet("/DisSearch")
public class DisSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisSearch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out= response.getWriter();
		response.setContentType("text/html");
		
	//	String city = request.getParameter("city");
		String disease = request.getParameter("disease");
		//System.out.println("city"+city+"   disease="+disease);
		Connection con;
		ResultSet rs;
		PreparedStatement pst;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/hos?user=root&password=secret&ssl=true");
			pst = con.prepareStatement("select h.hname,h.haddress,h.pincode,d.dname,d.dmob from hospital h join doctors d on(h.hid = d.dhid) where d.dspec = ?;");
			pst.setString(1, disease);
			System.out.println(disease);
			rs = pst.executeQuery();
			
			String cards = "";
			while(rs.next())
			{
				cards = cards + "<div class='card col-sm-3 mx-2 border-primary'> <div class='card-body'><h5 class='card-title'>"+rs.getString(1) +"</h5><p class='card-text'>Address :- "+rs.getString(2)+","+rs.getString(3)+"</p><p><h5>Doctor Name :- "+rs.getString(4)+"</h5></p><div class='card-footer'><p class='card-text'><small class='text-muted'>Doctor Mob No :- "+rs.getString(5)+"</small></p></div></div></div>";
			}
			out.println(cards);
	
			rs.close();
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
