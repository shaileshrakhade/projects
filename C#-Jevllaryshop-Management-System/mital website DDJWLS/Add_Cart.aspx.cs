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

public partial class Add_Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(conString);
            string cmdcart = "select * from tblSessionCart";
            SqlCommand cmdcart1 = new SqlCommand(cmdcart, conn);
            SqlDataAdapter da1 = new SqlDataAdapter(cmdcart1);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            if (ds1.Tables[0].Rows.Count > 0)
            {
                pnlcartview.Visible = true;
                int Product_ID = Convert.ToInt32(Session["Product_ID"]);
                //string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                // SqlConnection conn = new SqlConnection(conString);
                string cmd = "select Cart_ID,tblProduct.Product_ID,Product_Name,Price,Weight,Weight_Unit from tblProduct,tblSessionCart where tblSessionCart.Product_ID=tblProduct.Product_ID";
                SqlCommand cmd1 = new SqlCommand(cmd, conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd1);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                string str1 = "<script language='javascript'>alert('No item in the cart.');</script>";
                Page.RegisterStartupScript("PopUp", str1);
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string str1 = "<script language='javascript'>alert('Are you sure to place order.');</script>";
        Page.RegisterStartupScript("PopUp", str1);
        if (Session["Customer_id"] != null)
        {

            Response.Redirect("Order.aspx");
        }
        else
        {
            string str2 = "<script language='javascript'>alert('Are you not logged in. First you log in.');</script>";
            Page.RegisterStartupScript("PopUp", str2);
            int Login;
            Session["Login"] = 1;
           // ViewState["Login"] = 1;
            Response.Redirect("login.aspx");
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "remove" && e.CommandArgument != null)
        {
            int productId = Convert.ToInt32(e.CommandArgument);

            string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(conString);
            string cmdcart = "delete from tblSessionCart where Cart_ID=" + productId ;
            SqlCommand cmd = new SqlCommand(cmdcart, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            string cmdS = "select Cart_ID,tblProduct.Product_ID,Product_Name,Price,Weight,Weight_Unit from tblProduct,tblSessionCart where tblSessionCart.Product_ID=tblProduct.Product_ID";
            SqlCommand cmd1 = new SqlCommand(cmdS, conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            if (ds.Tables[0].Rows.Count == 0)
            {
                pnlcartview.Visible = false;
            } 
        }
    }
    protected void btnClearCart_Click(object sender, EventArgs e)
    {
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmdcart = "delete from tblSessionCart";
        SqlCommand cmd = new SqlCommand(cmdcart, conn);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        string cmdS = "select Cart_ID,tblProduct.Product_ID,Product_Name,Price,Weight,Weight_Unit from tblProduct,tblSessionCart where tblSessionCart.Product_ID=tblProduct.Product_ID";
        SqlCommand cmd1 = new SqlCommand(cmdS, conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        pnlcartview.Visible = false;  
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
