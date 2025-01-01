using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient; 

/// <summary>
/// Summary description for clsCategories
/// </summary>
public class clsCategories
{
	public clsCategories()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    //To get all root categories
    public DataSet getRootCategories()
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select * from tblCategory1";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    //To get all categories
    public DataSet getCategories(int RootCategoryID)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select * from tblCategory2 where Category1_ID="+ RootCategoryID ;
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    //To get all sub categories
    public DataSet getSubCategories(int CategoryID)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select * from tblCategory3 where Category2_ID=" + CategoryID;
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    //To add a Root Category
    public void AddRootCategory(string name, bool finalProduct)
    {
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmdString = "Insert into [tblCategory1] ([Category1_ID],[Category_Name],[Final_Product]) VALUES (@Category1_ID,@Category_Name,@Final_Product)";
        SqlCommand cmd = new SqlCommand(cmdString, conn);

        int maxCategoryId = GetMaxRootCategory_ID(); 

        SqlParameter paramCategory1ID = new SqlParameter();
        paramCategory1ID.ParameterName = "@Category1_ID";
        paramCategory1ID.Value = maxCategoryId;
        paramCategory1ID.DbType = System.Data.DbType.Int32;
        cmd.Parameters.Add(paramCategory1ID);

        SqlParameter paramCategory1Name = new SqlParameter();
        paramCategory1Name.ParameterName = "@Category_Name";
        paramCategory1Name.Value = name;
        paramCategory1Name.DbType = System.Data.DbType.String; 
        cmd.Parameters.Add(paramCategory1Name);


        SqlParameter paramFinalProduct = new SqlParameter();
        paramFinalProduct.ParameterName = "@Final_Product";
        paramFinalProduct.Value = finalProduct;
        paramFinalProduct.DbType = System.Data.DbType.String; 
        cmd.Parameters.Add(paramFinalProduct);

        conn.Open();
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
        finally
        {
            conn.Close();
        }
    }

    //To get max Category_ID for Root Category
    public int GetMaxRootCategory_ID()
    {
        object maxID;
        int maxid;
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select max(Category1_ID) from tblCategory1";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        conn.Open();
        maxID = cmd.ExecuteScalar();
        if (Convert.IsDBNull(maxID))
        {
            maxid = 0;
        }
        else
        {
            maxid = Convert.ToInt32(maxID);
        }
        return ++maxid; 
    }

    //To add a Category
    public void AddCategory(string name,int rootCategoryId, bool finalProduct,string image)
    {
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmdString = "Insert into [tblCategory2] ([Category2_ID],[Category_Name],[Category1_ID],[Final_Product],[Image]) VALUES (@Category2_ID,@Category_Name,@Category1_ID,@Final_Product,@Image)";
        SqlCommand cmd = new SqlCommand(cmdString, conn);

        int maxCategoryId = GetMaxCategory_ID(); 

        SqlParameter paramCategory2ID = new SqlParameter();
        paramCategory2ID.ParameterName = "@Category2_ID";
        paramCategory2ID.Value = maxCategoryId;
        paramCategory2ID.DbType = System.Data.DbType.Int32;
        cmd.Parameters.Add(paramCategory2ID);

        SqlParameter paramCategory2Name = new SqlParameter();
        paramCategory2Name.ParameterName = "@Category_Name";
        paramCategory2Name.Value = name;
        paramCategory2Name.DbType = System.Data.DbType.String; 
        cmd.Parameters.Add(paramCategory2Name);

        SqlParameter paramCategory1ID = new SqlParameter();
        paramCategory1ID.ParameterName = "@Category1_ID";
        paramCategory1ID.Value = rootCategoryId;
        paramCategory1ID.DbType = System.Data.DbType.Int32 ;
        cmd.Parameters.Add(paramCategory1ID);

        SqlParameter paramFinalProduct = new SqlParameter();
        paramFinalProduct.ParameterName = "@Final_Product";
        paramFinalProduct.Value = finalProduct; 
        paramFinalProduct.DbType = System.Data.DbType.Boolean;
        cmd.Parameters.Add(paramFinalProduct);

        SqlParameter paramImage = new SqlParameter();
        paramImage.ParameterName = "@Image";
        if (image != string.Empty)
        {
            paramImage.Value = image ;
        }
        else
        {
            paramImage.Value = System.DBNull.Value;
        }
       // paramImage.Value = image;
        paramImage.DbType = System.Data.DbType.String ;
        cmd.Parameters.Add(paramImage);

        conn.Open();
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
        finally
        {
            conn.Close();
        }
    }

    //To get max Category_ID for Category
    public int GetMaxCategory_ID()
    {
        object maxID;
        int maxid;
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select max(Category2_ID) from tblCategory2";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        conn.Open();
        maxID = cmd.ExecuteScalar();
        if (Convert.IsDBNull(maxID))
        {
            maxid = 0;
        }
        else
        {
            maxid = Convert.ToInt32(maxID);
        }
        return ++maxid;
    }

    //To add a Sub Category
    public void AddSubCategory(string name,int categoryId,bool finalProduct, string image)
    {
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmdString = "Insert into [tblCategory3] ([Category3_ID],[Category_Name],[Category2_ID],[Final_Product],[Image]) VALUES (@Category3_ID,@Category_Name,@Category2_ID,@Final_Product,@Image)";
        SqlCommand cmd = new SqlCommand(cmdString, conn);

        int maxCategoryId = GetMaxSubCategory_ID(); 

        SqlParameter paramCategory3ID = new SqlParameter();
        paramCategory3ID.ParameterName = "@Category3_ID";
        paramCategory3ID.Value = maxCategoryId;
        paramCategory3ID.DbType = System.Data.DbType.Int32;
        cmd.Parameters.Add(paramCategory3ID);

        SqlParameter paramCategory3Name = new SqlParameter();
        paramCategory3Name.ParameterName = "@Category_Name";
        paramCategory3Name.Value = name;
        paramCategory3Name.DbType = System.Data.DbType.String ;
        cmd.Parameters.Add(paramCategory3Name);

        SqlParameter paramCategory2ID = new SqlParameter();
        paramCategory2ID.ParameterName = "@Category2_ID";
        paramCategory2ID.Value = categoryId; 
        paramCategory2ID.DbType = System.Data.DbType.Int32;
        cmd.Parameters.Add(paramCategory2ID);

        SqlParameter paramFinalProduct = new SqlParameter();
        paramFinalProduct.ParameterName = "@Final_Product";
        paramFinalProduct.Value = finalProduct;
        paramFinalProduct.DbType = System.Data.DbType.Boolean ;
        cmd.Parameters.Add(paramFinalProduct);

        SqlParameter paramImage = new SqlParameter();
        paramImage.ParameterName = "@Image";
        if (image != string.Empty)
        {
            paramImage.Value = image;
        }
        else
        {
            paramImage.Value = System.DBNull.Value;
        }
       // paramImage.Value = image;
        paramImage.DbType = System.Data.DbType.String ;
        cmd.Parameters.Add(paramImage);

        conn.Open();
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
        finally
        {
            conn.Close();
        }
    }

    //To get max Category_ID for Sub Category
    public int GetMaxSubCategory_ID()
    {
        object maxID;
        int maxid;
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select max(Category3_ID) from tblCategory3";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        conn.Open();
        maxID = cmd.ExecuteScalar();
        if (Convert.IsDBNull(maxID))
        {
            maxid = 0;
        }
        else
        {
            maxid = Convert.ToInt32(maxID);
        }
        return ++maxid;
    }

    //To remove a category
    public void RemoveCategory(int categoryId)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Delete from tblCategory2 where Category2_ID=" + categoryId;
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        conn.Open();
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
        finally
        {
            conn.Close();
        }
    }

    //To remove a Sub category
    public void RemoveSubCategory(int categoryId)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Delete from tblCategory3 where Category3_ID=" + categoryId;
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        conn.Open();
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
        finally
        {
            conn.Close();
        }
    }

    //To get category details for a particular category
    public DataSet GetCategoryByID(int categoryId)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select * from tblCategory2 where Category2_ID=" + categoryId;
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    //To get category details for a particular subcategory
    public DataSet GetSubCategoryByID(int categoryId)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select * from tblCategory3 where Category3_ID=" + categoryId;
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    //To update Category details
    public void UpdateCategory(int categoryId, string categoryName, string categoryImage)
    {
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmdString = "Update [tblCategory2] Set [Category_Name]=@Category_Name,[Image]=@Image where Category2_ID=@Category2_ID";
        SqlCommand cmd = new SqlCommand(cmdString, conn);

        SqlParameter paramCategory2ID = new SqlParameter();
        paramCategory2ID.ParameterName = "@Category2_ID";
        paramCategory2ID.Value = categoryId;
        paramCategory2ID.DbType = System.Data.DbType.Int32;
        cmd.Parameters.Add(paramCategory2ID);

        SqlParameter paramCategory2Name = new SqlParameter();
        paramCategory2Name.ParameterName = "@Category_Name";
        paramCategory2Name.Value = categoryName;
        paramCategory2Name.DbType = System.Data.DbType.String; 
        cmd.Parameters.Add(paramCategory2Name);

        SqlParameter paramImage = new SqlParameter();
        paramImage.ParameterName = "@Image";
        if (categoryImage != string.Empty)
        {
            paramImage.Value = categoryImage;
        }
        else
        {
            paramImage.Value = System.DBNull.Value;
        }
   
        paramImage.DbType = System.Data.DbType.String; 
        cmd.Parameters.Add(paramImage);

        conn.Open();
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
        finally
        {
            conn.Close();
        }
   
    }

    //To update Sub Category details
    public void UpdateSubCategory(int categoryId, string categoryName, string categoryImage)
    {
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmdString = "Update [tblCategory3] Set [Category_Name]=@Category_Name,[Image]=@Image where Category3_ID=@Category3_ID";
        SqlCommand cmd = new SqlCommand(cmdString, conn);

        SqlParameter paramCategory3ID = new SqlParameter();
        paramCategory3ID.ParameterName = "@Category3_ID";
        paramCategory3ID.Value = categoryId;
        paramCategory3ID.DbType = System.Data.DbType.Int32;
        cmd.Parameters.Add(paramCategory3ID);

        SqlParameter paramCategory2Name = new SqlParameter();
        paramCategory2Name.ParameterName = "@Category_Name";
        paramCategory2Name.Value = categoryName;
        paramCategory2Name.DbType = System.Data.DbType.String ;
        cmd.Parameters.Add(paramCategory2Name);

        SqlParameter paramImage = new SqlParameter();
        paramImage.ParameterName = "@Image";
        if (categoryImage != string.Empty)
        {
            paramImage.Value = categoryImage;
        }
        else
        {
            paramImage.Value = System.DBNull.Value;  
        } 
        paramImage.DbType = System.Data.DbType.String;
        cmd.Parameters.Add(paramImage);

        conn.Open();
        try
        {
            int rowsAffacted=cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
        finally
        {
            conn.Close();
        }

    }
}
