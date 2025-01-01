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
 * Servlet implementation class AddReview
 */
@WebServlet("/AddReview")
public class AddReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddReview() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		
		int id = Integer.parseInt(request.getParameter("ids"));
		int rating = Integer.parseInt(request.getParameter("ratings"));
		String comment = request.getParameter("comments");

		Connection con;
		PreparedStatement pst;
		try
		{
			//Class.forName("org.postgresql.Driver");
			DriverManager.registerDriver(new org.postgresql.Driver());
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres?user=postgres&password=221822");
			
			pst = con.prepareStatement("UPDATE hos.client_doctor" + 
					"	SET stars=?, \"Comments\"=?" + 
					"	WHERE id = ?;");
			pst.setInt(1, rating);
			pst.setString(2, comment);
			pst.setInt(3, id);
			int i = pst.executeUpdate();
		
			if(i==1)
			{
				out.println("Comment Added Successfully");
			}else
			{
				out.println("Comment not added try again");
			}
		
			con.close();
			pst.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}

	}

}
