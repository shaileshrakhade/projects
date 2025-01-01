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
using ZXing;

namespace Auth
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
                Response.Redirect("~/Profile.aspx");
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

        protected void btnWithQR_Click(object sender, EventArgs e)
        {
            if (fileUplode.HasFile)
            {
                try
                {
                    string fn = System.IO.Path.GetFileName(fileUplode.FileName);
                    string SaveLocation = Server.MapPath("~/images/");
                    fileUplode.SaveAs(SaveLocation + fn);
                    //fileUplode.SaveAs(SaveLocation);
                    string auth=ReadQRCode(SaveLocation+fn);
                    if (auth != null)
                    {
                        string[] uidpass = auth.Split(',');
                        if (loginVlid(uidpass[0], uidpass[1]) == true)
                        {
                            Response.Redirect("~/Profile.aspx");
                        }
                        else
                        {
                            errorMsg.Text = "QR Code Not Valid...";
                            errorMsg.CssClass = "alert alert-danger";

                        }
                    }
                    else
                    {
                        errorMsg.Text = "QR Code Not Valid...";
                        errorMsg.CssClass = "alert alert-danger";
                    }

                    
                }
                catch(Exception ex)
                {
                    errorMsg.Text = ex.ToString();
                    errorMsg.CssClass = "alert alert-danger";
                }
            }
            else
            {
                errorMsg.Text = "Select the QR Code to Login...";
                errorMsg.CssClass = "alert alert-danger";
            }

        }
        private string ReadQRCode(string filename)
        {
            var reader = new BarcodeReader();
            //string filename = Path.Combine(Request.MapPath("~/images"), "QRImage.png");
            // Detect and decode the barcode inside the bitmap
            var result = reader.Decode(new Bitmap(filename));
            if (result != null)
            {
                return result.Text;

            }
            else
            {
                return null;
            }
            File.Delete(filename);

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