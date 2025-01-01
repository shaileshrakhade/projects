using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineLearningSystem.Adm
{
    public partial class Home : System.Web.UI.Page
    {
        public static int ClassId;
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
                    lblTime.Text = DateTime.Now.ToString();
                    Binedata();
                    BindStudent(ClassId);
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
        private void BindStudent(int IdClass)
        {
            using (dbDataContext db = new dbDataContext())
            {
                if (IdClass == 0)
                {
                    var _Prfile = (from s in db.tblProfiles join c in db.mstClasses on s.Stream equals c.id where s.usertype == 3 && s.IsActive == true select new { s.Name, s.authenticationId, c.ClassName }).ToList();

                    GVStudentList.DataSource = _Prfile;
                    GVStudentList.DataBind();
                }
                else
                {
                    var _Prfile = (from s in db.tblProfiles join c in db.mstClasses on s.Stream equals c.id where s.Stream == IdClass && s.usertype == 3 && s.IsActive == true select new { s.Name, s.authenticationId, c.ClassName }).ToList();

                    GVStudentList.DataSource = _Prfile;
                    GVStudentList.DataBind();
                }

            }
        }
        protected void GVPVideoLecture_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteStudent")
            {
                int Studentid = Convert.ToInt32(e.CommandArgument);
                int indes = GVStudentList.SelectedIndex;
                using (dbDataContext db = new dbDataContext())
                {
                    var _Authen = (from s in db.Authentications where s.id == Studentid && s.IsActive == true select s).FirstOrDefault();
                    var _Prfile = (from s in db.tblProfiles where s.authenticationId == Studentid && s.IsActive == true select s).FirstOrDefault();
                    if (_Prfile != null)
                    {
                        _Prfile.IsActive = false;
                        _Authen.IsActive = false;
                        db.SubmitChanges();

                    }
                }
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "str", "alert('Student Is Delete.' );", true);
                //GVStudentList.DeleteRow(indes);
               //BindStudent(ClassId);
            }
           
        }

        protected void ddlClass_SelectedIndexChanged(object sender, EventArgs e)
        {
            ClassId = int.Parse(ddlClass.SelectedValue.ToString());
            BindStudent(ClassId);
        }
    }
}