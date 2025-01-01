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
//using QRCodeEncoderLibrary;
using System.Text;
using QRCoder;
using ZXing;
using System.Drawing.Imaging;

namespace Auth
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["id"] != null)
                {
                    Binddata();
                }
                else
                {
                    Response.Redirect("~/Default.aspx");
                }
            }
        }
       
        protected void Binddata()
        {
            string DataContext = ConfigurationManager.ConnectionStrings["DataContext"].ConnectionString;
            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter();
                using (MySqlConnection con = new MySqlConnection(DataContext))
                {
                    using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM user where id=" + Session["id"].ToString()))
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
                                     lblnameHead.Text = dt.Rows[0][1].ToString()+ " "+dt.Rows[0][2].ToString();
                                     lbluid.Text = dt.Rows[0][0].ToString();
                                    lblname.Text = dt.Rows[0][1].ToString();
                                    lblPhone.Text= dt.Rows[0][3].ToString();
                                    lblUserType.Text= dt.Rows[0][6].ToString();
                                    lblUserName.Text = dt.Rows[0][4].ToString();
                                    string QrText= dt.Rows[0][4].ToString()+","+ dt.Rows[0][5].ToString();
                                    GenerateCode(QrText, lbluid.Text);

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
                
            }
        }
        private void GenerateCode(string name,string id)
        {
            var writer = new BarcodeWriter();
            writer.Format = BarcodeFormat.QR_CODE;
            var result = writer.Write(name);
            //string path = Server.MapPath("~/images/"+id+"QRImage.png");
            string sorce = Server.MapPath("~/images/QRImage.png");

            var barcodeBitmap = new Bitmap(result);

            //if (File.Exists(path))
            //{
            //    Console.WriteLine("The file exists.");
            //}
            //else
            //{
            //    File.Copy(sorce,path);
            //    //string fn = System.IO.Path.GetFileName(fileUplode.FileName);
            //    //string SaveLocation = Server.MapPath("~/images/");
            //    //fileUplode.SaveAs(SaveLocation + fn);
            //}

            try
            {
                using (MemoryStream memory = new MemoryStream())
                {
                    using (FileStream fs = new FileStream(sorce, FileMode.Create, FileAccess.ReadWrite))
                    {
                        barcodeBitmap.Save(memory, ImageFormat.Png);
                        byte[] bytes = memory.ToArray();
                        fs.Write(bytes, 0, bytes.Length);
                        fs.Close();
                    }
                }
            }
            catch(Exception ex)
            {

            }
            
            imjQr.ImageUrl = "~/images/QRImage.png";

        }




    }
}