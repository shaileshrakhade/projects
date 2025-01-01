using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineLearningSystem.Adm
{
    public partial class ComunicatinWithStaff : System.Web.UI.Page
    {
        private static int StaffId;
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
                    BindMsg(StaffId);
                }
            }
        }
        private void Binedata()
        {
            using (dbDataContext db = new dbDataContext())
            {
                var _Profile = (from s in db.tblProfiles where s.usertype==2 && s.IsActive == true select new { s.authenticationId, s.Name }).Distinct();

                ddlStaff.DataSource = _Profile;
                ddlStaff.DataTextField = "Name";
                ddlStaff.DataValueField = "authenticationId";
                ddlStaff.DataBind();
                ddlStaff.Items.Insert(0, new ListItem("--SELECT--", "0"));
               

            }
        }
        private void BindMsg(int StaffId)
        {
            using (dbDataContext db = new dbDataContext())
            {
                if (StaffId == 0)
                {
                    var _Msg = (from s in db.tblMesssages join p in db.tblProfiles on s.StaffId equals p.authenticationId where s.isDelete == false select new { s.MessageText, p.Name }).ToList();
                    GvMessage.DataSource = _Msg;
                    GvMessage.DataBind();
                }
                else
                {
                    var _Msg = (from s in db.tblMesssages join p in db.tblProfiles on s.StaffId equals p.authenticationId where s.StaffId == StaffId && s.isDelete == false select new { s.MessageText,p.Name }).ToList();
                    GvMessage.DataSource = _Msg;
                    GvMessage.DataBind();
                }


            }
        }
        protected void ddlClass_SelectedIndexChanged(object sender, EventArgs e)
        {
            StaffId=int.Parse(ddlStaff.SelectedValue.ToString());
            BindMsg(StaffId);
        }
    }
}