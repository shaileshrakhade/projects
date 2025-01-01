using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineLearningSystem.Adm
{
    public partial class Masters : System.Web.UI.Page
    {
        public static int Staffid;
        public static int StreamId;
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
                    BindStudent(Staffid, StreamId);
                }
            }
        }
        private void BindStudent(int Staffid, int StreamId)
        {
            using (dbDataContext db = new dbDataContext())
            {
                if (Staffid != 0)
                {
                    var _Video = (from s in db.tblVideos where s.ClassId == StreamId &&  s.IsActive == true select new { s.VideoName,s.InfrormationOfVideo,s.VideoUrl}).ToList();
                    GvVideo.DataSource = _Video;
                    GvVideo.DataBind();
                }
                else if (StreamId!=0)
                {
                    var _Video = (from s in db.tblVideos where s.StaffId == Staffid && s.IsActive == true select new { s.VideoName, s.InfrormationOfVideo, s.VideoUrl }).ToList();
                    GvVideo.DataSource = _Video;
                    GvVideo.DataBind();
                }
                else if (Staffid == 0 && StreamId == 0)
                {
                    var _Video = (from s in db.tblVideos where s.IsActive == true select new { s.VideoName, s.InfrormationOfVideo, s.VideoUrl }).ToList();
                    GvVideo.DataSource = _Video;
                    GvVideo.DataBind();
                }
                else
                {
                    var _Video = (from s in db.tblVideos where s.ClassId == StreamId && s.StaffId == Staffid && s.IsActive == true select new { s.VideoName, s.InfrormationOfVideo, s.VideoUrl }).ToList();
                    GvVideo.DataSource = _Video;
                    GvVideo.DataBind();
                }



            }
        }
        private void Binedata()
        {
            using (dbDataContext db = new dbDataContext())
            {
                var _Stream = (from s in db.mstClasses where s.IsActive == true select new { s.id, s.ClassName }).Distinct();
                var _Staff = (from s in db.tblProfiles where s.usertype==2 && s.IsActive == true select new { s.authenticationId, s.Name }).Distinct();
                
                ddlStream.DataSource = _Stream;
                ddlStream.DataTextField = "ClassName";
                ddlStream.DataValueField = "id";
                ddlStream.DataBind();
                ddlStream.Items.Insert(0, new ListItem("--SELECT--", "0"));

                ddlStaff.DataSource = _Staff;
                ddlStaff.DataTextField = "Name";
                ddlStaff.DataValueField = "authenticationId";
                ddlStaff.DataBind();
                ddlStaff.Items.Insert(0, new ListItem("--SELECT--", "0"));
            }
        }
        protected void btnStream_Click(object sender, EventArgs e)
        {
            using (dbDataContext db = new dbDataContext())
            {
                mstClass c = new mstClass();
                c.ClassName = txtStream.Text;
                c.IsActive = true;
                db.mstClasses.InsertOnSubmit(c);
                db.SubmitChanges();
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "str", "alert('stream Is Add' );", true);
                txtStream.Text = "";
            }
        }

        protected void btnuserType_Click(object sender, EventArgs e)
        {
            using (dbDataContext db = new dbDataContext())
            {
                UserType c = new UserType();
                c.UserName = txtUserType.Text;
                c.IsActive = true;
                db.UserTypes.InsertOnSubmit(c);
                db.SubmitChanges();
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "str", "alert('stream Is Add' );", true);
                txtUserType.Text = "";
            }
        }

        protected void ddlStaff_SelectedIndexChanged(object sender, EventArgs e)
        {
            Staffid=int.Parse(ddlStaff.SelectedValue.ToString());
            BindStudent(Staffid, StreamId);
        }

        protected void ddlStream_SelectedIndexChanged(object sender, EventArgs e)
        {
            StreamId=int.Parse(ddlStream.SelectedValue.ToString());
            BindStudent(Staffid, StreamId);
        }

        protected void GvStaffProfile_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Downlode")
            {
                string VideoUrl = (e.CommandArgument).ToString();
                Response.Redirect("~/Videos/"+VideoUrl);
                //GVStudentList.DeleteRow(indes);
                //BindStudent(ClassId);
            }
        }

       
    }
}