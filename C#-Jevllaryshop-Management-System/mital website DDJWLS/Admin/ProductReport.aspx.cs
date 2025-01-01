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

public partial class Admin_ProductReport : System.Web.UI.Page
{
    clsOrders objOrder = new clsOrders(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = objOrder.GetProductReport(); 
            GridView1.DataSource = ds;
            GridView1.DataBind();
            Session["ProductPrint"] = 1;
            lblHeader.Text = "All Orders"; 
        }
    }
    protected void btnGo_Click(object sender, EventArgs e)
    {
        if (!txtSearch.Text.Equals(string.Empty))
        {
            DataSet ds = new DataSet();
            ds = objOrder.GetProductWiseOrders(txtSearch.Text); 
            GridView1.DataSource = ds;
            GridView1.DataBind();
            lblHeader.Text = "Search Result for Product " + txtSearch.Text;
            Session["ProductPrint"] = 2;
            Session["ProductName"] = txtSearch.Text;  
        }
        else
        {
            DataSet ds = new DataSet();
            ds = objOrder.GetProductReport();  
            GridView1.DataSource = ds;
            GridView1.DataBind();
            lblHeader.Text = "All Orders"; 
        }
    }
    protected void btnSearchCustomer_Click(object sender, EventArgs e)
    {
        if (txtFname.Text!=string.Empty || txtLname.Text !=string.Empty )
        {
            Session["ProductPrint"] = 3;
            Session["FName"] = txtFname.Text;
            Session["LName"] = txtLname.Text;  
            DataSet ds = new DataSet();
            ds = objOrder.GetCustomerWiseOrders(txtFname.Text, txtLname.Text);    
            GridView1.DataSource = ds;
            GridView1.DataBind();
            lblHeader.Text = "Search Result for Customer " + txtFname.Text + " " + txtLname.Text; 
        }
        else
        {
            DataSet ds = new DataSet();
            ds = objOrder.GetProductReport(); 
            GridView1.DataSource = ds;
            GridView1.DataBind();
            lblHeader.Text = "All Orders"; 
        }
    }

    protected void lnkPrint_Click(object sender, EventArgs e)
    {
        Response.Redirect("ProductReport1.aspx"); 
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        if (Convert.ToInt32(Session["ProductPrint"]) == 1)
        {
            DataSet ds = new DataSet();
            ds = objOrder.GetProductReport();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        if (Convert.ToInt32(Session["ProductPrint"]) == 2)
        {
            DataSet ds = new DataSet();
            ds = objOrder.GetProductWiseOrders(txtSearch.Text);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        if (Convert.ToInt32(Session["ProductPrint"]) == 3)
        {
            DataSet ds = new DataSet();
            ds = objOrder.GetCustomerWiseOrders(txtFname.Text, txtLname.Text);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}
