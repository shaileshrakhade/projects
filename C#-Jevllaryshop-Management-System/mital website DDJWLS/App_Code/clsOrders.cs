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
/// Summary description for clsOrders
/// </summary>
public class clsOrders
{
	public clsOrders()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    //To get all orders
    public DataSet GetAllOrders()
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select Order_ID,Order_Code,First_Name,Last_Name,tblCustomer.Customer_ID,Email_ID,Processed,Cancelled,Order_Date,Processed_Date,Order_Total,No_Of_Products from tblOrder inner join tblCustomer on tblOrder.Customer_ID=tblCustomer.Customer_ID Order by Order_Date Desc";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    //To get product details of a particular order
    public DataSet GetOrderProducts(int orderId)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
       // String cmdString = "Select tblOrderedProducts.Order_ID,tblOrderedProducts.Product_ID,Product_Code,Product_Name,Category1_ID,Category2_ID,Category3_ID,Image,Price,Weight,Weight_Unit,Short_Desc,Long_Desc,Special,DisplayOrderGroup from tblOrderedProducts,tblProduct where tblOrdered.Product_ID=tblProduct.Product_ID and tblOrderedProducts.Order_ID=" + orderId;
        String cmdString = "Select Product_Code,Product_Name,Category1_ID,Category2_ID,Category3_ID,Category4_ID,Image,Price,Weight,Weight_Unit,Short_Desc,Long_Desc,Special,DisplayOrderGroup from tblOrderedProducts,tblProduct where tblOrderedProducts.Product_ID=tblProduct.Product_ID and tblOrderedProducts.Order_ID=" + orderId;
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds; 
    }

    //To get new orders those are not processed or not cancelled
    public DataSet GetNewOrders()
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select * from tblOrder where Processed='false' and Cancelled='false' Order by Order_Date Desc";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    //To get Processed Orders
    public DataSet GetProcessedOrders()
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select Order_ID,Order_Code,First_Name,Last_Name,tblCustomer.Customer_ID,Email_ID,Processed,Cancelled,Order_Date,Processed_Date,Order_Total,No_Of_Products from tblOrder inner join tblCustomer on tblOrder.Customer_ID=tblCustomer.Customer_ID where Processed='true' and Cancelled='false' Order by Order_Date Desc";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    //To get Cancelled Orders
    public DataSet GetCancelledOrders()
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select Order_ID,Order_Code,First_Name,Last_Name,tblCustomer.Customer_ID,Email_ID,Processed,Cancelled,Order_Date,Processed_Date,Order_Total,No_Of_Products from tblOrder inner join tblCustomer on tblOrder.Customer_ID=tblCustomer.Customer_ID where Processed='false' and Cancelled='true' Order by Order_Date Desc";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    //To get Details of Customer
    public DataSet GetOrderCustomer(int orderId)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        //String cmdString = "Select tblOrder.Order_ID,tbl_Order.Customer_ID,First_Name,Last_Name,Occupation,Street,City,State,Country,Pin_Code,Contact_No,Mobile_No,Email_ID,Order_ID,Order_Code,Processed,Cancelled,Order_Date,Processed_Date,Order_Total,No_Of_Products from tblCustomer,tblOrder where tblOrder.Customer_ID=tblCustomer.Customer_ID and tblOrder.Order_ID=" + orderId ;
        String cmdString="Select First_Name,Last_Name,Occupation,Street,City,State_ID,Country_ID,Pin_Code,Contact_No,Mobile_No,Email_ID from tblCustomer,tblOrder where tblOrder.Customer_ID=tblCustomer.Customer_ID and tblOrder.Order_ID=" + orderId ;
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    //To get order between specified date
    public DataSet GetOrderBetweenDate(DateTime startDate, DateTime endDate)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select Order_ID,Order_Code,First_Name,Last_Name,Processed,Cancelled,Order_Date,Processed_Date,Order_Total,No_Of_Products from tblOrder inner join tblCustomer on tblOrder.Customer_ID=tblCustomer.Customer_ID where Order_Date>='" + startDate + "' and Order_Date<='" + endDate + "'";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    //To Process a particular order
    public void ProcessOrder(int OrderId)
    {
        DateTime processDate = System.DateTime.Now.Date; 
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Update tblOrder Set Processed='true',Processed_Date='" + processDate + "' where Order_ID=" + OrderId ;
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

    //To Cancel a particular order
    public void CancelOrder(int OrderId)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Update tblOrder Set Cancelled='true' where Order_ID=" + OrderId;
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

    //Get a particular order Details
    public DataSet GetOrderByID(int orderId)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select * from tblOrder where Order_ID=" + orderId;
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    //Get Products Report
    public DataSet GetProductReport()
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select tblOrder.Order_ID,Order_Code,Product_Code,Product_Name,First_Name,Last_Name,tblCustomer.Customer_ID,Email_ID,Processed,Cancelled,Order_Date,Processed_Date,Order_Total,No_Of_Products from tblOrder inner join tblCustomer on tblOrder.Customer_ID=tblCustomer.Customer_ID inner join tblOrderedProducts on tblOrder.Order_ID=tblOrderedProducts.Order_ID inner join tblProduct on tblOrderedProducts.Product_ID=tblProduct.Product_ID Order by Order_Date Desc";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }


    //Get Product wise Orders
    public DataSet GetProductWiseOrders(string text)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select tblCustomer.Customer_ID,tblOrder.Order_ID,Order_Code,Product_Code,Product_Name,First_Name,Last_Name,Email_ID,Processed,Cancelled,Order_Date,Processed_Date,Order_Total,No_Of_Products from tblOrder inner join tblCustomer on tblOrder.Customer_ID=tblCustomer.Customer_ID inner join tblOrderedProducts on tblOrder.Order_ID=tblOrderedProducts.Order_ID inner join tblProduct on tblOrderedProducts.Product_ID=tblProduct.Product_ID where Product_Code like ('%" + text + "%') or Product_Name like('%" + text + "%')Order by Order_Date Desc";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    //Get Customer Wise Orders
    public DataSet GetCustomerWiseOrders(string fname, string lname)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select tblCustomer.Customer_ID,Email_ID,tblOrder.Order_ID,Order_Code,Product_Code,Product_Name,First_Name,Last_Name,Processed,Cancelled,Order_Date,Processed_Date,Order_Total,No_Of_Products from tblOrder inner join tblCustomer on tblOrder.Customer_ID=tblCustomer.Customer_ID inner join tblOrderedProducts on tblOrder.Order_ID=tblOrderedProducts.Order_ID inner join tblProduct on tblOrderedProducts.Product_ID=tblProduct.Product_ID where First_Name like ('%" + fname + "%') or Last_Name like ('%" + lname + "%') Order by Order_Date Desc";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    ////To get order between date with order status
    //public DataSet GetOrdersWithDateStatus(DateTime startDate, DateTime endDate, bool processed, bool cancelled)
    //{
    //    string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    //    SqlConnection conn = new SqlConnection(constring);
    //    String cmdString = "Select Order_ID,Order_Code,First_Name,Last_Name,Processed,Cancelled,Order_Date,Processed_Date,Order_Total,No_Of_Products from tblOrder inner join tblCustomer on tblOrder.Customer_ID=tblCustomer.Customer_ID where Order_Date>='" + startDate + "' and Order_Date<='" + endDate + "' and Processed='" + processed + "' and Cancelled='" + cancelled + "' Order by Order_Date Desc";
    //    SqlCommand cmd = new SqlCommand(cmdString,conn);
    //    DataSet ds = new DataSet();
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    try
    //    {
    //        da.Fill(ds);
            
    //    }
    //    catch (Exception ex)
    //    {
    //        ex.Message.ToString();  
    //    }
    //    return ds;
    //}

    //To get orders for a particular year with Order status
    public DataSet GetOrdersForYearStatus(string year,bool processed,bool cancelled)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select Order_ID,Order_Code,First_Name,Last_Name,tblCustomer.Customer_ID,Email_ID,Processed,Cancelled,Order_Date,Processed_Date,Order_Total,No_Of_Products from tblOrder inner join tblCustomer on tblOrder.Customer_ID=tblCustomer.Customer_ID where DatePart(yy,Order_Date)='" + year + "'  and Processed='" + processed + "' and Cancelled='" + cancelled + "' Order by Order_Date Desc";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        try
        {
            da.Fill(ds);

        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
        return ds;
    }

    //To get Orders for a particular year
    public DataSet GetOrdersForYear(string year)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select Order_ID,Order_Code,First_Name,Last_Name,tblCustomer.Customer_ID,Email_ID,Processed,Cancelled,Order_Date,Processed_Date,Order_Total,No_Of_Products from tblOrder inner join tblCustomer on tblOrder.Customer_ID=tblCustomer.Customer_ID where DatePart(yy,Order_Date)='" + year + "' Order by Order_Date Desc";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        try
        {
            da.Fill(ds);

        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
        return ds;
    }

    //To get orders for a particular month & year with Order status
    public DataSet GetOrdersForMonthYearStatus(string month,string year, bool processed, bool cancelled)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select Order_ID,Order_Code,tblCustomer.Customer_ID,First_Name,Last_Name,Email_ID,Processed,Cancelled,Order_Date,Processed_Date,Order_Total,No_Of_Products from tblOrder inner join tblCustomer on tblOrder.Customer_ID=tblCustomer.Customer_ID where DatePart(yy,Order_Date)='" + year + "' and DatePart(mm,Order_Date)='" + month + "' and Processed='" + processed + "' and Cancelled='" + cancelled + "' Order by Order_Date Desc";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        try
        {
            da.Fill(ds);

        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
        return ds;
    }

    //To get Orders for a particular year
    public DataSet GetOrdersForMonthYear(string month,string year)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select Order_ID,Order_Code,tblCustomer.Customer_ID,First_Name,Last_Name,Email_ID,Processed,Cancelled,Order_Date,Processed_Date,Order_Total,No_Of_Products from tblOrder inner join tblCustomer on tblOrder.Customer_ID=tblCustomer.Customer_ID where DatePart(yy,Order_Date)='" + year + "' and DatePart(mm,Order_Date)='" + month +"' Order by Order_Date Desc";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        try
        {
            da.Fill(ds);

        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
        return ds;
    }
}
