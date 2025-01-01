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


public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    //protected void btnlogin_Click(object sender, EventArgs e)
    //{

    //    //string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    //    //SqlConnection conn = new SqlConnection(conString);
    //    //string cmd11 = "select * from tblSessionCart";
    //    //SqlCommand cmd12 = new SqlCommand(cmd11, conn);
    //    //SqlDataAdapter da11 = new SqlDataAdapter(cmd12);
    //    //DataSet ds11 = new DataSet();
    //    //da11.Fill(ds11);
    //    //if (ds11.Tables[0].Rows.Count ==0)
    //    //// if (ds11.Tables[0].Rows.Count = 0)
    //    //{
    //        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    //        SqlConnection conn = new SqlConnection(conString);
    //        string cmd = "Select * from tblCustomer where User_Name='" + txtusername.Text + "' and Password='" + txtpass.Text + "'";
    //        SqlCommand cmd1 = new SqlCommand(cmd, conn);
    //        SqlDataAdapter da = new SqlDataAdapter(cmd1);
    //        DataSet ds = new DataSet();
    //        da.Fill(ds);

    //        int Customer_id,Login;
    //        Customer_id = Convert.ToInt32(ds.Tables[0].Rows[0].ItemArray[0]);
    //        Session["Customer_id"] = Customer_id;
    //        Login = Convert.ToInt32(Session["Login"]);
        
    //        if (Login == 1)
    //        {
    //            Response.Redirect("Order.aspx");

    //        }
    //        else
    //        {
    //            Response.Redirect("Home.aspx");
    //        }
    //    //}
    //    //else
    //    //{
    //    //    Response.Redirect("Order.aspx");
    //    //}









    //        //if (ds.Tables[0].Rows.Count > 0)
    //        //{
    //        //    //Session["User_name"]= ;
    //        //    //Session["Password"]= ;
    //        //    //Session["Customer_id"]= ds.Tables[0].Rows[0].ItemArray[0].ToString();

    //        //    Customer_id = Convert.ToInt32(ds.Tables[0].Rows[0].ItemArray[0]);
    //        //    Session["Customer_id"] = Customer_id;


    //        //    txtusername.Text = "";
    //        //    txtpass.Text = "";
    //        //    //string str = "<script language='javascript'>alert('you are now logged in.');</script>";
    //        //    //Page.RegisterStartupScript("PopUp", str);
    //        //    Response.Redirect("Home.aspx");

    //        }
   
       
       
    



    ////protected void LinkButton1_Click(object sender, EventArgs e)
    ////{

    ////}
    protected void btnlogin1_Click(object sender, EventArgs e)
    {
        if (txtName.Text != "")
        {
            if (txtPassword.Text != "")
            {
                string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(conString);
                string cmd = "Select * from tblCustomer where User_Name='" + txtName.Text + "' and Password='" + txtPassword.Text + "'";
                SqlCommand cmd1 = new SqlCommand(cmd, conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd1);
                DataSet ds = new DataSet();
                da.Fill(ds);

                int Customer_id, Login;
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Customer_id = Convert.ToInt32(ds.Tables[0].Rows[0].ItemArray[0]);
                    Session["Customer_id"] = Customer_id;
                    Login = Convert.ToInt32(Session["Login"]);

                    if (Login == 1)
                    {
                        Response.Redirect("Order.aspx");

                    }
                    else
                    {
                        Response.Redirect("Home.aspx");
                    }
                }
                else
                {
                    //Invalid Login
                    string str = "<script language='javascript'>alert('User Name or Password Invalid');</script>";
                    Page.RegisterStartupScript("PopUp", str);

                }
            }
            else
            {
                //Enter Password
                string str1 = "<script language='javascript'>alert('Enter Password');</script>";
                Page.RegisterStartupScript("PopUp", str1);

            }

        }
        else
        {
            //Enter Name
            string str2 = "<script language='javascript'>alert('Enter User Name');</script>";
            Page.RegisterStartupScript("PopUp", str2);

        }
    }
}
