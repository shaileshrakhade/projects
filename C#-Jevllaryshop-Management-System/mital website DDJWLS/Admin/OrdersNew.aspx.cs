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

public partial class Admin_OrdersNew : System.Web.UI.Page
{
    clsOrders objOrder = new clsOrders(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Binding data with Grid View
            loadGridView(); 
           
            //Filling the drop down list for date
           
            //for (int i = 1; i <= 31; i++)
            //{
            //    ddlstartDay.Items.Add(i.ToString());
            //    ddlendYear.Items.Add(i.ToString());
            //}
            //for (int j = 2000; j <= System.DateTime.Now.Year; j++)
            //{
            //    ddlstartYear.Items.Add(j.ToString());
            //    ddlendYear.Items.Add(j.ToString() );
            //}
        }

    }
    protected void btnSelectAll_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox chkbox = (CheckBox)GridView1.Rows[i].FindControl("cbSelect");
            chkbox.Checked = true; 
        }
    }
    protected void btnUnSelectAll_Click(object sender, EventArgs e)
    {

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox chkbox = (CheckBox)GridView1.Rows[i].FindControl("cbSelect");
            chkbox.Checked = false;
        }

    }
    protected void btnProcess_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            string nqid = Convert.ToString(GridView1.Rows[i].Cells[0].Text);
            CheckBox chk = (CheckBox)GridView1.Rows[i].FindControl("cbSelect");
            Label lblorderID = (Label)GridView1.Rows[i].FindControl("lblOrderId");
            if (chk.Checked == true)
            {
                int orderId = Convert.ToInt32(lblorderID.Text); 
                objOrder.ProcessOrder(orderId); 
            }

        }
        //string str1 = "<script language='javascript'>alert('Select Orders are Processed now.');</script>";
        //Page.RegisterStartupScript("PopUp", str1);
        PanelLinks1.Visible = true;
        PanelMain.Visible = false;
        lblMsg.Text = "The order was Processed successfully.";
        loadGridView(); 
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            string nqid = Convert.ToString(GridView1.Rows[i].Cells[0].Text);
            CheckBox chk = (CheckBox)GridView1.Rows[i].FindControl("cbSelect");
            Label lblorderID = (Label)GridView1.Rows[i].FindControl("lblOrderId");
            if (chk.Checked == true)
            {
                int orderId = Convert.ToInt32(lblorderID.Text);
                objOrder.CancelOrder(orderId);  
            }

        }
        //string str1 = "<script language='javascript'>alert('Selected Orders are Canceled now.');</script>";
        //Page.RegisterStartupScript("PopUp", str1);
         PanelLinks1.Visible = true;
        PanelMain.Visible = false;
        lblMsg.Text = "The order was Cancelled successfully.";
        loadGridView(); 

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
            Session["redirect"] = 2;
        }
        if (e.CommandName == "Product" && e.CommandArgument != null)
        {
            Response.Redirect("OrderProductDetails.aspx?oi=" + orderId);
            Session["redirect"] = 2;
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        DataSet ds = new DataSet();
        ds = objOrder.GetNewOrders(); 
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {


    }

    public void loadGridView()
    {
        DataSet ds = new DataSet();
        ds = objOrder.GetNewOrders();
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
}
