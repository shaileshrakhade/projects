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

public partial class Admin_Categories : System.Web.UI.Page
{
    clsCategories objCategory = new clsCategories();
    clsProducts objProduct = new clsProducts(); 
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = objCategory.getRootCategories();
            ddlrootcategory.DataSource = ds;
            ddlrootcategory.DataTextField = "Category_Name";
            ddlrootcategory.DataValueField = "Category1_ID";
            ddlrootcategory.DataBind();
            PanelData.Visible = false; 
        }
    }
    protected void ddlrootcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlrootcategory.SelectedItem.Text != "Select")
        {
            GVCategory.Visible = true;
            GVSubCategories.Visible = false;
            DataSet ds = new DataSet();
            ddlcategory.Items.Clear();
            ddlcategory.Items.Add("Select");   
            ds = objCategory.getCategories(Convert.ToInt32(ddlrootcategory.SelectedValue));
            if (ds.Tables[0].Rows.Count == 0)
            {
                PanelData.Visible = false;
                PanelError.Visible = true;
            }
            else
            {
                PanelData.Visible = true;
                PanelError.Visible = false;
                ddlcategory.DataSource = ds;
                ddlcategory.DataTextField = "Category_Name";
                ddlcategory.DataValueField = "Category2_ID";
                ddlcategory.DataBind();
                DataSet dsCat = new DataSet();
                dsCat = objCategory.getCategories(Convert.ToInt32(ddlrootcategory.SelectedValue));
                GVCategory.DataSource = dsCat;
                GVCategory.DataBind();
            }
        }
        else
        {
            string str1 = "<script language='javascript'>alert('Select Root Category');</script>";
            Page.RegisterStartupScript("PopUp", str1);

        }
    }
    protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (ddlcategory.SelectedItem.Text != "Select")
        {
            GVCategory.Visible = false;
            GVSubCategories.Visible = true;
            DataSet ds = new DataSet();
            //ddlsubcategory.Items.Clear(); 
            ds = objCategory.getSubCategories(Convert.ToInt32(ddlcategory.SelectedValue));
            if (ds.Tables[0].Rows.Count == 0)
            {
                PanelData.Visible = false;
                PanelError.Visible = true;
                lblNoData.Text = "No sub category found"; 
            }
            else
            {
                PanelData.Visible = true;
                PanelError.Visible = false;
                //ddlsubcategory.DataSource = ds;
                //ddlsubcategory.DataTextField = "Category_Name";
                //ddlsubcategory.DataValueField = "Category3_ID";
                //ddlsubcategory.DataBind();
                //DataSet dsCat = new DataSet();
                //dsCat = objCategory.getSubCategories(Convert.ToInt32(ddlcategory.SelectedValue));
                GVSubCategories.DataSource = ds;
                GVSubCategories.DataBind();
            }
        }
        else
        {
            string str1 = "<script language='javascript'>alert('Select Root Category');</script>";
            Page.RegisterStartupScript("PopUp", str1);

        }
    }
    protected void GVCategory_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GVCategory_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int categoryId=Convert.ToInt32(e.CommandArgument);  
        //To remove a Category
        DataSet ds = new DataSet();
        if (e.CommandName == "Remove" && e.CommandArgument != null)
        {
            ds = objProduct.GetCategoryProducts(categoryId);
            if (ds.Tables[0].Rows.Count >0)
            {
               
                string str1 = "<script language='javascript'>alert('First Remove all sub categories and products of this category.');</script>";
                Page.RegisterStartupScript("PopUp", str1);

            }
            else
            {
                objCategory.RemoveCategory(categoryId);
                DataSet dsCat = new DataSet();
                dsCat = objCategory.getCategories(Convert.ToInt32(ddlrootcategory.SelectedValue));
                GVCategory.DataSource = dsCat;
                GVCategory.DataBind();
                string str1 = "<script language='javascript'>alert('Category was removed.');</script>";
                Page.RegisterStartupScript("PopUp", str1);
            }
        }
        if (e.CommandName == "Edit" && e.CommandArgument != null)
        {
            Response.Redirect("CategoryAE.aspx?c=" + categoryId);  
        }
    }
    protected void GVSubCategories_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int categoryId = Convert.ToInt32(e.CommandArgument);
        //To remove a Category
        DataSet ds=new DataSet();
        if (e.CommandName == "Remove" && e.CommandArgument != null)
        {
            ds = objProduct.GetSubCategoryProducts(categoryId);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string str1 = "<script language='javascript'>alert('First Remove all products of this sub Category.');</script>";
                Page.RegisterStartupScript("PopUp", str1);

            }
            else
            {
                objCategory.RemoveSubCategory(categoryId);
                DataSet ds1 = new DataSet(); 
                ds1 = objCategory.getSubCategories(Convert.ToInt32(ddlcategory.SelectedValue));
                GVSubCategories.DataSource = ds1;
                GVSubCategories.DataBind();
                string str1 = "<script language='javascript'>alert('Category was removed.');</script>";
                Page.RegisterStartupScript("PopUp", str1);
            }
        }
        if (e.CommandName == "Edit" && e.CommandArgument != null)
        {
            Response.Redirect("CategoryAE.aspx?s=" + categoryId);
        }
    }
    protected void GVSubCategories_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GVCategory.PageIndex = e.NewPageIndex; 
        GVCategory.Visible = false;
        GVSubCategories.Visible = true;
        DataSet ds = new DataSet();
        //ddlsubcategory.Items.Clear(); 
        ds = objCategory.getSubCategories(Convert.ToInt32(ddlcategory.SelectedValue));
        GVSubCategories.DataSource = ds;
        GVSubCategories.DataBind();
    }
    protected void GVCategory_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GVCategory.PageIndex = e.NewPageIndex;  
        GVCategory.Visible = true;
        GVSubCategories.Visible = false;
        DataSet dsCat = new DataSet();
        dsCat = objCategory.getCategories(Convert.ToInt32(ddlrootcategory.SelectedValue));
        GVCategory.DataSource = dsCat;
        GVCategory.DataBind();
    }
}
