package MLM;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.jni.File;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.*;
import stockBeans.DbCon;

/**
 * Servlet implementation class postData
 */
@WebServlet("/postData")
public class postData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public postData() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		  //File file ;
		   //int maxFileSize = 5000 * 1024;
		  // int maxMemSize = 5000 * 1024;
		   //ServletContext context = pageContext.getServletContext();
		  // String filePath = context.getInitParameter("file-upload");

		   // Verify the content type
		   String contentType = request.getContentType();
		   
//		   if ((contentType.indexOf("multipart/form-data") >= 0)) {
//		      DiskFileItemFactory factory = new DiskFileItemFactory();
//		      // maximum size that will be stored in memory
		     // factory.setSizeThreshold(maxMemSize);
		      
		      // Location to save data that is larger than maxMemSize.
		      //factory.setRepository(new File("c:\\temp"));

		      // Create a new file upload handler
//		      ServletFileUpload upload = new ServletFileUpload(factory);
//		      
//		      // maximum file size to be uploaded.
//		      upload.setSizeMax( maxFileSize );
		
		String tital,postmsg,Attachmentfile=null;		
		int sid;
		Connection con;
		PreparedStatement pst;
	
		PrintWriter out=response.getWriter();
		HttpSession session = request.getSession();
	
		try
		{
	
			sid=Integer.parseInt(session.getAttribute("sid").toString());
			tital=request.getParameter("tital");
			postmsg=request.getParameter("Postmsg");
			Attachmentfile=request.getParameter("Attachment");
			DbCon conn=new DbCon();
			con=conn.getDbcon();
			pst=con.prepareStatement("insert into ClassContent values(null,?,?,?,?,default);");
			pst.setInt(1, sid);
			pst.setString(2, tital);
			pst.setString(3, postmsg);
			pst.setString(4, Attachmentfile);
			int ststus=pst.executeUpdate();
			if(ststus==1)
			{
				response.sendRedirect("jsp/admin.jsp");
			}
			else
			{
				out.print("Some Other Problem Data not insert");	
			}
		
		
		
		con.close();
		}
		catch(Exception e)
		{
			out.println(e);
		}
		
		
		
	}
	
}
