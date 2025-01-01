using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Admin_Home : System.Web.UI.Page
{
    clsAdmin objAdmin = new clsAdmin(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["AdminId"] != null)
            {
                int adminId = Convert.ToInt32(Session["AdminId"]);
                DataTable dt = new DataTable();
                dt = objAdmin.GetAdminDetails(adminId);
                
                //display data 
                lblLoginId.Text = dt.Rows[0].ItemArray[1].ToString() ;
                lblName.Text = dt.Rows[0].ItemArray[3].ToString() + " " + dt.Rows[0].ItemArray[4].ToString();
                lblAddress.Text = dt.Rows[0].ItemArray[5].ToString();
                lblCompanyName.Text = dt.Rows[0].ItemArray[6].ToString();
                lblCompanyAddress.Text = dt.Rows[0].ItemArray[7].ToString();
                lblContactNo.Text = dt.Rows[0].ItemArray[8].ToString();
                lblFaxNo.Text = dt.Rows[0].ItemArray[9].ToString(); 
                DateTime date=Convert.ToDateTime(Session["LastLogin"]);
                lblLoginDate.Text = date.ToLongDateString(); 
                lblCreatedDate.Text = dt.Rows[0].ItemArray[10].ToString();  
            }
        }
    }
    protected void lnkChangePwd_Click(object sender, EventArgs e)
    {
        PanelPwd.Visible = true;
          
    }
    protected void btnSavePwd_Click(object sender, EventArgs e)
    {
        int adminId = Convert.ToInt32(Session["AdminId"]);
        objAdmin.ChangePassword(adminId, txtPwd.Text);
        PanelPwd.Visible = false; 
    }
    protected void lnkEdit_Click(object sender, EventArgs e)
    {
        int adminId = Convert.ToInt32(Session["AdminId"]);
        PanelData.Visible = false;
        PanelEdit.Visible = true;
        DataTable dt = new DataTable();
        dt = objAdmin.GetAdminDetails(adminId);

        //display data 

        txtFirstName.Text = dt.Rows[0].ItemArray[3].ToString();
        txtLastName.Text=dt.Rows[0].ItemArray[4].ToString();
        txtAddress.Text = dt.Rows[0].ItemArray[5].ToString();
        txtCompanyName.Text = dt.Rows[0].ItemArray[6].ToString();
        txtCompanyAddress.Text = dt.Rows[0].ItemArray[7].ToString();
        txtContactNo.Text = dt.Rows[0].ItemArray[8].ToString();
        txtFaxNo.Text = dt.Rows[0].ItemArray[9].ToString(); 
                
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        int adminId = Convert.ToInt32(Session["AdminId"]);
        objAdmin.UpdateAdminDetails(adminId, txtFirstName.Text, txtLastName.Text, txtAddress.Text, txtCompanyName.Text, txtCompanyAddress.Text, txtContactNo.Text, txtFaxNo.Text);
        PanelData.Visible = true;
        PanelEdit.Visible = false;
       
        
    }

}
