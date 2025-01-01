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

public partial class My_Account : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Customer_id"] != null)
            {
                pnlviewdetail.Visible = true;
                showdata();
            }
            else
            {
                pnllogin.Visible = true;
                pnlviewdetail.Visible = false;
                pnlupdate.Visible = false;
            }
        }
        
       
        
    }




    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //  to link the edit panel To edit the customer detail.
        pnlupdate.Visible = true;
        pnlviewdetail.Visible = false;
        pnllogin.Visible = false;
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
   




    protected void btnlogin_Click(object sender, EventArgs e)
    {


        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmd = "Select * from tblCustomer where User_Name='" + txtusername.Text + "' and Password='" + txtpass.Text + "'";
        SqlCommand cmd1 = new SqlCommand(cmd, conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        int Customer_id;

        if (ds.Tables[0].Rows.Count > 0)
        {
           

            Customer_id = Convert.ToInt32(ds.Tables[0].Rows[0].ItemArray[0]);
            Session["Customer_id"] = Customer_id;


            txtusername.Text = "";
            txtpass.Text = "";
            string str = "<script language='javascript'>alert('you are now logged in.');</script>";
            Page.RegisterStartupScript("PopUp", str);
            pnlviewdetail.Visible = true;
            showdata();

        }
        else
        {
            string str = "<script language='javascript'>alert('Invalid username or password.');</script>";
            Page.RegisterStartupScript("PopUp", str);
        }
       
    }







  
    protected void Button1_Click(object sender, EventArgs e)
    {
        // to show the detail to edit.
        int userid = Convert.ToInt32(Session["userID"]);
         pnlupdate.Visible = true;
        pnlviewdetail.Visible = false;
        pnllogin.Visible = false;
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        //string cmdString4 = "select Distinct Country_Name,Country_ID from tblCountry";
        //SqlCommand cmd4 = new SqlCommand(cmdString4, conn);
        //SqlDataAdapter ad4 = new SqlDataAdapter(cmd4);
        //DataSet ds4 = new DataSet();
        //ad4.Fill(ds4);
        //ddlcountry.Items.Clear();
        //ddlcountry.DataSource = ds4;
        //ddlcountry.DataTextField = "Country_Name";
        //ddlcountry.DataValueField = "Country_ID";
        //ddlcountry.DataBind();


      
        string cmd = "Select * from tblCustomer where Customer_ID=" + userid;
        SqlCommand cmd1 = new SqlCommand(cmd, conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            txtfname.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            txtlname.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
            txtoccupation.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
            txtstreet.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
            txtCountry.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
            //ddlcountry.SelectedItem.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
            //ddlstate.Items.Clear();
          
            //string cmdString2 = "select Distinct State_Name from tblState where Country_ID=" + ddlcountry.SelectedValue + "";
            //SqlCommand cmd2 = new SqlCommand(cmdString2, conn);
            //SqlDataAdapter ad2 = new SqlDataAdapter(cmd2);
            //DataSet ds2 = new DataSet();
            //ad2.Fill(ds2);
            
            //for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
            //{
            //    ddlstate.Items.Add(ds2.Tables[0].Rows[i].ItemArray[0].ToString());
            //}

            //ddlstate.SelectedItem.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
            txtState.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString(); 
           
            txtcity.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
            txtpincode.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
            txtcontactno.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();
            txtmobileno.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
            txtemailid.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();
            txtusername2.Text = ds.Tables[0].Rows[0].ItemArray[12].ToString();
        }


       
      
    }






   
    protected void Button2_Click(object sender, EventArgs e)
    {

        // save the updated detail.
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmdstring3 = "update tblCustomer set First_Name='"+txtfname.Text+"',Last_Name='"+txtlname.Text+"',Occupation='"+txtoccupation.Text+"',Street='"+txtstreet.Text+"',Country_ID='"+txtCountry.Text+"',State_ID='"+txtState.Text +"',Pin_Code='"+txtpincode.Text+"',Contact_No='"+txtcontactno.Text+"',Mobile_No='"+txtmobileno.Text+"',Email_ID='"+txtemailid.Text+"',User_Name='"+txtusername2.Text+"' where Customer_ID="+Convert.ToInt32(Session["Customer_id"]);
        SqlCommand cmd11 = new SqlCommand(cmdstring3,conn);
        conn.Open();
        cmd11.ExecuteNonQuery();

        conn.Close();
        string str = "<script language='javascript'>alert('your changes are saved.');</script>";
        Page.RegisterStartupScript("PopUp", str);
        pnlviewdetail.Visible = true;
        showdata();
    }




    public void showdata()
    {
        int userid = Convert.ToInt32(Session["Customer_id"]);
    string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmd = "Select * from tblCustomer where Customer_ID=" + userid ; 
        SqlCommand cmd1 = new SqlCommand(cmd, conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        int userID;

        if (ds.Tables[0].Rows.Count > 0)
        {
            userID = Convert.ToInt32(ds.Tables[0].Rows[0].ItemArray[0]);
            Session["userID"] = userID;
            pnllogin.Visible = false;
            pnlviewdetail.Visible = true;
            pnlupdate.Visible = false;
            
            lblrfname.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            lblrlname.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
            lblroccupation.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
            lblrstreet.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
            lblrcity.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
            lblrstate.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
            lblrcountry.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
            lblrpincode.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
            lblrcontactno.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();
            lblrmobileno.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
            lblremailid.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();
            lblrusername.Text = ds.Tables[0].Rows[0].ItemArray[12].ToString();
        }

    }
}
