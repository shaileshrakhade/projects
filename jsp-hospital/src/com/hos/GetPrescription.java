package com.hos;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
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


/**
 * Servlet implementation class GetPrescription
 */
@WebServlet("/GetPrescription")
public class GetPrescription extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetPrescription() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//PrintWriter out = response.getWriter();
		
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		Connection con;
		ResultSet rs;
		PreparedStatement pst;
		try
		{
			//Class.forName("org.postgresql.Driver");
			DriverManager.registerDriver(new org.postgresql.Driver());
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres?user=postgres&password=221822");
			
			pst = con.prepareStatement("SELECT prescription from hos.client_doctor where id=?;");
			pst.setInt(1, id);
			rs = pst.executeQuery();
			con.close();
			pst.close();
			while(rs.next())
			{
				InputStream img  = rs.getBinaryStream(1);
				 response.setContentType("image/gif");
				 
				int length ;
				//  int bufferSize = 1024;
				  byte[] buffer = new byte[999999999];
				  while ((length = img.read(buffer)) != -1) {
				 
					  response.getOutputStream().write(buffer  , 0, length);
				  }
						
			}
			
			
			rs.close();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
