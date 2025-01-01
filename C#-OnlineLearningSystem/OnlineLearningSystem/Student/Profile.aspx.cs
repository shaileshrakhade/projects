using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineLearningSystem.Std
{
    public partial class Profile : System.Web.UI.Page
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
                        if (_data != null)
                        {
                            txtAddr.Text = _data.address;
                            txtEducation.Text = _data.education;
                            txtEmail.Text = _data.email;
                            txtMobile.Text = _data.mobile;
                            txtName.Text = _data.Name;
                            ddlStream.SelectedValue = _data.Stream.ToString();
                            btnSave.Text = "Update";
                        }
                        else
                        {
                            btnSave.Text = "Save";
                        }
                    }
                }
            }
        }
        private void Binedata()
        {
            using (dbDataContext db = new dbDataContext())
            {
                var _Stream = (from s in db.mstClasses where s.IsActive==true  select new { s.id, s.ClassName}).Distinct();

                ddlStream.DataSource = _Stream;
                ddlStream.DataTextField = "ClassName";
                ddlStream.DataValueField = "id";
                ddlStream.DataBind();
                ddlStream.Items.Insert(0, new ListItem("--SELECT--", "0"));
                

            }
        }
        protected void btnCloseSelectDept_Click(object sender, EventArgs e)
        {

            if (btnSave.Text == "Save")
            {
                using (dbDataContext db = new dbDataContext())
                {
                    tblProfile p = new tblProfile();
                    p.Name = txtName.Text;
                    p.address = txtAddr.Text;
                    p.email = txtEmail.Text;
                    p.mobile = txtMobile.Text;
                    p.education = txtEducation.Text;
                    p.Stream = int.Parse(ddlStream.SelectedValue.ToString());
                    p.authenticationId = int.Parse(Session["RegId"].ToString());
                    p.usertype = int.Parse(Session["UserType"].ToString());
                    p.IsActive = true;
                    db.tblProfiles.InsertOnSubmit(p);
                    db.SubmitChanges();
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "str", "alert('Save Successfully.' );", true);
                    
                }
            }
            else if (btnSave.Text == "Update")
            {
                using (dbDataContext db = new dbDataContext())
                {
                    var p = (from s in db.tblProfiles where s.authenticationId == int.Parse(Session["RegId"].ToString()) && s.IsActive == true select s).FirstOrDefault();
                    p.Name = txtName.Text;
                    p.address = txtAddr.Text;
                    p.email = txtEmail.Text;
                    p.mobile = txtMobile.Text;
                    p.education = txtEducation.Text;
                    p.Stream = int.Parse(ddlStream.SelectedValue.ToString());
                    db.SubmitChanges();
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "str", "alert('Update Successfully.' );", true);
                }
            }
            else if (btnSave.Text == "Edit")
            {
                btnSave.Text = "Update";
            }

        }
    }
}