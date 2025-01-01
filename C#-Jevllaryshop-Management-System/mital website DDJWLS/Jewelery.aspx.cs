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
public partial class Gold : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {

       
        if (!IsPostBack)
        {
            int root_cat = Convert.ToInt32(Session["root_cat"]);
             int catid = Convert.ToInt32(Session["catid"]);
             //if (Session["catid"] != null)
             //{

                 string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                 SqlConnection conn = new SqlConnection(conString);
                 string cmd = "Select * from tblProduct where Category1_ID= '" + root_cat + "' and Category2_ID='" + catid + "'";
                 SqlCommand cmd1 = new SqlCommand(cmd, conn);
                 SqlDataAdapter da = new SqlDataAdapter(cmd1);
                 DataSet ds = new DataSet();
                 da.Fill(ds);
                // DataList1.DataSource = ds;
                // DataList1.DataBind();
                 if (ds.Tables[0].Rows.Count == 0)
                 {
                     string str = "<script language='javascript'>alert('No item in this position.');</script>";
                     Page.RegisterStartupScript("PopUp", str);
                     lnkNext.Visible = false;

                 }
                 else
                 {
                     //int Product_ID;
                     //Product_ID = Convert.ToInt32(ds.Tables[0].Rows[0].ItemArray[0]);
                     //Session["Product_ID"] = Product_ID;
                 }

             //}
             //else
             //{

             //    string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
             //    SqlConnection conn = new SqlConnection(conString);
             //    string cmd2 = "Select * from tblProduct where Category1_ID= '" + root_cat + "' ";
             //    SqlCommand cmd12 = new SqlCommand(cmd2, conn);
             //    SqlDataAdapter da2 = new SqlDataAdapter(cmd12);
             //    DataSet ds2 = new DataSet();
             //    da2.Fill(ds2);
             //    DataList1.DataSource = ds2;
             //    DataList1.DataBind();
             //    int Product_ID;
             //    Product_ID = Convert.ToInt32(ds2.Tables[0].Rows[0].ItemArray[0]);
             //    Session["Product_ID"] = Product_ID;

             //}


        }

    }
    protected void lnkNext_Click(object sender, EventArgs e)
    {

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("Product_Detail.aspx");
        
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {

        if (e.CommandName == "Product_ID" && e.CommandArgument != null)
        {
            int Product_ID = Convert.ToInt32(e.CommandArgument);

           
            Session["Product_ID"] = Product_ID;

            //int catid = Convert.ToInt32(Session["catid"]);
            //string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            //SqlConnection conn = new SqlConnection(conString);
            //string cmdbangle = " select * from tblCategory3 where Category2_ID='" + catid + "'";
            //SqlCommand cmdbangle1 = new SqlCommand(cmdbangle,conn);
            //SqlDataAdapter da1 = new SqlDataAdapter(cmdbangle1);
            //DataSet ds1 = new DataSet();
            //da1.Fill(ds1);
            //if (ds1.Tables[0].Rows.Count == 0)
            //{
            //    Response.Redirect("Product_Detail.aspx");
            //}
            //else
            //{
               
            //}
           


           Response.Redirect("Product_Detail.aspx");
        }
        

    }
}

