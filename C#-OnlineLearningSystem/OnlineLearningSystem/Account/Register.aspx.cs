using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineLearningSystem.Account
{
    public partial class Register : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //if (Session["RegId"] == null)
                //{
                //    Response.Redirect("~/Logout.aspx");
                //}
                //else
                //{

                //}
            }
        }

        protected void CreateUserButton_Click(object sender, EventArgs e)
        {
            using (dbDataContext db = new dbDataContext())
            {

                var _Uid = (from s in db.Authentications where s.UserName == Email.Text && s.IsActive == true select new {s.id}).FirstOrDefault();

                if (_Uid==null)
                {
                    Authentication au = new Authentication();
                    au.UserName = Email.Text;
                    au.Password = Password.Text;
                    au.UserType = 3;
                    au.IsActive = true;
                    db.Authentications.InsertOnSubmit(au);
                    db.SubmitChanges();

                    Authentication p = new Authentication();
                    p.UserName = "Parent"+Email.Text;
                    p.Password = Password.Text;
                    p.UserType = 4;
                    p.IsActive = true;
                    db.Authentications.InsertOnSubmit(p);
                    db.SubmitChanges();

                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "str", "alert('Registration Successfully.' );", true);
                    ErrorMessage.Text = "Regitration Success! Click Login Button to login";
                }
                else
                {
                    ErrorMessage.Text = "Email Is Alredy exist...";
                }
                
            }
           
        }

        

    }
}
