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
using System.Text;

public partial class Product_Detail : System.Web.UI.Page
{
    StringBuilder builder = new StringBuilder();
    protected void Page_Load(object sender, EventArgs e)
    {
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);

        string cmd2 = "select * from tblSessioncart";
        SqlCommand cmd12 = new SqlCommand(cmd2, conn);
        SqlDataAdapter da2 = new SqlDataAdapter(cmd12);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2);
        //conn.Open();
        //cmd12.ExecuteScalar();

        if (ds2.Tables[0].Rows.Count>0)
        {
            btnorder.Visible = false;
        }
        else
        {
            btnorder.Visible = true;
        }


      




        if (!IsPostBack)
        {
            int root_cat = Convert.ToInt32(Session["root_cat"]);
            int catid = Convert.ToInt32(Session["catid"]);
            int cat3id = Convert.ToInt32(Session["cat3id"]);
            int Product_ID = Convert.ToInt32(Session["Product_ID"]);
            //string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            //SqlConnection conn = new SqlConnection(conString);
           // string cmd = "select Product_ID,Product_Name,tblCategory2.Category_Name,tblCategory1.Category_Name,Price,weight,Weight_Unit,Short_Desc,Long_Desc,tblProduct.Image from tblProduct,tblCategory1,tblCategory2 where tblCategory1.Category1_ID=tblProduct.Category1_ID and tblCategory1.Category1_ID='" + root_cat + "' and tblProduct.Category2_ID=tblCategory2.Category2_ID and tblCategory2.Category2_ID='" + catid + "'";

            string cmd = "Select Product_ID, Product_Code,Product_Name,tblCategory1.Category_Name as RootCategory,tblCategory2.Category_Name as Category,tblCategory3.Category_Name as SubCategory,Price,weight,Weight_Unit,Short_Desc,Long_Desc,tblProduct.Image from tblProduct left outer join tblCategory1 on tblProduct.Category1_ID=tblCategory1.Category1_ID left outer join tblCategory2 on tblProduct.Category2_ID=tblCategory2.Category2_ID left outer join tblCategory3 on tblProduct.Category3_ID=tblCategory3.Category3_ID where Product_ID='" + Product_ID + "'";

            SqlCommand cmd1 = new SqlCommand(cmd, conn);

            SqlDataAdapter da = new SqlDataAdapter(cmd1);

            DataSet ds = new DataSet();

            da.Fill(ds);
            if (ds.Tables[0].Rows.Count == 0)
            {
                string str2 = "<script language='javascript'>alert('No Item in this position.');</script>";
                Page.RegisterStartupScript("PopUp", str2);

                
            }
            else
            {
                lblproductcode.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
                lblproductname.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
                lblcategory.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
                lblrootcate.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
                Labelsubcat.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
                showimage.ImageUrl = ds.Tables[0].Rows[0].ItemArray[11].ToString();
                lblprice.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
                lblweight.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
                lblweightunit.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
                lbldesc.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();
                lbllongdesc.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
                if(Labelsubcat.Text=="")
                {
                    Labelsubcat.Visible = false;
                    Label13.Visible = false;
                    Label14.Visible=false;
                }
            }

        }
    }
    protected void Image2_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void btnaddcart_Click(object sender, EventArgs e)
    {
       // int Product_ID = Convert.ToInt32(Session["Product_ID"]);
       // string Session_ID;
       // Session_ID = Session.SessionID;
       // Session["Session_ID"]=Session_ID;
       // int id = maxid();
       // string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
       // SqlConnection conn = new SqlConnection(conString);
       // string cmd = "insert into tblSessionCart ( Cart_ID,Session_ID,Product_ID) values ('" + id + "','" + Session_ID + "','" + Product_ID + "')";
       // SqlCommand cmd1 = new SqlCommand(cmd, conn);
       // conn.Open();
       //// cmd.ExecuteNonQuery();




        Response.Redirect("Add_Cart.aspx");
    }
    protected void btnaddcart_Click1(object sender, EventArgs e)
    {

        int Product_ID = Convert.ToInt32(Session["Product_ID"]);
        string Session_ID;
        Session_ID = Session.SessionID;
        Session["Session_ID"] = Session_ID;
        int id = maxid();
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmd = "insert into tblSessionCart ( Cart_ID,Session_ID,Product_ID) values ('" + id + "','" + Session_ID + "','" + Product_ID + "')";
        SqlCommand cmd1 = new SqlCommand(cmd, conn);
        conn.Open();
        cmd1.ExecuteNonQuery();
        // cmd.ExecuteNonQuery();
        Response.Redirect("Add_Cart.aspx");
    }
    private int maxid()
    {
        object maxID;
        int a;
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmd1 = "SELECT max(Cart_ID) FROM tblSessionCart";
        SqlCommand cmd = new SqlCommand(cmd1, conn);
        conn.Open();

        maxID = cmd.ExecuteScalar();

        if (Convert.IsDBNull(maxID))
        {
            a = 1;

        }
        else
        {
            a = Convert.ToInt32(maxID) + 1;

        }
        return a;
    }
    protected void btnorder_Click(object sender, EventArgs e)
    {

        
            int Product_ID = Convert.ToInt32(Session["Product_ID"]);
          //  int Customer_id = Convert.ToInt32(Session["Customer_id"]);
            string Session_ID;
            Session_ID = Session.SessionID;
            Session["Session_ID"] = Session_ID;
            int id1 = maxcartid();
            string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(conString);
            string cmd3 = "insert into tblSessionCart ( Cart_ID,Session_ID,Product_ID) values ('" + id1 + "','" + Session_ID + "','" + Product_ID + "')";
            SqlCommand cmd13 = new SqlCommand(cmd3, conn);
            conn.Open();
            cmd13.ExecuteNonQuery();




           // int a, s = 0, t = 0;

           // string cmd2 = "select tblProduct.Product_ID,Product_Name,Price,Weight from tblProduct,tblSessionCart where tblSessionCart.Product_ID=tblProduct.Product_ID";
           // SqlCommand cmd12 = new SqlCommand(cmd2, conn);
           // SqlDataAdapter da2 = new SqlDataAdapter(cmd12);
           // DataSet ds2 = new DataSet();
           // da2.Fill(ds2);
           // //GridView1.DataSource = ds2;
           // //GridView1.DataBind();
           // for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
           // {

           //     a = Convert.ToInt32(ds2.Tables[0].Rows[i].ItemArray[2]);


           //     s = s + a;

           //     t = i + 1;
           //     //t.ToString();

           // }

           //// txtamount.Text = Convert.ToString(s);
           // DateTime dt;
           // dt = Convert.ToDateTime(System.DateTime.Now);
           // int id =maxorderid();
           // string order_code = getorderid();
           // //order_code = Convert.ToString("order_code");
           // //Session["order_code"] = order_code;

           //// int Product_ID = Convert.ToInt32(Session["Product_ID"]);
           // int Customer_id = Convert.ToInt32(Session["Customer_id"]);
           // string cmdi = "insert into tblOrder(Order_ID,Order_Code,Customer_ID,Processed,Cancelled,Order_Date,Order_Total,No_Of_Products) values ('" + id + "','" + order_code.ToString() + "',' " + Customer_id.ToString() + " ','" + false + "','" + false + "',' " + dt + " ',' " + s.ToString() + " ','" + t + " ')";
           // SqlCommand cmd33 = new SqlCommand(cmdi, conn);
           // // order_code = Convert.ToString("order_code");
           // //Session["order_code"] = order_code;
           //// conn.Open();
           // cmd33.ExecuteNonQuery();






             //   if (Session["Customer_id"] != null)



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
    private int maxorderid()
    {
        object maxID;
        int m;
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmd4 = "SELECT max(Order_ID) FROM tblOrder";
        SqlCommand cmd44 = new SqlCommand(cmd4, conn);
        conn.Open();

        maxID = cmd44.ExecuteScalar();
        // int a = cmd.ExecuteScalar();
        if (Convert.IsDBNull(maxID))
        {
            m = 1;
            //int id = 1;
            //return id; 

        }
        else
        {
            m = Convert.ToInt32(maxID) + 1;
            //return id;
        }
        return m;


    }


    public string getorderid()
    {

        builder.Append(RandomString(4, false));
        builder.Append(RandomNumber(10, 99));
        return builder.ToString();
    }
    string RandomString(int size, bool lowerCase)
    {


        StringBuilder builder = new StringBuilder();

        Random random = new Random();

        char ch;

        for (int i = 0; i < size; i++)
        {
            ch = Convert.ToChar(Convert.ToInt32(Math.Floor(26 * random.NextDouble() + 65)));
            builder.Append(ch);
        }
        if (lowerCase)
            return builder.ToString().ToLower();
        return builder.ToString();
    }
    private int RandomNumber(int min, int max)
    {
        Random random = new Random();
        return random.Next(min, max);
    }

    private int maxcartid()
    {
        object maxID;
        int m;
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmd4 = "SELECT max(Cart_ID) FROM tblSessionCart";
        SqlCommand cmd44 = new SqlCommand(cmd4, conn);
        conn.Open();

        maxID = cmd44.ExecuteScalar();
        
        if (Convert.IsDBNull(maxID))
        {
            m = 1;
             

        }
        else
        {
            m = Convert.ToInt32(maxID) + 1;
            
        }
        return m;


    }
}
