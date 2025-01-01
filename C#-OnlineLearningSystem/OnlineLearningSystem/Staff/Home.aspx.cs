using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;

namespace OnlineLearningSystem.Staf
{
    public partial class Home : System.Web.UI.Page
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
                    BindVideo();


                }
            }
        }
        private void BindVideo()
        {
            using (dbDataContext db = new dbDataContext())
            {

                var _LodeVideo = (from s in db.tblVideos where s.StaffId == int.Parse(Session["RegId"].ToString()) select new { s.VideoName, s.InfrormationOfVideo, s.IsActive, s.id }).ToList();
                GvVideo.DataSource = _LodeVideo;
                GvVideo.DataBind();
                for (int i = 0; i < GvVideo.Rows.Count; i++)
                {
                    Label _IsActive = (Label)GvVideo.Rows[i].FindControl("lblIsActive");


                    bool IsActive = bool.Parse(_IsActive.Text.ToString());
                    if (IsActive == true)
                    {
                        Button btnView = (Button)GvVideo.Rows[i].FindControl("btnView");
                        btnView.BackColor = System.Drawing.Color.Green;//FromArgb(88, 214, 141);
                        btnView.Text = "Deactive";
                    }
                    else
                    {
                        Button btnView = (Button)GvVideo.Rows[i].FindControl("btnView");
                        btnView.BackColor = System.Drawing.Color.Red;
                        btnView.Text = "Active";
                    }
                }


            }
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (dbDataContext db = new dbDataContext())
            {
                string VideoFileName = lodeFile.FileName;
                if (lodeFile.HasFile)
                {
                    string filExtension = System.IO.Path.GetExtension(lodeFile.FileName);
                    if (filExtension == ".pdf" || filExtension == ".PDF" || filExtension == ".MP4")
                    {
                        int filSize = lodeFile.PostedFile.ContentLength;
                        //less than 10mb
                        if (filSize > 10485760)
                        {
                            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "str", "alert('File Size Less Than 10mb Is Allow' );", true);
                        }
                        else
                        {
                            lodeFile.SaveAs(Server.MapPath("~/Videos/" + VideoFileName));
                            tblVideo v = new tblVideo();
                            v.VideoName = txtVideoName.Text;
                            v.InfrormationOfVideo = txtVideoInfo.Text;
                            v.VideoUrl = VideoFileName;
                            v.StaffId = int.Parse(Session["RegId"].ToString());
                            v.ClassId = int.Parse(ddlClass.SelectedValue.ToString());
                            v.IsActive = false;
                            db.tblVideos.InsertOnSubmit(v);
                            db.SubmitChanges();
                            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "str", "alert('Video Is Add...' );", true);
                        }
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "str", "alert('Only mp4 & Pdf is Allow' );", true);
                    }
                        
                    }
                
                else
                {
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "str", "alert('Video Not Lode...' );", true);
                }

                         }
            BindVideo();
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
        protected void GvVideo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "VideoActive")
            {
                int _VideoId = Convert.ToInt32(e.CommandArgument);

                using (dbDataContext db = new dbDataContext())
                {
                    var _Video = (from s in db.tblVideos where s.id == _VideoId select s).FirstOrDefault();
                    //var _Prfile = (from s in db.tblProfiles where s.authenticationId == Studentid && s.IsActive == true select s).FirstOrDefault();
                    if (_Video.IsActive == true)
                    {
                        _Video.IsActive = false;

                        db.SubmitChanges();

                    }
                    else
                    {
                        _Video.IsActive = true;

                        db.SubmitChanges();
                    }
                }
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "str", "alert('Update' );", true);
                BindVideo();
                //GVStudentList.DeleteRow(indes);
                //BindStudent(ClassId);
            }
        }
    }
}