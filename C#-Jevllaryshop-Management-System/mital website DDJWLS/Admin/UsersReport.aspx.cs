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

public partial class Admin_UsersReport : System.Web.UI.Page
{
    clsCustomers objCustomer = new clsCustomers(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = objCustomer.GetAllCustomers();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            lblHeader.Text = "All Customers";
            Session["UserPrint"] = 1; 
        }
    }
    protected void btnsubmitdate_Click(object sender, EventArgs e)
    {
        
        if (ddlstartDay.SelectedItem.Text != "Day")
        {
            if (ddlstartMonth.SelectedItem.Text != "Month")
            {
                if (ddlstartYear.SelectedItem.Text != "Year")
                {
                    if (ddlendDay.SelectedItem.Text != "Day")
                    {
                        if (ddlendMonth.SelectedItem.Text != "Month")
                        {
                            if (ddlstartDay.SelectedItem.Text != "Year")
                            {
                                DateTime startDate, endDate;
                                string stringStartDate, stringEndDate;
                                stringStartDate = ddlstartMonth.SelectedItem.Text + "/" + ddlstartDay.SelectedItem.Text + "/" + ddlstartYear.SelectedItem.Text;
                                stringEndDate = ddlendMonth.SelectedItem.Text + "/" + ddlendDay.SelectedItem.Text + "/" + ddlendYear.SelectedItem.Text;
                                startDate = Convert.ToDateTime(stringStartDate);
                                endDate = Convert.ToDateTime(stringEndDate);
                                DataSet ds = new DataSet();
                                Session["UserPrint"] = 2;
                                Session["StartDate"] = startDate;
                                Session["EndDate"] = endDate;  
                                ds = objCustomer.GetCustomerBetweenDate(startDate,endDate); 
                                GridView1.DataSource = ds;
                                GridView1.DataBind();
                                lblHeader.Text = "Customer registered from Date " + ddlstartDay.SelectedItem.Text + " " + ddlstartMonth.SelectedItem.Text + " " + ddlstartYear.SelectedItem.Text + " to Date " + ddlendDay.SelectedItem.Text + " " + ddlendMonth.SelectedItem.Text + " " + ddlendYear.SelectedItem.Text;
                            }
                            else
                            {
                                string str1 = "<script language='javascript'>alert('Select proper date');</script>";
                                Page.RegisterStartupScript("PopUp", str1);
                            }
                        }
                        else
                        {
                            string str2 = "<script language='javascript'>alert('Select proper date');</script>";
                            Page.RegisterStartupScript("PopUp", str2);
                        }
                        }
                    else
                    {
                        string str3 = "<script language='javascript'>alert('Select proper date');</script>";
                        Page.RegisterStartupScript("PopUp", str3);
                    }
                    }
                else
                {
                    string str4 = "<script language='javascript'>alert('Select proper date');</script>";
                    Page.RegisterStartupScript("PopUp", str4);
                }
                }
            else
            {
                string str5 = "<script language='javascript'>alert('Select proper date');</script>";
                Page.RegisterStartupScript("PopUp", str5);
            }
            }
            else
            {
                string str6 = "<script language='javascript'>alert('Select proper date');</script>";
                Page.RegisterStartupScript("PopUp", str6);

            }
     }
    protected void lnkPrint_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserReport1.aspx"); 
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        if (Convert.ToInt32(Session["UserPrint"]) == 1)
        {
            DataSet ds = new DataSet();
            ds = objCustomer.GetAllCustomers();
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        if (Convert.ToInt32(Session["UserPrint"]) == 2)
        {
            DateTime startDate, endDate;
            string stringStartDate, stringEndDate;
            stringStartDate = ddlstartMonth.SelectedItem.Text + "/" + ddlstartDay.SelectedItem.Text + "/" + ddlstartYear.SelectedItem.Text;
            stringEndDate = ddlendMonth.SelectedItem.Text + "/" + ddlendDay.SelectedItem.Text + "/" + ddlendYear.SelectedItem.Text;
            startDate = Convert.ToDateTime(stringStartDate);
            endDate = Convert.ToDateTime(stringEndDate);
            DataSet ds = new DataSet();
            Session["UserPrint"] = 2;
            Session["StartDate"] = startDate;
            Session["EndDate"] = endDate;
            ds = objCustomer.GetCustomerBetweenDate(startDate, endDate);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}
