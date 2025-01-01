using Microsoft.Win32;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Steganography
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
            }
            }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
             if(loginVlid(txtUserName.Text,txtPassword.Text)==true)
            {
                Response.Redirect("~/Default.aspx");
            }
            else
            {
                errorMsg.Text = "User Name & Password Not Valid...";
                errorMsg.CssClass = "alert alert-danger";
                
            }

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/register.aspx");
        }

        
        

       protected bool loginVlid(string userid, string pass)
        {
            string DataContext = ConfigurationManager.ConnectionStrings["DataContext"].ConnectionString;
            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter();
                using (MySqlConnection con = new MySqlConnection(DataContext))
                {
                    using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM user where username='" + userid + "' and password='" + pass + "'"))
                    {
                        using (MySqlDataAdapter sda = new MySqlDataAdapter())
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;

                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                if (dt.Rows.Count > 0)
                                {
                                    string id = dt.Rows[0][0].ToString();
                                    string UserType = dt.Rows[0][0].ToString();
                                    Session["id"] = id;
                                    Session["UserType"] = UserType;
                                    return true;
                                }
                                else
                                {
                                    return false;
                                }

                                //GridView1.DataSource = dt;
                                //GridView1.DataBind();
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                return false;
                errorMsg.Text = ex.ToString();
                errorMsg.CssClass = "alert alert-danger";
            }
        }
    }
    
}