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

public partial class DApproveorderefault2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int Product_ID = Convert.ToInt32(Session["Product_ID"]);
        string order_code = Convert.ToString(Session["order_code"]);
        lblodercode.Text = order_code;
        //if (Session["Customer_id"] != null)
        //{
        int Customer_id = Convert.ToInt32(Session["Customer_id"]);
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmd = "Select * from tblCustomer where Customer_ID=" + Customer_id;
        SqlCommand cmd1 = new SqlCommand(cmd, conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);

        lblfname.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
        lbllastname.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
        lbloccupation.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
        lblstreet.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
        lblcity.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
        lblstate.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
        lblcountry.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
        lblpincode.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
        lblcontactno.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();
        lblmobileno.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
        lblemailid.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();
        //  lblmailid.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();


        int a, s = 0;// t = 0;

        string cmd2 = "select tblProduct.Product_ID,Product_Name,Price,Weight,Weight_Unit from tblProduct,tblSessionCart where tblSessionCart.Product_ID=tblProduct.Product_ID";
        SqlCommand cmd12 = new SqlCommand(cmd2, conn);
        SqlDataAdapter da2 = new SqlDataAdapter(cmd12);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2);
        GridView1.DataSource = ds2;
        GridView1.DataBind();
        for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
        {

            a = Convert.ToInt32(ds2.Tables[0].Rows[i].ItemArray[2]);


            s = s + a;

            //    t = i + 1;
            //    //t.ToString();

        }

        lblAmount.Text = Convert.ToString(s);
        //}
    }
    protected void btnprint_Click(object sender, EventArgs e)
    {
        string strscript = "<script>" +
                                          "window.print()" +
                                          "</script>";
        Page.RegisterClientScriptBlock("ImageButton1_Click", strscript);
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}
