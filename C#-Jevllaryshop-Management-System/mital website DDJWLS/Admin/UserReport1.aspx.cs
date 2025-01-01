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

public partial class Admin_UserReport1 : System.Web.UI.Page
{
    clsCustomers objCustomer = new clsCustomers();  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserPrint"] != null)
            {
                DataSet ds = new DataSet(); 
                int print = Convert.ToInt32(Session["UserPrint"]);
                if (print == 1)
                {
                    ds = objCustomer.GetAllCustomers();
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    lblHeader.Text = "All Customers";
                }
                if (print == 2)
                {
                    DateTime startDate, endDate;
                    startDate = Convert.ToDateTime(Session["StartDate"]);
                    endDate = Convert.ToDateTime(Session["EndDate"]); 
                    ds = objCustomer.GetCustomerBetweenDate(startDate, endDate);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    lblHeader.Text = "Customer registered from Date " + startDate.ToShortDateString() + " to Date " + endDate.ToShortDateString();   
              

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
