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

public partial class Order : System.Web.UI.Page
{

    StringBuilder builder = new StringBuilder();
    protected void Page_Load(object sender, EventArgs e)
    {
        //StringBuilder builder = new StringBuilder();

        if (!IsPostBack)
        {
            int Product_ID = Convert.ToInt32(Session["Product_ID"]);
            if (Session["Customer_id"] != null)
            {
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


                int a, s = 0, t = 0;

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

                    t = i + 1;
                    //t.ToString();

                }

                lblAmount.Text = Convert.ToString(s);
                // DateTime dt;
                // dt = Convert.ToDateTime(System.DateTime.Now);
                // int id = maxid();
                // string order_code = getorderid();


                // string cmd3 = "insert into tblOrder(Order_ID,Order_Code,Customer_ID,Processed,Cancelled,Order_Date,Order_Total,No_Of_Products) values ('" + id + "','" + order_code.ToString() + "',' " + Customer_id.ToString() + " ','" + false + "','" + false + "',' " + dt + " ',' " + s.ToString() + " ','" + t + " ')";
                // SqlCommand cmd33 = new SqlCommand(cmd3, conn);

                // conn.Open();
                // cmd33.ExecuteNonQuery();
                // //conn.Close();
                //string  cmdsess = "select * from tblSessionCart";
                // SqlCommand cmdsess1 = new SqlCommand(cmdsess,conn);
                // SqlDataAdapter dasess = new SqlDataAdapter(cmdsess1);
                // DataSet dssess = new DataSet();
                // dasess.Fill(dssess);

                // for (int p = 0; p < dssess.Tables[0].Rows.Count; p++)
                // {
                //     int product_id1 = Convert.ToInt32(dssess.Tables[0].Rows[p].ItemArray[2]);
                //     int orderedproduct_id = maxorderproductid();
                //     // string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                //     //  SqlConnection conn = new SqlConnection(conString);

                //     string  cmdorderpro = " insert into tblOrderedProducts values('" + orderedproduct_id + "','" + id + "','" + product_id1.ToString() + "')";


                // SqlCommand cmdorderpro1 = new SqlCommand(cmdorderpro, conn);
                //   //  conn.Open();
                //     cmdorderpro1.ExecuteNonQuery();
                // }       
            }

        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }






    private int maxid()
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



    public string getorderid()
    {

        builder.Append(RandomString(4, false));
        builder.Append(RandomNumber(10, 99));
        return builder.ToString();
    }

    protected void btnagree_Click(object sender, EventArgs e)
    {
        int Customer_id = Convert.ToInt32(Session["Customer_id"]);

        int a, s = 0, t = 0;
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmd2 = "select tblProduct.Product_ID,Product_Name,Price,Weight,weight_Unit from tblProduct,tblSessionCart where tblSessionCart.Product_ID=tblProduct.Product_ID";
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

            t = i + 1;
            //t.ToString();

        }

        lblAmount.Text = Convert.ToString(s);
        DateTime dt;
        dt = Convert.ToDateTime(System.DateTime.Now);
        int id = maxid();
        string order_code = getorderid();


        string cmd3 = "insert into tblOrder(Order_ID,Order_Code,Customer_ID,Processed,Cancelled,Order_Date,Order_Total,No_Of_Products) values ('" + id + "','" + order_code.ToString() + "',' " + Customer_id.ToString() + " ','" + false + "','" + false + "',' " + dt + " ',' " + s.ToString() + " ','" + t + " ')";
        SqlCommand cmd33 = new SqlCommand(cmd3, conn);

        conn.Open();
        cmd33.ExecuteNonQuery();
        //conn.Close();
        string cmdsess = "select * from tblSessionCart";
        SqlCommand cmdsess1 = new SqlCommand(cmdsess, conn);
        SqlDataAdapter dasess = new SqlDataAdapter(cmdsess1);
        DataSet dssess = new DataSet();
        dasess.Fill(dssess);

        for (int p = 0; p < dssess.Tables[0].Rows.Count; p++)
        {
            int product_id1 = Convert.ToInt32(dssess.Tables[0].Rows[p].ItemArray[2]);
            int orderedproduct_id = maxorderproductid();
            // string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            //  SqlConnection conn = new SqlConnection(conString);

            string cmdorderpro = " insert into tblOrderedProducts values('" + orderedproduct_id + "','" + id + "','" + product_id1.ToString() + "')";


            SqlCommand cmdorderpro1 = new SqlCommand(cmdorderpro, conn);
            //  conn.Open();
            cmdorderpro1.ExecuteNonQuery();
        }







        int m1 = maxid();
        m1 = m1 - 1;

        string cmdsess2 = "select * from tblOrder where Order_ID='" + m1 + "'";
        SqlCommand cmdsess12 = new SqlCommand(cmdsess2, conn);
        SqlDataAdapter das = new SqlDataAdapter(cmdsess12);
        DataSet dss = new DataSet();
        das.Fill(dss);

        string ss;
        ss = Convert.ToString(dss.Tables[0].Rows[0].ItemArray[1]);
        Session["order_code"] = ss;




        Response.Redirect("ApproveOrder.aspx");
    }

    private int maxorderproductid()
    {
        object maxID1;
        int m1;
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmd41 = "SELECT max(OrderedProduct_ID) FROM tblOrderedProducts";
        SqlCommand cmd441 = new SqlCommand(cmd41, conn);
        conn.Open();

        maxID1 = cmd441.ExecuteScalar();
        // int a = cmd.ExecuteScalar();
        if (Convert.IsDBNull(maxID1))
        {
            m1 = 1;
            //int id = 1;
            //return id; 

        }
        else
        {
            m1 = Convert.ToInt32(maxID1) + 1;
            //return id;
        }
        return m1;


    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
    //    if (CheckBox1.Checked == true)
    //    {

    //        btnagree.Enabled = true;
    //    }
    }
}