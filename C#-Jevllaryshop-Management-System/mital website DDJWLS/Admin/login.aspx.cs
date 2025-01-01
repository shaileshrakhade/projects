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

public partial class Admin_Login : System.Web.UI.Page
{
    clsAdmin objAdmin = new clsAdmin();
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        int adminId;
        adminId = objAdmin.checkLogin(txtUserName.Text, txtPassword.Text);
        if (adminId != 0)
        {
            Session["AdminId"] = adminId;
            Session["LastLogin"] = objAdmin.GetLastLoginDate(adminId);
            objAdmin.UpdateLoginDate(adminId, System.DateTime.Now.Date);
            Response.Redirect("Home.aspx");

        }
        else
        {
            string str = "<script language='javascript'>alert('Invalid Username or Password');</script>";
            Page.RegisterStartupScript("PopUp", str);
        }
    }
}
