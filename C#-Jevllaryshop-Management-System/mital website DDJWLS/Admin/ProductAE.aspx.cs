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

public partial class Admin_ProductAE : System.Web.UI.Page
{
    clsProducts objProduct = new clsProducts(); 
    clsCategories objCategory = new clsCategories();
    protected void Page_Load(object sender, EventArgs e)
    {
        //PanelCategory.Visible = false;
        //if (!IsPostBack)
        //{
        if (Request.QueryString["a"] != null)
        {
            if (!IsPostBack)
            {
                PanelCategory.Visible = false;
                //PanelProduct.Visible = true;
                btnAdd.Visible = false;
                btnUpdate.Visible = true;

                lblEditAdd.Text = "Edit Product";
                PanelChangeImage.Visible = true;
                FileUpload1.Visible = false;
                fillProductData();
            }
        }
        else
        {
            if (!IsPostBack)
            {
                PanelCategory.Visible = true;
                //PanelProduct.Visible =;
                btnAdd.Visible = true;
                btnUpdate.Visible = false;
                PanelChangeImage.Visible = false;
                FileUpload1.Visible = true;
                DataSet dsRootCategory = new DataSet();
                dsRootCategory = objCategory.getRootCategories();
                ddlRootCat.Items.Clear();
                ddlRootCat.Items.Add("Select");
                ddlRootCat.DataSource = dsRootCategory;
                ddlRootCat.DataTextField = "Category_Name";
                ddlRootCat.DataValueField = "Category1_ID";
                ddlRootCat.DataBind();
            }
        }
        //}
    }
    protected void ddlRootCat_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlRootCat.SelectedItem.Text != "Select")
        {
            int RootCategoryID = Convert.ToInt32(ddlRootCat.SelectedValue);

            //To fill ddlCategory
            DataSet dsCategory = new DataSet();
            dsCategory = objCategory.getCategories(RootCategoryID);
            ddlCat.Items.Clear();
            
            if (dsCategory.Tables[0].Rows.Count >= 1)
            {
                ddlCat.Items.Add("Select Category");
                //PanelCat.Visible = true;   
                ddlCat.DataSource = dsCategory;
                ddlCat.DataTextField = "Category_Name";
                ddlCat.DataValueField = "Category2_ID";
                ddlCat.DataBind();
            }
            else
            {
                ddlCat.Items.Add("None");
            }
        }
        else
        {
            //PanelCat.Visible = false;
            //PanelSubCat.Visible = false; 
        }
        ddlSubCat.Items.Clear();
        ddlSubCat.Items.Add("None"); 
    }
    protected void ddlCat_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlCat.SelectedItem.Text != "None" || ddlCat.SelectedItem.Text!="Select Category")
        {
            int CategoryID = Convert.ToInt32(ddlCat.SelectedValue);

            //To fill ddlCategory
            DataSet dssubCategory = new DataSet();
            dssubCategory = objCategory.getSubCategories(CategoryID);
            ddlSubCat.Items.Clear();
            ddlSubCat.Items.Add("None");
            if (dssubCategory.Tables[0].Rows.Count >= 1)
            {
                //PanelSubCat.Visible = true; 
                ddlSubCat.DataSource = dssubCategory;
                ddlSubCat.DataTextField = "Category_Name";
                ddlSubCat.DataValueField = "Category3_ID";
                ddlSubCat.DataBind();
            }
            else
            {
                //PanelSubCat.Visible = false;     
            }

        }
        else
        {
            //PanelSubCat.Visible = false; 
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (ddlRootCat.SelectedItem.Text != "Select")
        {
            if (ddlCat.SelectedItem.Text != "Select Category")
            {
                if (txtProductCode.Text != "")
                {
                    if (txtName.Text != "")
                    {
                        if (FileUpload1.PostedFile.FileName != "")
                        {
                            string strFileName = FileUpload1.FileName;
                            string[] strSep = FileUpload1.FileName.Split('.');
                            int arrLength = strSep.Length - 1;
                            string strExt1 = strSep[arrLength].ToString();
                            string filepath, filename, imagepath;
                            //string savepath = "D:\\domains\\ispepune.org.in\\wwwroot\\Admin\\arth\\";
                            //string savepath = "C:\\Documents and Settings\\Administrator\\My Documents\\Visual Studio 2005\\WebSites\\DDJWLS\\Admin\\ProductImages\\";
                            //string savepath = "~\\ProductImages\\";
                            //string savepath = "C:\\Inetpub\\vhosts\\ddjeweller.com\\httpdocs\\Admin\\ProductImages\\";
                            string savepath = "D:\\DDJWLS\\Admin\\ProductImages\\";
                            string strExt = strExt1.ToLower();

                            if (strExt.Equals("jpg") || strExt.Equals("jpeg") || strExt.Equals("gif") || strExt.Equals("bmp"))
                            {

                                filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                                filepath = savepath + filename;
                                imagepath = "~\\Admin\\ProductImages\\" + filename;
                                FileUpload1.PostedFile.SaveAs(filepath);
                                int category1ID, category2ID, category3ID;

                                category1ID = Convert.ToInt32(ddlRootCat.SelectedValue);


                                if (ddlCat.SelectedItem.Text.Equals("None"))
                                {
                                    //pass 0 to class for null value
                                    category2ID = 0;
                                }
                                else
                                {
                                    category2ID = Convert.ToInt32(ddlCat.SelectedValue);
                                }

                                if (ddlSubCat.SelectedItem.Text.Equals("None"))
                                {
                                    //pass 0 to class for null value
                                    category3ID = 0;
                                }
                                else
                                {
                                    category3ID = Convert.ToInt32(ddlSubCat.SelectedValue);
                                }

                                int dispOrder;
                                if (Listgroup.SelectedItem.Text.Equals("None"))
                                {
                                    dispOrder = 4;
                                }
                                else
                                {
                                    dispOrder = Convert.ToInt32(Listgroup.SelectedItem.Text);
                                }

                                //Calling method to update Product details  
                                objProduct.InsertProduct(txtProductCode.Text, txtName.Text, category1ID, category2ID, category3ID, imagepath, Convert.ToDouble(txtPrice.Text), (float)Convert.ToSingle(txtWeight.Text), txtWeightUnit.Text, txtSD.Text, txtLD.Text, dispOrder);
                                PanelMain.Visible = false;
                                PanelLinks1.Visible = true;
                                lblMsg.Text = "The Product was added to the database successfully.";

                                //string str1 = "<script language='javascript'>alert('Product is updated successfully');</script>";
                                //Page.RegisterStartupScript("PopUp", str1);
                            }

                            else
                            {
                                string str = "<script language='javascript'>alert('Please select only jpg, gif, bmp Extension files for Image.');</script>";
                                Page.RegisterStartupScript("PopUp", str);

                            }
                        }
                        else
                        {
                            string str1 = "<script language='javascript'>alert('Please select an image for Product.');</script>";
                            Page.RegisterStartupScript("PopUp", str1);

                        }
                    }
                    else
                    {
                        string str2 = "<script language='javascript'>alert('Please Enter Product Name');</script>";
                        Page.RegisterStartupScript("PopUp", str2);

                    }
                }
                else
                {
                    string str3 = "<script language='javascript'>alert('Please Enter Product Code');</script>";
                    Page.RegisterStartupScript("PopUp", str3);

                }
            }

            else
            {
                string str4 = "<script language='javascript'>alert('Please Select Category');</script>";
                Page.RegisterStartupScript("PopUp", str4);

            }
        }
        else
        {
            string str4 = "<script language='javascript'>alert('Please Select Root Category');</script>";
            Page.RegisterStartupScript("PopUp", str4);

        }
    }

    public void fillProductData()
    {
        int productId=Convert.ToInt32(Request.QueryString["a"]);
        DataSet ds = new DataSet();
        ds=objProduct.GetProductByID(productId);
        txtProductCode.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
        txtName.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
        if (ds.Tables[0].Rows[0].ItemArray[7] != null)
        {
            Image1.ImageUrl = ds.Tables[0].Rows[0].ItemArray[7].ToString();
        }
        else
        {
            //Image1.ImageUrl = "~\\Images\\imageNotFound.gif";   
        } 
        txtPrice.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
        txtWeight.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();
        txtWeightUnit.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
        txtSD.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();
        txtLD.Text = ds.Tables[0].Rows[0].ItemArray[12].ToString() ;
        //cbSpecial.Checked = Convert.ToBoolean(ds.Tables[0].Rows[0].ItemArray[13]) ;
        int dispOrder=Convert.ToInt32(ds.Tables[0].Rows[0].ItemArray[14]);
        Listgroup.SelectedIndex = dispOrder - 1; 
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        int productId=Convert.ToInt32(Request.QueryString["a"]);
        if (FileUpload2.PostedFile.FileName != "")
        {
            string strFileName = FileUpload2.FileName;
            string[] strSep = FileUpload2.FileName.Split('.');
            int arrLength = strSep.Length - 1;
            string strExt1 = strSep[arrLength].ToString();
            string filepath, filename, imagepath;
            //string savepath = "D:\\domains\\ispepune.org.in\\wwwroot\\Admin\\arth\\";
           // string savepath = "C:\\Documents and Settings\\Administrator\\My Documents\\Visual Studio 2005\\WebSites\\DDJWLS\\Admin\\ProductImages\\";
            //string savepath = "C:\\Inetpub\\vhosts\\ddjeweller.com\\httpdocs\\Admin\\ProductImages\\";
            string savepath = "C:\\Documents and Settings\\admin\\Desktop\\DD Jewellers Complete\\DDJWLS\\Admin\\ProductImages\\";
            string strExt = strExt1.ToLower();

            if (strExt.Equals("jpg") || strExt.Equals("jpeg") || strExt.Equals("gif") || strExt.Equals("bmp"))
            {

                    filename = Path.GetFileName(FileUpload2.PostedFile.FileName);
                    filepath = savepath + filename;
                    imagepath = "~\\Admin\\ProductImages\\" + filename;
                    FileUpload2.PostedFile.SaveAs(filepath);
               
                int dispOrder;
                if (Listgroup.SelectedItem.Text.Equals("None"))
                {
                    dispOrder = 4;
                }
                else
                {
                    dispOrder = Convert.ToInt32(Listgroup.SelectedItem.Text);
                }
                
                //Calling method to update Product details  
                objProduct.UpdateProduct(productId , txtProductCode.Text, txtName.Text, imagepath, Convert.ToDouble(txtPrice.Text), (float)Convert.ToSingle(txtWeight.Text), txtWeightUnit.Text, txtSD.Text, txtLD.Text,dispOrder);
                PanelMain.Visible = false;
                PanelLinks1.Visible = true;
                lblMsg.Text = "The Product was updated in the database successfully.";

                //string str1 = "<script language='javascript'>alert('Product is updated successfully');</script>";
                //Page.RegisterStartupScript("PopUp", str1);
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
    protected void lnkChangeImage_Click(object sender, EventArgs e)
    {
        FileUpload2.Visible = true;
      
    }
}
