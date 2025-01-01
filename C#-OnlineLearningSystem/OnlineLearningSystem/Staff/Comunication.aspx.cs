using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineLearningSystem.Staf
{
    public partial class Comunication : System.Web.UI.Page
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

                    
                    Bindmsg();


                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

                int StudentId = int.Parse(lblStudentId.Text);
                int StaffId = int.Parse(Session["RegId"].ToString());
                using (dbDataContext db = new dbDataContext())
                {
                    tblMesssage msg = new tblMesssage();
                    msg.StaffId = StaffId;
                    msg.StudentId = StudentId;
                    msg.MessageText = txtmsg.Text;
                    msg.isDelete = false;
                    db.tblMesssages.InsertOnSubmit(msg);
                    db.SubmitChanges();
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "str", "alert('Message Send Successfully.' );", true);
                    txtmsg.Text = "";
                }
            
        }

        protected void GvMsg_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Msgsend")
            {
                int _Studentid = Convert.ToInt32(e.CommandArgument);
                using (dbDataContext db = new dbDataContext())
                {
                    var _stdName = (from s in db.tblProfiles where s.authenticationId == _Studentid && s.IsActive == true select new { s.Name }).FirstOrDefault();
                    if (_stdName != null)
                    {
                        lblReciverName.Text = _stdName.Name;
                        lblStudentId.Text = _Studentid.ToString();
                        btnSave.Enabled = true;
                    }
                    else
                    {
                        lblReciverName.Text = "Student Is Not Valid";
                        lblStudentId.Text = "0";
                        btnSave.Enabled = false;
                    }
                }
                //GVStudentList.DeleteRow(indes);
                //BindStudent(ClassId);
            }
        }
        private void Bindmsg()
        {
            using (dbDataContext db = new dbDataContext())
            {

                var _LodeVideo = (from s in db.tblMesssages join p in db.tblProfiles on s.StudentId equals p.authenticationId where s.StaffId == int.Parse(Session["RegId"].ToString())  && s.isDelete==false select new { s.MessageText, p.Name,s.StudentId}).ToList();
                GvMsg.DataSource = _LodeVideo;
                GvMsg.DataBind();
                //for (int i = 0; i < GvVideo.Rows.Count; i++)
                //{
                //    Label _IsActive = (Label)GvVideo.Rows[i].FindControl("lblIsActive");


                //    bool IsActive = bool.Parse(_IsActive.Text.ToString());
                //    if (IsActive == true)
                //    {
                //        Button btnView = (Button)GvVideo.Rows[i].FindControl("btnView");
                //        btnView.BackColor = System.Drawing.Color.Green;//FromArgb(88, 214, 141);
                //        btnView.Text = "Deactive";
                //    }
                //    else
                //    {
                //        Button btnView = (Button)GvVideo.Rows[i].FindControl("btnView");
                //        btnView.BackColor = System.Drawing.Color.Red;
                //        btnView.Text = "Active";
                //    }
                //}


            }
        }
    }
}