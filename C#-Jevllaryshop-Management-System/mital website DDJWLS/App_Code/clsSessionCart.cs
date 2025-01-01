using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;  

/// <summary>
/// Summary description for clsSessionCart
/// </summary>
public class clsSessionCart
{
	public clsSessionCart()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public void DeleteCart()
    {
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();
        SqlConnection conn = new SqlConnection(conString);
        string cmdString = "Delete from tblSessionCart";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        conn.Open();
        try
        {
            cmd.ExecuteNonQuery(); 
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
        finally
        {
            conn.Close();
        }


    }

    public int countItemInCart()
    {
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();
        SqlConnection conn = new SqlConnection(conString);
        string cmdString = "Select count(*) from tblSessionCart";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        conn.Open();
        int count = Convert.ToInt32(cmd.ExecuteScalar());
        conn.Close();
        return count;
    }

}
