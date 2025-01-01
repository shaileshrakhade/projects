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

public partial class Admin_Products : System.Web.UI.Page
{
    clsProducts objProduct = new clsProducts();
    clsCategories objCategory = new clsCategories(); 

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet dsProducts = new DataSet();
            dsProducts = objProduct.GetAllProducts();
            if (dsProducts.Tables[0].Rows.Count >= 1)
            {
                GridView1.DataSource = dsProducts;
                GridView1.DataBind();
                PanelError.Visible = false;
                PanelProducts.Visible = true;
            }
            else
            {
                PanelProducts.Visible = false;
                PanelError.Visible = true;
            }

            DataSet dsRootCategory = new DataSet();
            dsRootCategory = objCategory.getRootCategories();
            ddlrootcategory.Items.Clear();
            ddlrootcategory.Items.Add("Select");
            ddlrootcategory.DataSource = dsRootCategory;
            ddlrootcategory.DataTextField = "Category_Name";
            ddlrootcategory.DataValueField = "Category1_ID";
            ddlrootcategory.DataBind();

        }
    }
    protected void lnkAddProduct_Click(object sender, EventArgs e)
    {
        Response.Redirect("ProductAE.aspx"); 
    }
    protected void txtsearch_TextChanged(object sender, EventArgs e)
    {

    }
   
    protected void btnGo_Click(object sender, ImageClickEventArgs e)
    {
        DataSet ds = new DataSet();
        ds = objProduct.SearchByName(txtsearch.Text);
        GridView1.Visible = false;
        GridView2.Visible = true;
        GridView2.DataSource = ds;
        GridView2.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int productID = Convert.ToInt32(e.CommandArgument); 
        //To remove a particular product from database
        if (e.CommandName == "Remove" && e.CommandArgument!=null)
        {
            objProduct.RemoveProduct(productID);
            DataSet ds = new DataSet();
            ds = gridViewDataSource();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            string str = "<script language='javascript'>alert('Product was removed from the database.');</script>";
            Page.RegisterStartupScript("PopUp", str);

        }

        //To update the details of a particular product
        if (e.CommandName == "Edit" && e.CommandArgument != null)
        {
            Response.Redirect("ProductAE.aspx?a="+ productID); 
        }
    }
    protected void ddlrootcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlrootcategory.SelectedItem.Text != "Select")
        {
            int RootCategoryID = Convert.ToInt32(ddlrootcategory.SelectedValue);

            //To fill ddlCategory
            DataSet dsCategory = new DataSet();
            dsCategory = objCategory.getCategories(RootCategoryID);
            ddlcategory.Items.Clear();
            ddlcategory.Items.Add("Select");
            if (dsCategory.Tables[0].Rows.Count > 0)
            {
                //lblCat1.Visible = true;
                //ddlcategory.Visible = true;
                //img1.Visible = true;
                ddlcategory.DataSource = dsCategory;
                ddlcategory.DataTextField = "Category_Name";
                ddlcategory.DataValueField = "Category2_ID";
                ddlcategory.DataBind();
            }
            else
            {
                //img1.Visible = false;
                //lblCat1.Visible = false;
                //ddlcategory.Visible = false;
            }

            //To display Products for a particular root category
            DataSet dsProducts = new DataSet();
            dsProducts = objProduct.GetRootCategoryProducts(RootCategoryID);
            if (dsProducts.Tables[0].Rows.Count >= 1)
            {
                GridView1.Visible = true;
                GridView2.Visible = false; 
                GridView1.DataSource = dsProducts;
                GridView1.DataBind();
                PanelProducts.Visible = true;
                PanelError.Visible = false;
            }
            else
            {
                PanelProducts.Visible = false;
                PanelError.Visible = true;
            }
        }
    }
    protected void ddlsubcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlsubcategory.SelectedItem.Text != "Select")
        {
            int subCategoryID = Convert.ToInt32(ddlsubcategory.SelectedValue);
            //To display Products for a particular sub category
            DataSet dsProducts = new DataSet();

            dsProducts = objProduct.GetSubCategoryProducts(subCategoryID);
            if (dsProducts.Tables[0].Rows.Count >= 1)
            {
                GridView1.Visible = true;
                GridView2.Visible = false; 
                GridView1.DataSource = dsProducts;
                GridView1.DataBind();
                PanelError.Visible = false;
                PanelProducts.Visible = true;
            }
            else
            {
                PanelProducts.Visible = false;
                PanelError.Visible = true;
            }
        }
        
    }
    protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlcategory.SelectedItem.Text != "Select")
        {
            int CategoryID = Convert.ToInt32(ddlcategory.SelectedValue);

            //To fill ddlCategory
            DataSet dssubCategory = new DataSet();
            dssubCategory = objCategory.getSubCategories(CategoryID);
            ddlsubcategory.Items.Clear();
            ddlsubcategory.Items.Add("Select");
            if (dssubCategory.Tables[0].Rows.Count >0)
            {
                lblCat2.Visible = true;
                ddlsubcategory.Visible = true;
                img2.Visible = true;
                ddlsubcategory.DataSource = dssubCategory;
                ddlsubcategory.DataTextField = "Category_Name";
                ddlsubcategory.DataValueField = "Category3_ID";
                ddlsubcategory.DataBind();
            }
            else
            {
                img2.Visible = false;
                lblCat2.Visible = false;
                ddlsubcategory.Visible = false;
            }

            //To display Products for a particular category
            DataSet dsProducts = new DataSet();
            dsProducts = objProduct.GetCategoryProducts(CategoryID);
            if (dsProducts.Tables[0].Rows.Count >0)
            {
                GridView1.Visible = true;
                GridView2.Visible = false; 
                GridView1.DataSource = dsProducts;
                GridView1.DataBind();
                PanelError.Visible = false;
                PanelProducts.Visible = true;
            }
            else
            {
                PanelProducts.Visible = false;
                PanelError.Visible = true;
            }
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        
        GridView1.PageIndex = e.NewPageIndex;
        DataSet ds=new DataSet();
        ds=gridViewDataSource();
        GridView1.DataSource = ds;
        GridView1.DataBind();
     
    }

    public DataSet gridViewDataSource()
    {
        DataSet ds = new DataSet();
        if (ddlrootcategory.SelectedItem.Text != "Select")
        {
            if (ddlcategory.SelectedItem.Text != "Select")
            {
                if (ddlsubcategory.SelectedItem.Text != "Select")
                {
                    ds = objProduct.GetSubCategoryProducts(Convert.ToInt32(ddlsubcategory.SelectedValue));               
                }
                else
                {
                    ds = objProduct.GetCategoryProducts(Convert.ToInt32(ddlcategory.SelectedValue));
                }
            }
            else
            {
                ds = objProduct.GetRootCategoryProducts(Convert.ToInt32(ddlrootcategory.SelectedValue));
            }
        }
        else
        {
            ds = objProduct.GetAllProducts();
        }
        return ds;
    }
    protected void lnkCategory_Click(object sender, EventArgs e)
    {

    }
    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        DataSet ds = new DataSet();
        ds = objProduct.SearchByName(txtsearch.Text);
        GridView1.Visible = false;
        GridView2.Visible = true;
        GridView2.DataSource = ds;
        GridView2.DataBind();


    }
    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int productID = Convert.ToInt32(e.CommandArgument);
        //To remove a particular product from database
        if (e.CommandName == "Remove" && e.CommandArgument != null)
        {
            objProduct.RemoveProduct(productID);
            DataSet ds = new DataSet();
            ds = objProduct.SearchByName(txtsearch.Text);
            GridView2.DataSource = ds;
            GridView2.DataBind();
            string str = "<script language='javascript'>alert('Product was removed from the database.');</script>";
            Page.RegisterStartupScript("PopUp", str);

        }

        //To update the details of a particular product
        if (e.CommandName == "Edit" && e.CommandArgument != null)
        {
            Response.Redirect("ProductAE.aspx?a=" + productID);
        }
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
