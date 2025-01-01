package beans;
import java.sql.*;


public class career {

	
	private  Connection con;
	
	public career()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/careers_gs?user=root&password=root");
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		
	}

	public Connection getCon() {
		return con;
	}

	 
	
	
}
