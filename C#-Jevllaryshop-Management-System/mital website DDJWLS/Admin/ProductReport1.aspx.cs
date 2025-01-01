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

public partial class Admin_ProductReport1 : System.Web.UI.Page
{
    clsOrders objOrder = new clsOrders(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["ProductPrint"] != null)
            {
                DataSet ds = new DataSet(); 
                int print = Convert.ToInt32(Session["ProductPrint"]);
                if (print == 1)
                {
                    ds = objOrder.GetProductReport();
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                   lblHeader.Text = "All Orders"; 
                }
                if (print == 2)
                {
                    string product = Session["ProductName"].ToString();  
                    ds = objOrder.GetProductWiseOrders(product);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    lblHeader.Text = "Orders of Product " + product;
                }
                if (print == 3)
                {
                    string fname = Session["FName"].ToString();
                    string lname = Session["LName"].ToString();
                    ds = objOrder.GetCustomerWiseOrders(fname,lname);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    lblHeader.Text = "Orders of Customer " + fname  + " " + lname ; 
                }
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string strscript = "<script>" +
                                  "window.print()" +
                                  "</script>";
        Page.RegisterClientScriptBlock("ImageButton1_Click", strscript);
    }
}
