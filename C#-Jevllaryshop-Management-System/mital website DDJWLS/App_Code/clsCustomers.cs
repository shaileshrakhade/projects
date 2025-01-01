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
/// Summary description for Customers
/// </summary>
public class clsCustomers
{
	public clsCustomers()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataSet GetAllCustomers()
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select * from tblCustomer";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
     }

    
    //To get users registered between particular date
    public DataSet GetCustomerBetweenDate(DateTime startDate, DateTime endDate)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select * from tblCustomer where Date>='" + startDate + "' and Date<='" + endDate + "'";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }
    //To get Details of a particular customer
    public DataSet GetCustomerByID(int customerId)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select * from tblCustomer where Customer_ID=" + customerId;
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;

    }

    //To get Orders of a particular customer
    public DataSet GetOrdersOfCustomer(int customerId)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select * from tblOrder where Customer_ID=" + customerId;
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    //To search customers by name
    public DataSet SearchByName(string name)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select * from tblCustomer where First_Name like('%" + name + "%') OR Last_Name like('%" + name + "%')";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }
 }
