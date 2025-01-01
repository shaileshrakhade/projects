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

public partial class Category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int root_cat = Convert.ToInt32(Session["root_cat"]);
            int catid = Convert.ToInt32(Session["catid"]);


            string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(conString);
            string cmd2 = "Select * from tblCategory3 where Category2_ID= '" + catid + "' ";
            SqlCommand cmd3 = new SqlCommand(cmd2, conn);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd3);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            DataList1.DataSource = ds1;
            DataList1.DataBind();

            int catid3 = Convert.ToInt32(ds1.Tables[0].Rows[0].ItemArray[0].ToString());
            Session["cat3id"] = catid3;
        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("Product1.aspx");
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (Convert.ToString(e.CommandArgument) != "")
        {
            String catid3 = Convert.ToString(e.CommandArgument);
            Session["cat3id"] = catid3;
            Response.Redirect("Product1.aspx");
        }
    }
}
