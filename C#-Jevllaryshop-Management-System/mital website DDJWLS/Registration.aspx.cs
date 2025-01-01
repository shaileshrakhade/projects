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

public partial class Default2 : System.Web.UI.Page
{
    //CustomerDB objcustomer = new CustomerDB();
    //CustomerComponent objcomponent = new CustomerComponent();
    //Customer objcustomer = new Customer();


    protected void Page_Load(object sender, EventArgs e)
       
    {
       
       
        if (!IsPostBack)
        {
            
            //string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            //SqlConnection conn = new SqlConnection(conString);
            //string cmdString = "select Distinct Country_Name,Country_ID from tblCountry";
            //SqlCommand cmd = new SqlCommand(cmdString, conn);
            //SqlDataAdapter ad = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //ad.Fill(ds);
            //ddlcountry.Items.Clear();
            //ddlcountry.DataSource = ds;
            //ddlcountry.DataTextField = "Country_Name";
            //ddlcountry.DataValueField = "Country_ID";
            //ddlcountry.DataBind();
        }
       
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        DateTime dt;
        dt = System.DateTime.Now;
       // dt = Convert.ToString();
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        int id = maxid();
        string cmdString = "Insert into tblCustomer(Customer_ID,First_Name,Last_Name,Occupation,Street,Country_ID,State_ID,City,Pin_Code,Contact_No,Mobile_No,Email_ID,User_Name,Password,Date)values("+id+",'" + txtfname.Text + "','" + txtlname.Text + "','" + txtoccupation.Text + "','" + txtstreet.Text + "','" + txtCountry.Text  + "','" + txtState.Text  + "','" + txtcity.Text + "','" + txtpincode.Text + "','" + txtcontactno.Text + "','" + txtmobileno.Text + "','" + txtemailid.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "','"+dt.ToString()+"')";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        conn.Open();
        cmd.ExecuteNonQuery();

        conn.Close();
        string str = "<script language='javascript'>alert('you are now registered');</script>";
        Page.RegisterStartupScript("PopUp", str);
        txtfname.Text = "";
        txtlname.Text = "";
        txtoccupation.Text = "";
        txtstreet.Text = "";
        txtcity.Text = "";
        txtpincode.Text = "";
        txtcontactno.Text = "";
        txtmobileno.Text = "";
        txtemailid.Text = "";
        txtusername.Text = "";
        txtpassword.Text = "";

        Session["Customer_id"] = id; 
       int Login = Convert.ToInt32(Session["Login"]);
        if (Login == 1)
        {
            Response.Redirect("Order.aspx");

        }
        else
        {
            Response.Redirect("Home.aspx");
            //Response.Redirect("login.aspx");
        }
        // Panel1.Visible = false;
    }

        
       
    
       
    private int maxid()
    {
        object maxID;
        int a;
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmd1 = "SELECT max(Customer_ID) FROM tblCustomer";
        SqlCommand cmd = new SqlCommand(cmd1,conn);
        conn.Open();

        maxID = cmd.ExecuteScalar();
       // int a = cmd.ExecuteScalar();
        if (Convert.IsDBNull(maxID))
        {
            a = 1;
           //int id = 1;
            //return id; 

        }
        else
        {
             a = Convert.ToInt32(maxID) + 1;
            //return id;
        }
        return a;




    }
    //protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    ddlstate.Items.Clear();
    //    string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    //    SqlConnection conn = new SqlConnection(conString);
    //    string cmdString = "select Distinct State_Name from tblState where Country_ID="+ddlcountry.SelectedValue+"";
    //    SqlCommand cmd1 = new SqlCommand(cmdString, conn);
    //    SqlDataAdapter ad1 = new SqlDataAdapter(cmd1);
    //    DataSet ds1 = new DataSet();
    //    ad1.Fill(ds1);
    //    //ddlcountry.Items.Clear();
    //    for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
    //    {
    //        ddlstate.Items.Add(ds1.Tables[0].Rows[i].ItemArray[0].ToString());
    //    }
    //}
}
