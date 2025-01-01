using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineLearningSystem.Adm
{
    public partial class Notice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["RegId"] == null)
            {
                Response.Redirect("~/Logout.aspx");
            }
            else
            {


                BindNotice();


            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (dbDataContext db = new dbDataContext())
            {
                tblNotice n = new tblNotice();
                n.NoticeText = txtNotice.Text;
                n.StaffAuthetication = int.Parse(Session["RegId"].ToString());
                n.UserType = int.Parse(Session["UserType"].ToString());
                n.IsDelete = false;
                db.tblNotices.InsertOnSubmit(n);
                db.SubmitChanges();
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "str", "alert('Notice Uplode Successfully.' );", true);
                txtNotice.Text = "";
            }
        }
        private void BindNotice()
        {
            using (dbDataContext db = new dbDataContext())
            {
                var _LodeVideo = (from s in db.tblNotices join p in db.tblProfiles on s.StaffAuthetication equals p.authenticationId where s.IsDelete==false select new { s.NoticeText, p.Name}).ToList();
                GvNotice.DataSource = _LodeVideo;
                GvNotice.DataBind();
            }
        }
    }
}