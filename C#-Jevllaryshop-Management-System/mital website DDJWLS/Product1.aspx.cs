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

public partial class Product1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int root_cat = Convert.ToInt32(Session["root_cat"]);
            int catid = Convert.ToInt32(Session["catid"]);
            int cat3id = Convert.ToInt32(Session["cat3id"]);
            //if (Session["catid"] != null)
            //{

            string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(conString);
            string cmd = "Select * from tblProduct where Category1_ID= '" + root_cat + "' and Category2_ID='" + catid + "' and Category3_ID='" + cat3id + "'";
            SqlCommand cmd1 = new SqlCommand(cmd, conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
            //int Product_ID;
            //   Product_ID = Convert.ToInt32(ds.Tables[0].Rows[0].ItemArray[0]);
            //Session["Product_ID"] = Product_ID;
            if (ds.Tables[0].Rows.Count == 0)
            {
                //int Product_ID;
                // Product_ID = Convert.ToInt32(ds.Tables[0].Rows[0].ItemArray[0]);
                //Session["Product_ID"] = Product_ID;
                //Response.Redirect("Product_Detail.aspx");
                string str = "<script language='javascript'>alert('No item in this position.');</script>";
                Page.RegisterStartupScript("PopUp", str);
               // lnkNext.Visible = false;

            }
            else
           {
            //    int Product_ID;
            //    Product_ID = Convert.ToInt32(ds.Tables[0].Rows[0].ItemArray[0]);
            //    Session["Product_ID"] = Product_ID;
            //    Response.Redirect("Product_Detail.aspx");
            }

        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {

        if (e.CommandName == "Product_ID" && e.CommandArgument != null)
        {
            int Product_ID = Convert.ToInt32(e.CommandArgument);

            //int Product_ID;
            //Product_ID = Convert.ToInt32(ds.Tables[0].Rows[0].ItemArray[0]);
           Session["Product_ID"] = Product_ID;

            Response.Redirect("Product_Detail.aspx");
        }
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}