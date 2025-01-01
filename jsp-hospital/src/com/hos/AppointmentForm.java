package com.hos;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

import com.util.Util;

/**
 * Servlet implementation class AppointmentForm
 */
@WebServlet("/AppointmentForm")
public class AppointmentForm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Util util = new Util();
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AppointmentForm() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		String id = util.autogenerate();
        Date date = Date.valueOf(LocalDate.now());
        
		InputStream inputStream = null;
		File file = null;
		
		final String UPLOAD_DIRECTORY = "C:/uploads";
        if(ServletFileUpload.isMultipartContent(request)){
            try {
                
                ServletFileUpload servletFileUpload = new ServletFileUpload(new DiskFileItemFactory());
                List<FileItem> multiparts=servletFileUpload.parseRequest(new ServletRequestContext(request));
                for(FileItem item : multiparts){
                    if(!item.isFormField()){
                        File fileSaveDir = new File(UPLOAD_DIRECTORY);
                        if (!fileSaveDir.exists()) {
                            fileSaveDir.mkdir();
                        }
                        System.out.println(item);
                        String name = new File(item.getName()).getName();
                        String ext = util.getFileExtension(new File(item.getName()));
                      
                        //inputStream = item.getInputStream();
                        file = new File(UPLOAD_DIRECTORY + File.separator + id+"."+ext);
                        item.write(file);   
                    }
                }
                inputStream = new FileInputStream(file);
            } catch (Exception e) {
                System.out.println(e);
            }
		
        }
        
        
    /*    Connection con;

		PreparedStatement pst;
		try
		{
			
			DriverManager.registerDriver(new org.postgresql.Driver());
			con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres?user=postgres&password=221822");
			
			pst = con.prepareStatement("insert into hos.client_doctor(id,date,disease_description,prescription) values(?,?,'',?);");
			pst.setInt(1, Integer.parseInt(id));
			pst.setDate(2, date);
			pst.setBinaryStream(3, inputStream);
			int i = pst.executeUpdate();
			
			if(i==1)
			{
				out.print(id);
			}
			con.close();
			
			pst.close();
		}catch(Exception e)
		{
			e.printStackTrace();
		}
      */  
	}

}
