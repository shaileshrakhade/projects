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
using System.Collections.Generic;
public partial class DDMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {


        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);

        string cmdcart = "select * from tblSessionCart";
        SqlCommand cmdcart1 = new SqlCommand(cmdcart, conn);
        SqlDataAdapter da1 = new SqlDataAdapter(cmdcart1);


        DataSet ds1 = new DataSet();
        da1.Fill(ds1);
        int cartno = ds1.Tables[0].Rows.Count;
        if (cartno == 0)
        {
            HyperLinkcart .Text = "Cart( 0 Item)";
            //LinkButton2.Text = "Cart(0 Items)";  
           // lblcartitem.Text = "(0" + " Items)";
        }
        else
        {
            HyperLinkcart.Text = "Cart( " + ds1.Tables[0].Rows.Count.ToString() + " Items)";  
            // cartno = ds1.Tables[0].Rows.Count.ToString(); 
            //LinkButton2.Text = "Cart(" + ds1.Tables[0].Rows.Count.ToString() + " Items)";  
            //lblcartitem.Text = "(" + ds1.Tables[0].Rows.Count.ToString() + " Items)";
        }






        DateTime dt;
        dt = System.DateTime.Now;
        lbldate.Text = dt.ToString();
        if (Session["Customer_id"] != null)
        {
            int Customer_id = Convert.ToInt32(Session["Customer_id"]);
            lblwelcome.Visible = true;
            lblusername.Visible = true;
            LinkButton2.Visible = true;
            HyperLinklogin.Text = "MY ACCOUNT";
            HyperLinklogin.NavigateUrl = "~/My_Account.aspx";

            //btnlogout.Visible = true;
            //string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            // SqlConnection conn = new SqlConnection(conString);
            string cmd = " select * from tblCustomer where Customer_ID='" + Customer_id + "'";
            SqlCommand cmd1 = new SqlCommand(cmd, conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            da.Fill(ds);
            lblusername.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
        }
        else
        {
            HyperLinklogin.Text = "LOGIN";
            HyperLinklogin.NavigateUrl = "~/login.aspx";
           
        }
        ////grdmenu.Visible = false;
        //Panel2.Visible = true;
        //Panel1.Visible = false;
        //string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //SqlConnection conn = new SqlConnection(conString);
        //string cmd = "Select * from tblProduct where DisplayOrderGroup=4";
        //SqlCommand cmd1 = new SqlCommand(cmd, conn);
        //SqlDataAdapter da = new SqlDataAdapter(cmd1);
        //DataSet ds = new DataSet();
        //da.Fill(ds);
        //DataList2.DataSource = ds;
        //DataList2.DataBind();
    }



    //protected void img2_Click1(object sender, ImageClickEventArgs e)
    //{
    //    Panel2.Visible = false;
    //    Panel1.Visible = true;
    //    int root_cat;

    //    Session["root_cat"] = 1;



    //    string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    //    SqlConnection conn = new SqlConnection(conString);
    //    string cmd = "Select * from tblCategory2 where Category1_ID='" + 1 + "'";
    //    SqlCommand cmd1 = new SqlCommand(cmd, conn);
    //    SqlDataAdapter da = new SqlDataAdapter(cmd1);
    //    DataSet ds = new DataSet();
    //    da.Fill(ds);
    //    grdmenu.DataSource = ds.Tables[0];
    //    grdmenu.DataBind();
    //    DataList1.DataSource = ds.Tables[0];
    //    DataList1.DataBind();
    //    //Response.Redirect("Home.aspx");


    //}
    //protected void img3_Click(object sender, ImageClickEventArgs e)
    //{
    //    Panel2.Visible = false;
    //    Panel1.Visible = true;
    //    int root_cat;

    //    Session["root_cat"] = 2;




    //    string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    //    SqlConnection conn = new SqlConnection(conString);
    //    string cmd = "Select* from tblCategory2 where Category1_ID='" + 2 + "'";
    //    SqlCommand cmd1 = new SqlCommand(cmd, conn);
    //    SqlDataAdapter da = new SqlDataAdapter(cmd1);
    //    DataSet ds = new DataSet();
    //    da.Fill(ds);
    //    grdmenu.DataSource = ds.Tables[0];
    //    grdmenu.DataBind();
    //    DataList1.DataSource = ds.Tables[0];
    //    DataList1.DataBind();
    //}
    //protected void img4_Click(object sender, ImageClickEventArgs e)
    //{

    //    Panel2.Visible = false;
    //    Panel1.Visible = true;
    //    int root_cat;

    //    Session["root_cat"] = 3;




    //    string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    //    SqlConnection conn = new SqlConnection(conString);
    //    string cmd = "Select* from tblCategory2 where Category1_ID='" + 3 + "'";
    //    SqlCommand cmd1 = new SqlCommand(cmd, conn);
    //    SqlDataAdapter da = new SqlDataAdapter(cmd1);
    //    DataSet ds = new DataSet();
    //    da.Fill(ds);
    //    grdmenu.DataSource = ds.Tables[0];
    //    grdmenu.DataBind();
    //    DataList1.DataSource = ds.Tables[0];
    //    DataList1.DataBind();
    //}
    //protected void grdmenu_SelectedIndexChanged(object sender, EventArgs e)
    //{

    //}
    //protected void img1_Click(object sender, ImageClickEventArgs e)
    //{

    //}
    //protected void grdmenu_SelectedIndexChanged1(object sender, EventArgs e)
    //{

    //}
    //protected void grdmenu_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    if (e.CommandName == "product" && e.CommandArgument != null)
    //    {
    //        int catid = Convert.ToInt32(e.CommandArgument);
    //        Session["catid"] = catid;
    //        Response.Redirect("Jewelery.aspx");
    //    }
    //}
    //protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    //{

    //}
    //protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    //{

    //    if (e.CommandName == "Product_ID" && e.CommandArgument != null)
    //    {
    //        int catid = Convert.ToInt32(e.CommandArgument);
    //        Session["catid"] = catid;
            
    //        Response.Redirect("Jewelery.aspx");
    //    }
    //}

  
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["Customer_id"] = null;
        Session.Clear();
        Session.Abandon();
        Session.RemoveAll();
        Response.Clear();
        Response.Redirect("Home.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Add_Cart.aspx");
    }
}
