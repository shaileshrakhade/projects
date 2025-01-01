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

public partial class Admin_OrderReport1 : System.Web.UI.Page
{
    clsOrders objOrder = new clsOrders(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        int print;
        if (Session["Print"] != null)
        {
            DataSet ds = new DataSet();  
            print = Convert.ToInt32(Session["Print"]);
            if (print == 1)
            {
                //DataSet ds = new DataSet();
                ds = objOrder.GetAllOrders();
                lblHeader.Text = "All Orders";
                GridView1.DataSource = ds;
                GridView1.DataBind();

            }

            if (print == 2)
            {
                string month1 = Session["PrintMonth1"].ToString();
                string year = Session["PrintYear"].ToString();
                string month = Session["PrintMonth"].ToString();
                ds = objOrder.GetOrdersForMonthYearStatus(month, year , true, false);
                lblHeader.Text = "Processed Orders of " + month1 + " " + year;
                GridView1.DataSource = ds;
                GridView1.DataBind();

            }
            if (print == 3)
            {
                string month1 = Session["PrintMonth1"].ToString();
                string month = Session["PrintMonth"].ToString();
                string year = Session["PrintYear"].ToString();
                ds = objOrder.GetOrdersForMonthYearStatus(month, year, false, true);
                lblHeader.Text = "Cancelled Orders of " + month1 + " " + year;
                GridView1.DataSource = ds;
                GridView1.DataBind();

            }
            if (print == 4)
            {
                string year = Session["PrintYear"].ToString();
                ds = objOrder.GetOrdersForYearStatus(year, true, false);
                lblHeader.Text = "Processed Orders of Year " + year;
                GridView1.DataSource = ds;
                GridView1.DataBind();                  
            }
            if (print == 5)
            {
                string year = Session["PrintYear"].ToString();
                ds = objOrder.GetOrdersForYearStatus(year, false, true);
                lblHeader.Text = "Cancelled Orders of Year " + year;
                GridView1.DataSource = ds;
                GridView1.DataBind();                 
            }
            if (print == 6)
            {

                lblHeader.Text = "All Processed Orders ";
                ds = objOrder.GetProcessedOrders();
                GridView1.DataSource = ds;
                GridView1.DataBind();                 
                        
            }
            if (print == 7)
            {
                lblHeader.Text = "All Cancelled Orders";
                ds = objOrder.GetCancelledOrders();
                GridView1.DataSource = ds;
                GridView1.DataBind();                 
                     
            }
            if (print == 8)
            {
                string month1 = Session["PrintMonth1"].ToString();
                string month = Session["PrintMonth"].ToString();
                string year = Session["PrintYear"].ToString();
                lblHeader.Text = "All Orders of " + month1 + " " + year;
                ds = objOrder.GetOrdersForMonthYear(month, year);
                GridView1.DataSource = ds;
                GridView1.DataBind();   
            }
            if (print == 9)
            {
                string year = Session["PrintYear"].ToString();
                lblHeader.Text = "All Orders of Year " + year;
                    ds = objOrder.GetOrdersForYear(year);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            //if (print == 10)
            //{
            //    lblHeader.Text = "All Orders";
            //   // Session["Print"] = 1;
            //    ds = objOrder.GetAllOrders();
            //    GridView1.DataSource = ds;
            //    GridView1.DataBind();
            //}
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
