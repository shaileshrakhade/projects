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

public partial class CustomerHistory : System.Web.UI.Page
{
    clsCustomers objCustomer = new clsCustomers(); 
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString["ci"] != null)
        {
            int customerId = Convert.ToInt32(Request.QueryString["ci"]); 
            DataSet ds = new DataSet();
            ds = objCustomer.GetOrdersOfCustomer(customerId);
            if (ds.Tables[0].Rows.Count >= 1)
            {
                Panel2.Visible = false;
                PanelHistory.Visible = true; 
                //Panel1.Visible = true;
                GridView1.DataSource = ds;
                GridView1.DataBind(); 
            }
            else
            {
                Panel2.Visible = true;
                PanelHistory.Visible = false;  
            }
            
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;   
        int customerId = Convert.ToInt32(Request.QueryString["ci"]);
        DataSet ds = new DataSet();
        ds = objCustomer.GetOrdersOfCustomer(customerId);
       
            Panel2.Visible = false;
            Panel1.Visible = true;
            GridView1.DataSource = ds;
            GridView1.DataBind();
        
    }
}
