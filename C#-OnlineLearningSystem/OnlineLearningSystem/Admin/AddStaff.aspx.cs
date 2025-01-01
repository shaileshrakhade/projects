using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineLearningSystem.Adm
{
    public partial class AddStaff : System.Web.UI.Page
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
                ddlStream.DataSource = _Stream;
                ddlStream.DataTextField = "ClassName";
                ddlStream.DataValueField = "id";
                ddlStream.DataBind();
                ddlStream.Items.Insert(0, new ListItem("--SELECT--", "0"));

            }
        }
        private void BindStudent(int IdClass)
        {
            using (dbDataContext db = new dbDataContext())
            {
                if (IdClass == 0)
                {
                    var _Prfile = (from s in db.tblProfiles join c in db.mstClasses on s.Stream equals c.id where  s.usertype == 2 && s.IsActive == true select new { s.Name, s.authenticationId, c.ClassName }).ToList();
                    GvStaffProfile.DataSource = _Prfile;
                    GvStaffProfile.DataBind();
                }
                else
                {
                    var _Prfile = (from s in db.tblProfiles join c in db.mstClasses on s.Stream equals c.id where s.Stream == IdClass && s.usertype == 2 && s.IsActive == true select new { s.Name, s.authenticationId, c.ClassName }).ToList();
                    GvStaffProfile.DataSource = _Prfile;
                    GvStaffProfile.DataBind();
                }


            }
        }
        protected void GVPVideoLecture_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteStaff")
            {
                int Studentid = Convert.ToInt32(e.CommandArgument);
                //int indes = GvStaffProfile.SelectedIndex;
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

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (dbDataContext db1 = new dbDataContext())
            {
                Authentication au = new Authentication();
                au.UserName = txtUid.Text;
                au.Password = Password.Text;
                au.UserType = 2;
                au.IsActive = true;
                db1.Authentications.InsertOnSubmit(au);
                db1.SubmitChanges();
            }
            
            using (dbDataContext db = new dbDataContext())
            {
                var _Uid = (from s in db.Authentications where s.UserName == txtUid.Text && s.IsActive == true select new { s.id }).FirstOrDefault();
                if (_Uid != null)
                {
                    tblProfile p = new tblProfile();
                    p.Name = txtName.Text;
                    p.mobile = txtMobile.Text;
                    p.email = txtEmail.Text;
                    p.education = txtEducation.Text;
                    p.address = txtAddr.Text;
                    p.Stream = int.Parse(ddlStream.SelectedValue.ToString());
                    p.authenticationId=int.Parse(_Uid.id.ToString());
                    p.usertype = 2;
                    p.IsActive = true;
                    db.tblProfiles.InsertOnSubmit(p);
                    db.SubmitChanges();
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "str", "alert('Staff Is Added.' );", true);
                    txtAddr.Text = "";
                    txtEducation.Text = "";
                    txtEmail.Text = "";
                    txtMobile.Text = "";
                    txtName.Text = "";
                    txtUid.Text = "";
                    
                }
                else
                {
                    ErrorMessage.Text = "Same Proble....";
                }

            }
            BindStudent(ClassId);
        }

        protected void btnCheck_Click(object sender, EventArgs e)
        {
            using (dbDataContext db = new dbDataContext())
            {

                var _Uid = (from s in db.Authentications where s.UserName == txtUid.Text && s.IsActive == true select new { s.id }).FirstOrDefault();

                if (_Uid == null)
                {
                   
                    ErrorMessage.Text = "User Name Exist.";
                    btnSave.Enabled = true;
                }
                else
                {
                    ErrorMessage.Text = "Email Is Alredy exist...";
                    btnSave.Enabled = false;
                    txtUid.Text = "";
                }

            }
        }
    }
}