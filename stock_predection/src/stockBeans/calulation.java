package stockBeans;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class calulation 
{
	private int oldrate;
	private int newrate;
	private int id;
	private int per;
	private String result;
	
	public calulation() 
	{
		oldrate=1;
		newrate=2;
		id=3;
		per=1;
		result="";
	}

	public void setOldrate(int oldrate) {
		this.oldrate = oldrate;
		Ccalulation();
	}

	public void setNewrate(int newrate) {
		this.newrate = newrate;
		Ccalulation();
	}

	public void setId(int id) {
		this.id = id;
		Ccalulation();
	}

	
	

	public String getResult() {
		return result;
		
	}

	private void Ccalulation()
	{
		Connection con;
		PreparedStatement pst;
		DbCon db;
		
		newrate=newrate*10+oldrate;
		per=newrate - oldrate;
		try
		{
			db=new DbCon();
			con=db.getDbcon();
			pst=con.prepareStatement("update company_name set oldrate=?,newrte=?,persent=? where id=?;");
			pst.setInt(1, oldrate);
			pst.setInt(2, newrate);
			pst.setInt(3, per);
			pst.setInt(4,id );
			int val=pst.executeUpdate();
			if(val<0)
			{
				result="update"+oldrate+newrate+per+id;
			}
			else
			{
			result="not update"+oldrate+newrate+per+id;	
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}

	}
}
