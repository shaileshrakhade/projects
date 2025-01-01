using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineLearningSystem.Std
{
    public partial class Message : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["RegId"] == null)
                {
                    Response.Redirect("~/Logout.aspx");
                }
                else
                {
                    Binedata();

                    using (dbDataContext db = new dbDataContext())
                    {
                        var _data = (from s in db.tblProfiles where s.authenticationId == int.Parse(Session["RegId"].ToString()) && s.IsActive == true select new { s.Name, s.email, s.address, s.mobile, s.Stream, s.education }).FirstOrDefault();
                        if (_data == null)
                        {
                            Response.Redirect("~/Student/Profile.aspx");
                        }
                       
                    }
                }
            }
        }
        private void Bindmsg()
        {
            using (dbDataContext db = new dbDataContext())
            {

                var _LodeVideo = (from s in db.tblMesssages join p in db.tblProfiles on s.StudentId equals p.authenticationId where s.StudentId == int.Parse(Session["RegId"].ToString()) && s.isDelete==false select new { s.MessageText, p.Name, s.StudentId }).ToList();
                GvMsg.DataSource = _LodeVideo;
                GvMsg.DataBind();

            }
        }
        private void Binedata()
        {
            using (dbDataContext db = new dbDataContext())
            {
                var _Stream = (from s in db.tblProfiles where s.usertype==2 && s.IsActive == true select new { s.authenticationId, s.Name}).Distinct();

                ddlStaff.DataSource = _Stream;
                ddlStaff.DataTextField = "Name";
                ddlStaff.DataValueField = "authenticationId";
                ddlStaff.DataBind();
                ddlStaff.Items.Insert(0, new ListItem("--SELECT--", "0"));


            }
        }
        

        protected void ddlStream_SelectedIndexChanged(object sender, EventArgs e)
        {
            int StaffId = int.Parse(ddlStaff.SelectedItem.Value);
            using (dbDataContext db = new dbDataContext())
            {
                var _Stream = (from s in db.tblProfiles where s.authenticationId == StaffId && s.IsActive == true select new { s.Name, s.Stream }).FirstOrDefault();

                lblTeacherName.Text = "You Send The Message To" + _Stream.Name + "They Solve The Problems Of" + _Stream.Stream+".";
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int StaffId = int.Parse(ddlStaff.SelectedItem.Value);
            int stdId=int.Parse(Session["RegId"].ToString());
            using (dbDataContext db = new dbDataContext())
            {
                tblMesssage msg = new tblMesssage();
                msg.StaffId = StaffId;
                msg.StudentId = stdId;
                msg.MessageText = txtMsg.Text;
                msg.isDelete=false;
                db.tblMesssages.InsertOnSubmit(msg);
                db.SubmitChanges();
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "str", "alert('Message Send Successfully.' );", true);
                txtMsg.Text = "";
            }
        }
    }
}