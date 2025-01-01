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
using System.IO;

public partial class Admin_CategoryAE : System.Web.UI.Page
{
    clsCategories objCategory = new clsCategories();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["c"] != null || Request.QueryString["s"] != null)
            {
                btnAdd.Visible = false;
                btnUpdate.Visible = true;
                PanelCategory.Visible = false;
                PanelChangeImage.Visible = true;
                FileUpload2.Visible = false;
                FileUpload1.Visible = false;
                lblEditAdd.Text = "Edit Category";
                if (Request.QueryString["c"] != null)
                {
                    fillCategoryDetails();
                }
                if (Request.QueryString["s"] != null)
                {
                    fillSubCategoryDetails();
                }

            }
            else
            {

                btnAdd.Visible = true;
                btnUpdate.Visible = false;
                PanelCategory.Visible = true;
                if (!IsPostBack)
                {
                    DataSet ds = new DataSet();
                    ds = objCategory.getRootCategories();
                    ddlrootcategory.DataSource = ds;
                    ddlrootcategory.DataTextField = "Category_Name";
                    ddlrootcategory.DataValueField = "Category1_ID";
                    ddlrootcategory.DataBind();
                }
                PanelChangeImage.Visible = false;
                FileUpload2.Visible = false;
                FileUpload1.Visible = true;

            }
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (ddlrootcategory.SelectedItem.Text != "Select")
        {
            if (ddlcategory.SelectedItem.Text == "None")
            {
                if(txtCatName.Text!="")
                {
                //add category in category level
                string strFileName = FileUpload1.FileName;
                string[] strSep = FileUpload1.FileName.Split('.');
                int arrLength = strSep.Length - 1;
                string strExt1 = strSep[arrLength].ToString();
                string filepath, filename,imagepath;
                //string savepath = "D:\\domains\\ispepune.org.in\\wwwroot\\Admin\\arth\\";
                //string savepath = "C:\\Documents and Settings\\Administrator\\My Documents\\Visual Studio 2005\\WebSites\\DDJWLS\\Admin\\CategoryImages\\";
                string savepath = "D:\\DDJWLS\\Admin\\CategoryImages\\";//"C:\\Inetpub\\vhosts\\ddjeweller.com\\httpdocs\\Admin\\CategoryImages\\";
           
                //string savepath = "~\\CategoryImages\\";
                filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                filepath = savepath + filename;
                imagepath = "~\\Admin\\CategoryImages\\" + filename;
            
                string strExt = strExt1.ToLower();
                if (FileUpload1.PostedFile.FileName != "")
                {
                    if (strExt.Equals("jpg") || strExt.Equals("jpeg") || strExt.Equals("gif") || strExt.Equals("bmp"))
                    {
                        int rootCategoryId = Convert.ToInt32(ddlrootcategory.SelectedValue);
                        FileUpload1.PostedFile.SaveAs(filepath);
                        objCategory.AddCategory(txtCatName.Text, rootCategoryId, false, imagepath);
                        PanelMain.Visible = false;
                        PanelLinks1.Visible = true;
                        lblMsg.Text = "The Category was added to the database successfully.";

                    }
                    else
                    {
                        string str = "<script language='javascript'>alert('Please select only jpg, gif, bmp Extension files for Image');</script>";
                        Page.RegisterStartupScript("PopUp", str);
                    }
                }
                else
                {
                    string str1 = "<script language='javascript'>alert('Please select an image for category.');</script>";
                    Page.RegisterStartupScript("PopUp", str1);
//                    imagepath = string.Empty;
//                    int rootCategoryId = Convert.ToInt32(ddlrootcategory.SelectedValue);
////                    FileUpload1.PostedFile.SaveAs(filepath);
//                    objCategory.AddCategory(txtCatName.Text, rootCategoryId, false, imagepath);
//                    PanelMain.Visible = false;
//                    PanelLinks1.Visible = true;
//                    lblMsg.Text = "The Category was added to the database successfully.";

                }
                } 
                else
                {
                     string str2 = "<script language='javascript'>alert('Please Enter Name for Category');</script>";
                Page.RegisterStartupScript("PopUp", str2);

                }
            }
            else
            {
                if(txtCatName.Text!="")
                {
                //add category in sub category level
                string strFileName = FileUpload1.FileName;
                string[] strSep = FileUpload1.FileName.Split('.');
                int arrLength = strSep.Length - 1;
                string strExt1 = strSep[arrLength].ToString();
                string filepath, filename, imagepath;
                //string savepath = "D:\\domains\\ispepune.org.in\\wwwroot\\Admin\\arth\\";
                //string savepath = "C:\\Documents and Settings\\Administrator\\My Documents\\Visual Studio 2005\\WebSites\\DDJWLS\\Admin\\CategoryImages\\";
                //string savepath = "C:\\Inetpub\\vhosts\\ddjeweller.com\\httpdocs\\Admin\\CategoryImages\\";
                string savepath = "D:\\DDJWLS\\Admin\\CategoryImages\\";//"C:\\Documents and Settings\\admin\\Desktop\\DD Jewellers Complete\\DDJWLS\\Admin\\CategoryImages\\";
                    filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                filepath = savepath + filename;
                imagepath = "~\\Admin\\CategoryImages\\" + filename;
                    

                string strExt = strExt1.ToLower();
                if (FileUpload1.PostedFile.FileName != "")
                {
                    if (strExt.Equals("jpg") || strExt.Equals("jpeg") || strExt.Equals("gif") || strExt.Equals("bmp"))
                    {
                        int CategoryId = Convert.ToInt32(ddlcategory.SelectedValue);
                        FileUpload1.PostedFile.SaveAs(filepath);
                        objCategory.AddSubCategory(txtCatName.Text, CategoryId, false, imagepath);
                        PanelMain.Visible = false;
                        PanelLinks1.Visible = true;
                        lblMsg.Text = "The Category was added to the database successfully.";
                    }
                    else
                    {
                        string str = "<script language='javascript'>alert('Please select only jpg, gif, bmp Extension files for Image');</script>";
                        Page.RegisterStartupScript("PopUp", str);
                    }
                }
                else
                {
                    string str1 = "<script language='javascript'>alert('Please select an image for category.');</script>";
                    Page.RegisterStartupScript("PopUp", str1);
                }
                }else{
                    
                     string str3 = "<script language='javascript'>alert('Please Enter Name for Category');</script>";
                Page.RegisterStartupScript("PopUp", str3);
                }
             
                           }
        }
        else
        {
            string str1 = "<script language='javascript'>alert('First select Root category.');</script>";
            Page.RegisterStartupScript("PopUp", str1);     

        }

         
    }
    protected void ddlrootcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlrootcategory.SelectedItem.Text != "Select")
        {
            DataSet ds = new DataSet();
            int rootCatId = Convert.ToInt32(ddlrootcategory.SelectedValue);
            ds = objCategory.getCategories(rootCatId);
            ddlcategory.Items.Clear();
            ddlcategory.Items.Add("None");   
            ddlcategory.DataSource = ds;
            ddlcategory.DataTextField = "Category_Name";
            ddlcategory.DataValueField = "Category2_ID";
            ddlcategory.DataBind();
            ddlsubcategory.Items.Clear();
            ddlsubcategory.Items.Add("None");   
        }
        else
        {
            //do nothing
        }
    }
    protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlrootcategory.SelectedItem.Text != "Select")
        {
            if (ddlcategory.SelectedItem.Text != "None")
            {
                int catId = Convert.ToInt32(ddlcategory.SelectedValue);
                DataSet ds = new DataSet();
                ddlsubcategory.Items.Clear();
                ddlsubcategory.Items.Add("None");   
                ds = objCategory.getSubCategories(catId);
                ddlsubcategory.DataSource = ds;
                ddlsubcategory.DataTextField = "Category_Name";
                ddlsubcategory.DataValueField = "Category3_ID";
                ddlsubcategory.DataBind();
            }
            else
            {
                //do nothing
            }
        }
        else
        {
            string str1 = "<script language='javascript'>alert('Firstly select Root category.');</script>";
            Page.RegisterStartupScript("PopUp", str1);     
        }

    }
    protected void lnkChangeImage_Click(object sender, EventArgs e)
    {
        FileUpload1.Visible = false;
        PanelChangeImage.Visible = false;
        FileUpload2.Visible = true;  
    }
    public void fillCategoryDetails()
    {
        int categoryId=Convert.ToInt32(Request.QueryString["c"]); 
        DataSet ds = new DataSet();
        ds = objCategory.GetCategoryByID(categoryId);
        txtCatName.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
       
        if (ds.Tables[0].Rows[0].ItemArray[4].ToString()!= string.Empty)
        {
            Image1.ImageUrl = ds.Tables[0].Rows[0].ItemArray[4].ToString();   
        }
        else
        {
            Image1.ImageUrl = "~\\Images\\imageNotFound.gif";
        }
    }
    public void fillSubCategoryDetails()
    {

        int categoryId = Convert.ToInt32(Request.QueryString["s"]);
        DataSet ds = new DataSet();
        ds = objCategory.GetSubCategoryByID(categoryId);  
        txtCatName.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
        
        if (ds.Tables[0].Rows[0].ItemArray[4].ToString() !=string.Empty )
        {
            Image1.ImageUrl = ds.Tables[0].Rows[0].ItemArray[4].ToString();
        }
        else
        {
            Image1.ImageUrl = "~\\Images\\imageNotFound.gif";
        }
    }

    protected void ddlSubCat_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
       // int productId = Convert.ToInt32(Request.QueryString["a"]);
        if (txtCatName.Text != "")
        {
            if (FileUpload2.PostedFile != null)
            {
                string strFileName = FileUpload2.FileName;
                string[] strSep = FileUpload2.FileName.Split('.');
                int arrLength = strSep.Length - 1;
                string strExt1 = strSep[arrLength].ToString();
                string filepath, filename, imagepath;
                //string savepath = "D:\\domains\\ispepune.org.in\\wwwroot\\Admin\\arth\\";
                //string savepath = "C:\\Documents and Settings\\Administrator\\My Documents\\Visual Studio 2005\\WebSites\\DDJWLS\\Admin\\CategoryImages\\";
                //string savepath = "C:\\Inetpub\\vhosts\\ddjeweller.com\\httpdocs\\Admin\\CategoryImages\\";
                string savepath = "D:\\DDJWLS\\Admin\\CategoryImages\\";//"C:\\Documents and Settings\\admin\\Desktop\\DD Jewellers Complete\\DDJWLS\\Admin\\CategoryImages\\";


                string strExt = strExt1.ToLower();

                if (strExt.Equals("jpg") || strExt.Equals("jpeg") || strExt.Equals("gif") || strExt.Equals("bmp"))
                {

                    filename = Path.GetFileName(FileUpload2.PostedFile.FileName);
                    filepath = savepath + filename;
                    imagepath = "~\\Admin\\CategoryImages\\" + filename;
                    FileUpload2.PostedFile.SaveAs(filepath);

                    if (Request.QueryString["c"] != null && Request.QueryString["s"] == null)
                    {
                        int CategoryId = Convert.ToInt32(Request.QueryString["c"]);
                        objCategory.UpdateCategory(CategoryId, txtCatName.Text, imagepath);
                        //string strC = "<script language='javascript'>alert('Category is updated.');</script>";
                        //Page.RegisterStartupScript("PopUp", strC);
                        PanelMain.Visible = false;
                        PanelLinks1.Visible = true;
                        lblMsg.Text = "The Category was updated in the database successfully.";
                    }
                    else if (Request.QueryString["c"] == null && Request.QueryString["s"] != null)
                    {
                        int SubCategoryID = Convert.ToInt32(Request.QueryString["s"]);
                        objCategory.UpdateSubCategory(SubCategoryID, txtCatName.Text, imagepath);
                        
                        PanelMain.Visible = false;
                        PanelLinks1.Visible = true;
                        lblMsg.Text = "The Category was updated in the database successfully.";
                    }

                }

                else
                {
                    string str = "<script language='javascript'>alert('Please select only jpg, gif, bmp Extension files for Image.');</script>";
                    Page.RegisterStartupScript("PopUp", str);

                }
            }
            else
            {
                string str1 = "<script language='javascript'>alert('Please select an image for category.');</script>";
                Page.RegisterStartupScript("PopUp", str1);
                
            }
        }

        else
        {

            string str2 = "<script language='javascript'>alert('Please Enter Name for Category');</script>";
            Page.RegisterStartupScript("PopUp", str2);
        }
    }
}
