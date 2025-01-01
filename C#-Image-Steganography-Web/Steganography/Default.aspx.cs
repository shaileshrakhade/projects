using Steganography.EDs;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Steganography
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if(Session["id"]==null)
                {                    
                        Response.Redirect("~/login.aspx");
                }
            }
        }

        protected void btnEncrypt_Click(object sender, EventArgs e)
        {
            if (fileUplode.HasFile)
            {
                try
                {
                    string fn = System.IO.Path.GetFileName(fileUplode.FileName);
                    string SaveLocation = Server.MapPath("~/images/");
                    fileUplode.SaveAs(SaveLocation + fn);
                    


                    Bitmap bitmap;
                    using (Stream bmpStream = System.IO.File.Open(SaveLocation + fn, System.IO.FileMode.Open))
                    {
                        System.Drawing.Image image = System.Drawing.Image.FromStream(bmpStream);

                        bitmap = new Bitmap(image);

                    }
                    bitmap= encryption_decryption.embedText(txtMessage.Text, bitmap);
                    bitmap.Save(SaveLocation + fn, System.Drawing.Imaging.ImageFormat.Png);
                    imgEncrypt.ImageUrl = "~/images/" + fn;
                }
                catch (Exception ex)
                {
                    errorMsg.Text = ex.ToString();
                    errorMsg.CssClass = "alert alert-danger";
                }
            }
        }

        protected void btnDecrypt_Click(object sender, EventArgs e)
        {
            if (FileUploadDec.HasFile)
            {

                try
                {
                    string fn = System.IO.Path.GetFileName(FileUploadDec.FileName);
                    string SaveLocation = Server.MapPath("~/images/");
                    FileUploadDec.SaveAs(SaveLocation + fn);
                    Bitmap bitmap;
                    using (Stream bmpStream = System.IO.File.Open(SaveLocation + fn, System.IO.FileMode.Open))
                    {
                        System.Drawing.Image image = System.Drawing.Image.FromStream(bmpStream);

                        bitmap = new Bitmap(image);

                    }
                    lblMessage.Text = encryption_decryption.extractText(bitmap);
                }
                catch (Exception ex)
                {
                    errorMsg.Text = ex.ToString();
                    errorMsg.CssClass = "alert alert-danger";
                }
            }
        }
    } 
}