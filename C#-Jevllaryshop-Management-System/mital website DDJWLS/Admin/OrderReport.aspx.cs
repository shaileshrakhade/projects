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

public partial class Admin_OrderReport : System.Web.UI.Page
{
    clsOrders objOrder = new clsOrders();  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            for (int i = 2005; i <= System.DateTime.Now.Year; i++)
            {
                ddlYear.Items.Add(i.ToString());
            }
            DataSet ds = new DataSet();
            ds = objOrder.GetAllOrders();
            Session["Print"] = 1;
            lblHeader.Text = "All Orders"; 
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                PanelData.Visible = false;
                PanelError.Visible = true;  
            }
        }

    }
    protected void btnGo_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet(); 
        if (ddlStatus.SelectedItem.Text != "All Orders")
        {
            if (ddlYear.SelectedItem.Text != "Year")
            {
                if (ddlMonth.SelectedItem.Text != "Month")
                {
                    Session["PrintYear"] = ddlYear.SelectedItem.Text;
                    Session["PrintMonth1"] = ddlMonth.SelectedItem.Text;
                    Session["PrintMonth"] = ddlMonth.SelectedValue.ToString();  
                    if (ddlStatus.SelectedItem.Text == "Processed Orders")
                    {
                        Session["Print"] = 2;
                        
                        ds = objOrder.GetOrdersForMonthYearStatus(ddlMonth.SelectedValue.ToString(), ddlYear.SelectedItem.Text, true, false);
                        lblHeader.Text = "Processed Orders of " + ddlMonth.SelectedItem.Text + " " + ddlYear.SelectedItem.Text;    
                        if(ds.Tables[0].Rows.Count>0)
                        {
                            
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                        }
                        else
                        {
                            PanelData.Visible = false;
                            PanelError.Visible = true;
                        }
                    }
                    else
                    {
                        Session["Print"] = 3;
                        ds = objOrder.GetOrdersForMonthYearStatus(ddlMonth.SelectedValue.ToString(), ddlYear.SelectedItem.Text, false, true);
                        lblHeader.Text = "Cancelled Orders of " + ddlMonth.SelectedItem.Text + " " + ddlYear.SelectedItem.Text;    
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            GridView1.DataSource = ds;
                            GridView1.DataBind();
                        }
                        else
                        {
                            PanelData.Visible = false;
                            PanelError.Visible = true;
                        }
                    }

                }
                else
                {
                    Session["PrintYear"] = ddlYear.SelectedItem.Text;  
                    if (ddlStatus.SelectedItem.Text == "Processed Orders")
                    {
                       
                        Session["Print"] = 4;
                        ds = objOrder.GetOrdersForYearStatus(ddlYear.SelectedItem.Text, true, false);
                        lblHeader.Text = "Processed Orders of Year " + ddlYear.SelectedItem.Text;    
                        if(ds.Tables[0].Rows.Count>0)
                        {
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                        }
                        else
                        {
                            PanelData.Visible = false;
                            PanelError.Visible = true;
                        }
                    }
                    else
                    {
                        Session["Print"] = 5; 
                        ds = objOrder.GetOrdersForYearStatus(ddlYear.SelectedItem.Text, false, true);
                        lblHeader.Text = "Cancelled Orders of Year " + ddlYear.SelectedItem.Text; 
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            GridView1.DataSource = ds;
                            GridView1.DataBind();
                        }
                        else
                        {
                            PanelData.Visible = false;
                            PanelError.Visible = true;
                        }
                    }

                }
            }
            else
            {
                if (ddlMonth.SelectedItem.Text == "Month")
                {
                    if (ddlStatus.SelectedItem.Text == "Processed Orders")
                    {
                        Session["Print"] = 6; 
                        lblHeader.Text = "All Processed Orders ";
                        ds = objOrder.GetProcessedOrders();
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            GridView1.DataSource = ds;
                            GridView1.DataBind();
                        }
                        else
                        {
                            PanelData.Visible = false;
                            PanelError.Visible = true;
                        }
                    }
                    else
                    {
                        Session["Print"] = 7; 
                        lblHeader.Text = "All Cancelled Orders";
                        ds = objOrder.GetCancelledOrders();
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            GridView1.DataSource = ds;
                            GridView1.DataBind();
                        }
                        else
                        {
                            PanelData.Visible = false;
                            PanelError.Visible = true;
                        }
                    }
                }
                else
                {
                    string str = "<script language='javascript'>alert('Please select Year');</script>";
                    Page.RegisterStartupScript("PopUp", str);

                }

            }
        }
        else //for All Orders
        {
            if (ddlYear.SelectedItem.Text != "Year")
            {
                if (ddlMonth.SelectedItem.Text != "Month")
                {
                    Session["Print"] = 8;
                    Session["PrintYear"] = ddlYear.SelectedItem.Text;
                    Session["PrintMonth1"] = ddlMonth.SelectedItem.Text;
                    Session["PrintMonth"] = ddlMonth.SelectedValue.ToString();     
                    lblHeader.Text = "All Orders of " + ddlMonth.SelectedItem.Text + " " + ddlYear.SelectedItem.Text;    
                    ds = objOrder.GetOrdersForMonthYear(ddlMonth.SelectedValue.ToString(), ddlYear.SelectedItem.Text);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                    }
                    else
                    {
                        PanelData.Visible = false;
                        PanelError.Visible = true;
                    }
                }
                else
                {
                    Session["Print"] = 9;
                    Session["PrintYear"] = ddlYear.SelectedItem.Text;
                    
                    lblHeader.Text = "All Orders of Year " + ddlYear.SelectedItem.Text;    
                    ds = objOrder.GetOrdersForYear(ddlYear.SelectedItem.Text);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                    }
                    else
                    {
                        PanelData.Visible = false;
                        PanelError.Visible = true;
                    }
                 }
            }
            else
            {
                if (ddlMonth.SelectedItem.Text == "Month")
                {
                    lblHeader.Text="All Orders";
                    Session["Print"] = 1;
                    ds = objOrder.GetAllOrders();
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                    }
                    else
                    {
                        PanelData.Visible = false;
                        PanelError.Visible = true;
                    }
                }
                else
                {
                    string str = "<script language='javascript'>alert('Please select Year');</script>";
                    Page.RegisterStartupScript("PopUp", str);

                }
            }
       

        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
           DataSet ds = new DataSet(); 
        if (ddlStatus.SelectedItem.Text != "All Orders")
        {
            if (ddlYear.SelectedItem.Text != "Year")
            {
                if (ddlMonth.SelectedItem.Text != "Month")
                {
                      
                    
                    if (ddlStatus.SelectedItem.Text == "Processed Orders")
                    {
                        ds = objOrder.GetOrdersForMonthYearStatus(ddlMonth.SelectedValue.ToString(), ddlYear.SelectedItem.Text, true, false);
                        lblHeader.Text = "Processed Orders of " + ddlMonth.SelectedItem.Text + " " + ddlYear.SelectedItem.Text;    
                        if(ds.Tables[0].Rows.Count>0)
                        {
                            
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                        }
                        else
                        {
                            PanelData.Visible = false;
                            PanelError.Visible = true;
                        }
                    }
                    else
                    {
                        ds = objOrder.GetOrdersForMonthYearStatus(ddlMonth.SelectedValue.ToString(), ddlYear.SelectedItem.Text, false, true);
                        lblHeader.Text = "Cancelled Orders of " + ddlMonth.SelectedItem.Text + " " + ddlYear.SelectedItem.Text;    
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            GridView1.DataSource = ds;
                            GridView1.DataBind();
                        }
                        else
                        {
                            PanelData.Visible = false;
                            PanelError.Visible = true;
                        }
                    }

                }
                else
                {
                    if (ddlStatus.SelectedItem.Text == "Processed Orders")
                    {
                        ds = objOrder.GetOrdersForYearStatus(ddlYear.SelectedItem.Text, true, false);
                        lblHeader.Text = "Processed Orders of Year " + ddlYear.SelectedItem.Text;    
                        if(ds.Tables[0].Rows.Count>0)
                        {
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                        }
                        else
                        {
                            PanelData.Visible = false;
                            PanelError.Visible = true;
                        }
                    }
                    else
                    {
                        ds = objOrder.GetOrdersForYearStatus(ddlYear.SelectedItem.Text, false, true);
                        lblHeader.Text = "Cancelled Orders of Year " + ddlYear.SelectedItem.Text; 
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            GridView1.DataSource = ds;
                            GridView1.DataBind();
                        }
                        else
                        {
                            PanelData.Visible = false;
                            PanelError.Visible = true;
                        }
                    }

                }
            }
            else
            {
                if (ddlMonth.SelectedItem.Text == "Month")
                {
                    if (ddlStatus.SelectedItem.Text == "Processed Orders")
                    {
                        lblHeader.Text = "All Processed Orders ";
                        ds = objOrder.GetProcessedOrders();
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            GridView1.DataSource = ds;
                            GridView1.DataBind();
                        }
                        else
                        {
                            PanelData.Visible = false;
                            PanelError.Visible = true;
                        }
                    }
                    else
                    {
                        lblHeader.Text = "All Cancelled Orders"; 
                        ds = objOrder.GetCancelledOrders();
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            GridView1.DataSource = ds;
                            GridView1.DataBind();
                        }
                        else
                        {
                            PanelData.Visible = false;
                            PanelError.Visible = true;
                        }
                    }
                }
                else
                {
                    string str = "<script language='javascript'>alert('Please select Year');</script>";
                    Page.RegisterStartupScript("PopUp", str);

                }

            }
        }
        else //for All Orders
        {
            if (ddlYear.SelectedItem.Text != "Year")
            {
                if (ddlMonth.SelectedItem.Text != "Month")
                {
                    lblHeader.Text = "All Orders of " + ddlMonth.SelectedItem.Text + " " + ddlYear.SelectedItem.Text;    
                    ds = objOrder.GetOrdersForMonthYear(ddlMonth.SelectedValue.ToString(), ddlYear.SelectedItem.Text);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                    }
                    else
                    {
                        PanelData.Visible = false;
                        PanelError.Visible = true;
                    }
                }
                else
                {
                    lblHeader.Text = "All Orders of Year " + ddlYear.SelectedItem.Text;    
                    ds = objOrder.GetOrdersForYear(ddlYear.SelectedItem.Text);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                    }
                    else
                    {
                        PanelData.Visible = false;
                        PanelError.Visible = true;
                    }
                 }
            }
            else
            {
                if (ddlMonth.SelectedItem.Text == "Month")
                {
                    lblHeader.Text="All Orders";  

                    ds = objOrder.GetAllOrders();
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                    }
                    else
                    {
                        PanelData.Visible = false;
                        PanelError.Visible = true;
                    }
                }
                else
                {
                    string str = "<script language='javascript'>alert('Please select Year');</script>";
                    Page.RegisterStartupScript("PopUp", str);

                }
            }
       

        }
    }

    protected void lnkPrint_Click(object sender, EventArgs e)
    {
        Response.Redirect("OrderReport1.aspx"); 
    }
}
