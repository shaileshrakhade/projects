using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
 
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using MessagingToolkit.QRCode.Codec;
using MessagingToolkit.QRCode.Codec.Data;

namespace Auth
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRead_Click(object sender, EventArgs e)
        {
            QRCodeEncoder encode = new QRCodeEncoder();
            encode.QRCodeScale = 8;
            Bitmap bmp = encode.Encode(txtCode.Text);
            imgQRCode.ImageUrl = "data:image/png;base64," + bmp;
            //bmp.Save("qr",ImageFormat.Png);
        }

        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            QRCodeDecoder decode = new QRCodeDecoder();
            //lblQRCode.Text = decode.Decode(new QRCodeBitmapImage(imgQRCode.ImageUrl="" as Bitmap));
            
        }
    }
}