using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace SGBAUMedalAndPrizeManagement
{
    public partial class Logout1 : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);          
           
            Session.RemoveAll();
            Session.Clear();
            Session.Abandon();

            Session.Contents.Abandon();
            Session.Contents.RemoveAll();

            Response.Redirect("~/Default.aspx");

        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
    }
}
