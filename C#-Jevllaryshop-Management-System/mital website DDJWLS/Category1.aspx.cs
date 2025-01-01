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
using System.Data.SqlClient;

public partial class Category1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int root_cat = Convert.ToInt32(Session["root_cat"]);
            string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(conString);
            string cmd = "Select * from tblCategory2 where Category1_ID='" + root_cat + "'";
            SqlCommand cmd1 = new SqlCommand(cmd, conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            da.Fill(ds);
            grdmenu.DataSource = ds.Tables[0];
            grdmenu.DataBind();
            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
        }
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {

        if (e.CommandName == "Product" && e.CommandArgument != null)
        {
            int catid = Convert.ToInt32(e.CommandArgument);
            Session["catid"] = catid;

            // int catid = Convert.ToInt32(Session["catid"]);
            string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(conString);
            string cmdbangle = " select * from tblCategory3 where Category2_ID='" + catid + "'";
            SqlCommand cmdbangle1 = new SqlCommand(cmdbangle, conn);
            SqlDataAdapter da1 = new SqlDataAdapter(cmdbangle1);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            if (ds1.Tables[0].Rows.Count == 0)
            {
                Response.Redirect("Jewelery.aspx");
            }
            else
            {
                Response.Redirect("Category.aspx");
            }




            //Response.Redirect("Jewelery.aspx");
        }
    }
    protected void grdmenu_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "product" && e.CommandArgument != null)
        {
            int catid = Convert.ToInt32(e.CommandArgument);
            Session["catid"] = catid;

            string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(conString);
            string cmdbangle = " select * from tblCategory3 where Category2_ID='" + catid + "'";
            SqlCommand cmdbangle1 = new SqlCommand(cmdbangle, conn);
            SqlDataAdapter da1 = new SqlDataAdapter(cmdbangle1);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            if (ds1.Tables[0].Rows.Count == 0)
            {
                Response.Redirect("Jewelery.aspx");
            }
            else
            {
                Response.Redirect("Category.aspx");
            }
           
            //Response.Redirect("Jewelery.aspx");
        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grdmenu_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}
