using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineLearningSystem.Std
{
    public partial class Home : System.Web.UI.Page
    {
        public static int ClassId=0;
        public static string VidioName="";
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
                    LodeGried(ClassId, VidioName);

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
        private void Binedata()
        {
            using (dbDataContext db = new dbDataContext())
            {
                var _Stream = (from s in db.mstClasses where s.IsActive == true select new { s.id, s.ClassName }).Distinct();

                ddlClass.DataSource = _Stream;
                ddlClass.DataTextField = "ClassName";
                ddlClass.DataValueField = "id";
                ddlClass.DataBind();
                ddlClass.Items.Insert(0, new ListItem("--SELECT--", "0"));


            }
        }
        protected void GVPVideoLecture_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Downlode")
            {
                string VideoUrl = (e.CommandArgument).ToString();
                Response.Redirect("~/Videos/" + VideoUrl);
                //GVStudentList.DeleteRow(indes);
                //BindStudent(ClassId);
            }
        }
        private void bindGread()
        {
            LodeGried(ClassId, VidioName);
        }

        protected void ddlClass_SelectedIndexChanged(object sender, EventArgs e)
        {
            ClassId = int.Parse(ddlClass.SelectedValue.ToString());
            LodeGried(ClassId, VidioName);
        }


        protected void txtVideoName_TextChanged(object sender, EventArgs e)
        {
            VidioName = txtVideoName.Text;
            LodeGried(ClassId, VidioName);
        }
        private void LodeGried(int ClassId, String VideoName)
        {
            using (dbDataContext db = new dbDataContext())
            {

                if (ClassId != 0)
                {
                    var _video = (from s in db.tblVideos
                                  join p in db.tblProfiles on s.StaffId equals p.authenticationId
                                  where s.IsActive == true && s.ClassId == ClassId && s.VideoName.Contains(VideoName)
                                  select new
                                  {
                                      s.VideoName,
                                      p.Name,
                                      s.id,
                                      s.VideoUrl
                                  }).ToList();
                    GVPVideoLecture.DataSource = _video;
                    GVPVideoLecture.DataBind();

                }
                else
                {
                    var _video = (from s in db.tblVideos
                                  join p in db.tblProfiles on s.StaffId equals p.authenticationId
                                  where s.IsActive == true && s.VideoName.Contains(VideoName)
                                  select new
                                  {
                                      s.VideoName,
                                      p.Name,
                                      s.id,
                                      s.VideoUrl
                                  }).ToList();
                    GVPVideoLecture.DataSource = _video;
                    GVPVideoLecture.DataBind();
                }
            }
        }
    }
}
