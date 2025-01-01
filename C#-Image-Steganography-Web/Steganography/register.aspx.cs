using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Steganography
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string DataContext = ConfigurationManager.ConnectionStrings["DataContext"].ConnectionString;
            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter();
                string Query = "insert into user(fname , lname , Mob, username , password , usertype )values('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtPhone.Text + "','" + txtUserName.Text + "','" + txtPassword.Text + "','User')";
                MySqlConnection con = new MySqlConnection(DataContext);
                MySqlCommand cmd = new MySqlCommand(Query, con);
                MySqlDataReader mrd;
                con.Open();
                mrd = cmd.ExecuteReader();               
                errorMsg.Text = "Registration Sucess";
                errorMsg.CssClass = "alert alert-success";
                con.Close();

                
            }
            catch (Exception ex) 
            {
                errorMsg.Text = ex.ToString();
                errorMsg.CssClass = "alert alert-danger";
            }
        }
    }
}