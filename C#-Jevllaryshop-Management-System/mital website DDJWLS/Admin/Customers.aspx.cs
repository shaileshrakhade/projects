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

public partial class Admin_Customers : System.Web.UI.Page
{
    clsCustomers objCustomer = new clsCustomers();  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            loadGridView(); 
        }

    }
    protected void btnGo_Click(object sender, EventArgs e)
    {
        if (txtcustSearch.Text != "")
        {
            Session["search"] = 1; 
            DataSet ds = new DataSet();
            ds=objCustomer.SearchByName(txtcustSearch.Text);
            GridView1.DataSource = ds;
            GridView1.DataBind(); 
        }
        else
        {
            loadGridView(); 
        }
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex=e.NewPageIndex ;   
        if (Convert.ToInt32(Session["search"]) == 1)
        {
            DataSet ds = new DataSet();
            ds = objCustomer.SearchByName(txtcustSearch.Text);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            loadGridView(); 
        }
    }
    public void loadGridView()
    {
        DataSet ds = new DataSet();
        ds = objCustomer.GetAllCustomers();
        GridView1.DataSource = ds;
        GridView1.DataBind(); 
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "History" && e.CommandArgument != null)
        {
            int customerID = Convert.ToInt32(e.CommandArgument); 
            Response.Redirect("CustomerHistory.aspx?ci=" + customerID);
        }
    }
    
}
