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

public partial class Admin_Orders : System.Web.UI.Page
{
    clsOrders objOrder = new clsOrders();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Binding data with Grid View
            DataSet ds = new DataSet();
            ds = objOrder.GetAllOrders();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
                PanelData.Visible = true;
                PanelError.Visible = false; 
            }
            else
            {
                PanelData.Visible =false;
                PanelError.Visible = true; 
            }
            //Filling the drop down list for date
            for (int i = 1; i <= 31; i++)
            {
                ddlstartDay.Items.Add(i.ToString());    
                ddlendDay.Items.Add(i.ToString());  
            }
            for (int j = 2000; j <= System.DateTime.Now.Year; j++)
            {
                ddlstartYear.Items.Add(j.ToString());
                ddlendYear.Items.Add(j.ToString());  
            }
        }
    }
    protected void btnGo_Click(object sender, EventArgs e)
    {

    }
    protected void btnshowall_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        ds = objOrder.GetAllOrders();
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
                                ds = objOrder.GetOrderBetweenDate(startDate, endDate);
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
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int orderId=Convert.ToInt32(e.CommandArgument); 
        if (e.CommandName == "Customer" && e.CommandArgument != null)
        {
            Response.Redirect("OrderCustomerDetails.aspx?oi=" + orderId);
            Session["redirect"] = 1;

  
        }
        if (e.CommandName == "Product" && e.CommandArgument != null)
        {
            Response.Redirect("OrderProductDetails.aspx?oi=" + orderId);
            Session["redirect"] = 1;
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        DataSet ds = new DataSet();
        ds = objOrder.GetAllOrders(); 
        GridView1.DataSource = ds;
        GridView1.DataBind(); 


    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }
}
