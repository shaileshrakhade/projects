using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineLearningSystem.Account
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ChangePasswordPushButton_Click(object sender, EventArgs e)
        {
            using (dbDataContext db = new dbDataContext())
            {
                var _PassChange = (from s in db.Authentications where s.UserName == txtUid.Text && s.IsActive == true select s).FirstOrDefault();
                if (_PassChange != null)
                {
                    _PassChange.Password = ConfirmNewPassword.Text.ToString();
                    db.SubmitChanges();
                    FailureText.Text = "Password Change Successfull...";
                    
                }
                else
                {
                    FailureText.Text = "User Name Is Not Valid...";
                }
            }
        }

        protected void CancelPushButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Login.aspx");
        }
    }
}
