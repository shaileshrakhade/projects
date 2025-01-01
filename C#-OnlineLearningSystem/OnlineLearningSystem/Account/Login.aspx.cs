using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineLearningSystem.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Page.IsPostBack)
            //{
            //    if (Session["RegId"] == null)
            //    {
            //        Response.Redirect("~/Logout.aspx");
            //    }else
            //    {
            //        Response.Redirect("~/Account/Login.aspx");
                    
            //    }
            //}
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            using (dbDataContext db = new dbDataContext())
            {
                var _Usertype = (from s in db.Authentications where s.UserName == txtUserName.Text && s.Password == txtPassword.Text select new {s.id,s.UserType }).FirstOrDefault();
                if (_Usertype == null)
                {
                    ErrorMessage.Text = "Email Id Or Password Is Wrong";
                }
                else
                {

                    Session["RegId"] = _Usertype.id.ToString();
                    Session["UserType"] = _Usertype.UserType.ToString();


                    int UserType = int.Parse(Session["UserType"].ToString());
                    switch (UserType)
                    {
                        case 1:
                            Response.Redirect("~/Admin/Home.aspx");
                            break;
                        case 2:
                            Response.Redirect("~/Staff/Home.aspx");
                            break;
                        case 3:
                            Response.Redirect("~/Student/Home.aspx");
                            break;
                        case 4:
                            Response.Redirect("~/Parents/Home.aspx");
                            break;
                    }
                }
            }
        }
    }
}
