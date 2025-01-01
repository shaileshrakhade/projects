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

public partial class Admin_OrderProductDetails : System.Web.UI.Page
{
    clsOrders objOrder = new clsOrders(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        int orderId=Convert.ToInt32(Request.QueryString["oi"]);
        DataSet ds = new DataSet();
        ds = objOrder.GetOrderProducts(orderId);
        if(ds.Tables[0].Rows.Count > 1)
        {
            PanelSingleProduct.Visible = false;
            PanelMultipleProduct.Visible = true;
            GridView1.DataSource = ds;
            GridView1.DataBind(); 
         }
        else
        {
            PanelSingleProduct.Visible = true;
            PanelMultipleProduct.Visible = false;
            lblProductCode.Text = ds.Tables[0].Rows[0].ItemArray[0].ToString();
            lblProductName.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            Image1.ImageUrl = ds.Tables[0].Rows[0].ItemArray[6].ToString();
            lblPrice.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
            lblWeight.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
            lblweightUnit.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();
            lblSD.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
            lblLD.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();

        }
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
        int s=Convert.ToInt32(Session["redirect"] );
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
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        int orderId = Convert.ToInt32(Request.QueryString["oi"]);
        DataSet ds = new DataSet();
        ds = objOrder.GetOrderProducts(orderId);
        PanelSingleProduct.Visible = false;
        PanelMultipleProduct.Visible = true;
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}
