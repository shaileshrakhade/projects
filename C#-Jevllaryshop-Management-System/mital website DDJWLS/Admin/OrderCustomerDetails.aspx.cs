using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Admin_OrderCustomerDetails : System.Web.UI.Page
{
    clsOrders objOrder = new clsOrders();  
    protected void Page_Load(object sender, EventArgs e)
    {
        int orderId = Convert.ToInt32(Request.QueryString["oi"]);
        DataSet ds = new DataSet();
        ds = objOrder.GetOrderCustomer(orderId);
        lblFirstName.Text = ds.Tables[0].Rows[0].ItemArray[0].ToString();
        lblLastName.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
        lblOccupation.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
        lblStreet.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
        lblCity.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
        lblState.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
        lblCountry.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
        lblPinCode.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
        lblContactNo.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
        lblMobileNo.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();
        lblEmailId.Text=ds.Tables[0].Rows[0].ItemArray[10].ToString(); 
        
        //Filling Order Details
        DataSet dsOrder = new DataSet();
        dsOrder = objOrder.GetOrderByID(orderId);
        lblOrderCode.Text = dsOrder.Tables[0].Rows[0].ItemArray[1].ToString();
        lblOrderDate.Text = Convert.ToDateTime(dsOrder.Tables[0].Rows[0].ItemArray[5]).Date.ToString();
        lblOrderTotal.Text = dsOrder.Tables[0].Rows[0].ItemArray[7].ToString();
        lblNoOfProducts.Text = dsOrder.Tables[0].Rows[0].ItemArray[8].ToString();
        if (Convert.ToBoolean(dsOrder.Tables[0].Rows[0].ItemArray[3]) == false && Convert.ToBoolean(dsOrder.Tables[0].Rows[0].ItemArray[4]) == true)
        {
            lblOrderStatus.Text = "Cancelled";
        }
        else if (Convert.ToBoolean(dsOrder.Tables[0].Rows[0].ItemArray[3]) == true && Convert.ToBoolean(dsOrder.Tables[0].Rows[0].ItemArray[4]) == false)
        {
            lblOrderStatus.Text = "Processed";

        }
        else
        {
            lblOrderStatus.Text = "New"; 
        }
    }
    protected void lnkOrders_Click(object sender, EventArgs e)
    {
        int s = Convert.ToInt32(Session["redirect"]);
        if (s == 1)
        {
            Response.Redirect("Orders.aspx");
        }
        if (s == 2)
        {
            Response.Redirect("OrdersNew.aspx");
        }
        if (s == 3)
        {
            Response.Redirect("OrdersProcessed.aspx");
        }
        if (s == 4)
        {
            Response.Redirect("OrdersCancelled.aspx");
        }
    }
}
