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

public partial class Admin_OrdersProcessed : System.Web.UI.Page
{
    clsOrders objOrder = new clsOrders();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Binding data with Grid View
            DataSet ds = new DataSet();
            ds = objOrder.GetProcessedOrders(); 
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
                PanelData.Visible = true;
                PanelError.Visible = false;
            }
            else
            {
                PanelData.Visible = false;
                PanelError.Visible = true;
            }
            //Filling the drop down list for date
            //for (int i = 1; i <= 31; i++)
            //{
            //    ddlstartDay.Items.Add(i);
            //    ddlendYear.Items.Add(i);
            //}
            //for (int j = 2000; j <= System.DateTime.Now.Year; j++)
            //{
            //    ddlstartYear.Items.Add(j);
            //    ddlendYear.Items.Add(j);
            //}
        }

    }
    protected void btnGo_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int orderId = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "Customer" && e.CommandArgument != null)
        {
            Response.Redirect("OrderCustomerDetails.aspx?oi=" + orderId);
            Session["redirect"] = 3;
        }
        if (e.CommandName == "Product" && e.CommandArgument != null)
        {
            Response.Redirect("OrderProductDetails.aspx?oi=" + orderId);
            Session["redirect"] = 3;
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        DataSet ds = new DataSet();
        ds = objOrder.GetProcessedOrders(); 
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}
