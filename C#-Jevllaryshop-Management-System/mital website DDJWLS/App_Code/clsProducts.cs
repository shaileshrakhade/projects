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
using System.Data.SqlTypes; 

/// <summary>
/// Summary description for Product
/// </summary>
public class clsProducts
{
	public clsProducts()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    //To Get all Products
    public DataSet GetAllProducts()
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select * from tblProduct order by Product_ID desc";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    //To Get details of a particular Product by Product_ID
    public DataSet GetProductByID(int productId)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select * from tblProduct where Product_ID=" + productId + " order by Product_ID desc";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
 
    }

    //To Get Products Root category wise
    public DataSet GetRootCategoryProducts(int RootCategoryID)
    {
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        String cmdString = "Select * from tblProduct where Category1_ID=" + RootCategoryID + " order by Product_ID desc";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    //To Get Products category wise
    public DataSet GetCategoryProducts(int CategoryID)
    {
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        String cmdString = "Select * from tblProduct where Category2_ID=" + CategoryID + " order by Product_ID desc";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    //To Get Products sub category wise
    public DataSet GetSubCategoryProducts(int SubCategoryID)
    {
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        String cmdString = "Select * from tblProduct where Category3_ID=" + SubCategoryID + " order by Product_ID desc";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    //To insert a product into database 
    public void InsertProduct(string productCode,string productName,int category1ID,int category2ID,int category3ID,string imagePath,double price,float weight, string weightUnit, string shortDesc, string longDesc,int displayOrder)
    {
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmdString = "Insert into [tblProduct] ([Product_ID],[Product_Code],[Product_Name],[Category1_ID],[Category2_ID],[Category3_ID],[Image],[Price],[Weight],[Weight_Unit],[Short_Desc],[Long_Desc],[Special],[DisplayOrderGroup],[Home_Option]) VALUES (@Product_ID,@Product_Code,@Product_Name,@Category1_ID,@Category2_ID,@Category3_ID,@Image,@Price,@Weight,@Weight_Unit,@Short_Desc,@Long_Desc,'False',@DisplayOrderGroup,'False')";
        SqlCommand cmd = new SqlCommand(cmdString, conn);

        int maxProductId=GetMaxProduct_ID();

        SqlParameter paramProductID = new SqlParameter();
        paramProductID.ParameterName = "@Product_ID";
        paramProductID.Value = maxProductId;
        paramProductID.DbType = System.Data.DbType.Int32;
        cmd.Parameters.Add(paramProductID);

        SqlParameter paramProductCode = new SqlParameter();
        paramProductCode.ParameterName = "@Product_Code";
        paramProductCode.Value = productCode;
        paramProductCode.DbType = System.Data.DbType.String;
        cmd.Parameters.Add(paramProductCode);
   
        SqlParameter paramProductName = new SqlParameter();
        paramProductName.ParameterName = "@Product_Name";
        paramProductName.Value = productName;
        paramProductName.DbType = System.Data.DbType.String ;
        cmd.Parameters.Add(paramProductName);

        SqlParameter paramCat1ID = new SqlParameter();
        paramCat1ID.ParameterName = "@Category1_ID";
        if (category1ID == 0)
        {
            paramCat1ID.Value = SqlInt32.Null; 
        }
        else
        {
            paramCat1ID.Value = category1ID;
        }
        paramCat1ID.DbType = System.Data.DbType.Int32;
        cmd.Parameters.Add(paramCat1ID);
        
        SqlParameter paramCat2ID = new SqlParameter();
        paramCat2ID.ParameterName = "@Category2_ID";
        if (category2ID == 0)
        {
            paramCat2ID.Value = SqlInt32.Null;
        }
        else
        {
            paramCat2ID.Value = category2ID;
        }
        //paramCat2ID.Value = category2ID;
        paramCat2ID.DbType = System.Data.DbType.Int32;
        cmd.Parameters.Add(paramCat2ID);

        SqlParameter paramCat3ID = new SqlParameter();
        paramCat3ID.ParameterName = "@Category3_ID";
        if (category3ID == 0)
        {
            paramCat3ID.Value = System.DBNull.Value; 
        }
        else
        {
            paramCat3ID.Value = category3ID;
        }
        //paramCat3ID.Value = category3ID;
        paramCat3ID.DbType = System.Data.DbType.Int32;
        cmd.Parameters.Add(paramCat3ID);

        SqlParameter paramImage = new SqlParameter();
        paramImage.ParameterName = "@Image";
        if (imagePath != string.Empty)
        {
            paramImage.Value = imagePath;
        }
        else
        {
            paramImage.Value = System.DBNull.Value;    
        }
        paramImage.DbType = System.Data.DbType.String;
        cmd.Parameters.Add(paramImage);

        SqlParameter paramPrice = new SqlParameter();
        paramPrice.ParameterName = "@Price";
        paramPrice.Value = price;
        paramPrice.DbType = System.Data.DbType.Double;
        cmd.Parameters.Add(paramPrice);

        SqlParameter paramWeight = new SqlParameter();
        paramWeight.ParameterName = "@Weight";
        paramWeight.Value = weight ;
        paramWeight.DbType = System.Data.DbType.Single;
        cmd.Parameters.Add(paramWeight);

        SqlParameter paramWeightUnit = new SqlParameter();
        paramWeightUnit.ParameterName = "@Weight_Unit";
        paramWeightUnit.Value = weightUnit;
        paramWeightUnit.DbType = System.Data.DbType.String;
        cmd.Parameters.Add(paramWeightUnit);

        SqlParameter paramShortDesc = new SqlParameter();
        paramShortDesc.ParameterName = "@Short_Desc";
        paramShortDesc.Value =shortDesc;
        paramShortDesc.DbType = System.Data.DbType.String;
        cmd.Parameters.Add(paramShortDesc);

        SqlParameter paramLongDesc = new SqlParameter();
        paramLongDesc.ParameterName = "@Long_Desc";
        paramLongDesc.Value = longDesc ;
        paramLongDesc.DbType = System.Data.DbType.String;
        cmd.Parameters.Add(paramLongDesc);

        //SqlParameter paramSpecial = new SqlParameter();
        //paramSpecial.ParameterName = "@Special";
        //paramSpecial.Value = special ;
        //paramSpecial.DbType = System.Data.DbType.Boolean;
        //cmd.Parameters.Add(paramSpecial);

        SqlParameter paramDispOrder = new SqlParameter();
        paramDispOrder.ParameterName = "@DisplayOrderGroup";
        paramDispOrder.Value = displayOrder ;
        paramDispOrder.DbType = System.Data.DbType.Int32; 
        cmd.Parameters.Add(paramDispOrder);

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

    //To get max Product_ID from the database
    public int GetMaxProduct_ID()
    {
        object maxID;
        int maxid;
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select max(Product_ID) from tblProduct"; 
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

    //To update details of a particular Product
    public void UpdateProduct(int productID,string productCode, string productName, string imagePath, double price, float weight, string weightUnit, string shortDesc, string longDesc, int displayOrder)
    {
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmdString = "Update [tblProduct] Set [Product_Code]=@Product_Code,[Product_Name]=@Product_Name,[Image]=@Image,[Price]=@Price,[Weight]=@Weight,[Weight_Unit]=@Weight_Unit,[Short_Desc]=@Short_Desc,[Long_Desc]=@Long_Desc,[DisplayOrderGroup]=@DisplayOrderGroup Where Product_ID=@Product_ID";
        SqlCommand cmd = new SqlCommand(cmdString, conn);

        SqlParameter paramProductID = new SqlParameter();
        paramProductID.ParameterName = "@Product_ID";
        paramProductID.Value = productID ;
        paramProductID.DbType = System.Data.DbType.Int32;
        cmd.Parameters.Add(paramProductID);

        SqlParameter paramProductCode = new SqlParameter();
        paramProductCode.ParameterName = "@Product_Code";
        paramProductCode.Value = productCode;
        paramProductCode.DbType = System.Data.DbType.String;
        cmd.Parameters.Add(paramProductCode);

        SqlParameter paramProductName = new SqlParameter();
        paramProductName.ParameterName = "@Product_Name";
        paramProductName.Value = productName;
        paramProductName.DbType = System.Data.DbType.String;
        cmd.Parameters.Add(paramProductName);

        
        SqlParameter paramImage = new SqlParameter();
        paramImage.ParameterName = "@Image";
        if (imagePath != string.Empty)
        {
            paramImage.Value = imagePath;
        }
        else
        {
            paramImage.Value = System.DBNull.Value;
        }
        //paramImage.Value = imagePath;
        paramImage.DbType = System.Data.DbType.String;
        cmd.Parameters.Add(paramImage);

        SqlParameter paramPrice = new SqlParameter();
        paramPrice.ParameterName = "@Price";
        paramPrice.Value = price;
        paramPrice.DbType = System.Data.DbType.Double;
        cmd.Parameters.Add(paramPrice);

        SqlParameter paramWeight = new SqlParameter();
        paramWeight.ParameterName = "@Weight";
        paramWeight.Value = weight;
        paramWeight.DbType = System.Data.DbType.Single;
        cmd.Parameters.Add(paramWeight);

        SqlParameter paramWeightUnit = new SqlParameter();
        paramWeightUnit.ParameterName = "@Weight_Unit";
        paramWeightUnit.Value = weightUnit;
        paramWeightUnit.DbType = System.Data.DbType.String;
        cmd.Parameters.Add(paramWeightUnit);

        SqlParameter paramShortDesc = new SqlParameter();
        paramShortDesc.ParameterName = "@Short_Desc";
        paramShortDesc.Value = shortDesc;
        paramShortDesc.DbType = System.Data.DbType.String;
        cmd.Parameters.Add(paramShortDesc);

        SqlParameter paramLongDesc = new SqlParameter();
        paramLongDesc.ParameterName = "@Long_Desc";
        paramLongDesc.Value = longDesc;
        paramLongDesc.DbType = System.Data.DbType.String;
        cmd.Parameters.Add(paramLongDesc);

        //SqlParameter paramSpecial = new SqlParameter();
        //paramSpecial.ParameterName = "@Special";
        //paramSpecial.Value = special;
        //paramSpecial.DbType = System.Data.DbType.Boolean;
        //cmd.Parameters.Add(paramSpecial);

        SqlParameter paramDispOrder = new SqlParameter();
        paramDispOrder.ParameterName = "@DisplayOrderGroup";
        paramDispOrder.Value = displayOrder;
        paramDispOrder.DbType = System.Data.DbType.Int32;
        cmd.Parameters.Add(paramDispOrder);

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

    //To remove a particular product
    public void RemoveProduct(int productID)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Delete from tblProduct where Product_ID=" + productID;
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
    public string GetOldImageFile(int productId)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select Image from tblProduct where Product_ID=" + productId;
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        string imagePath;
        conn.Open();
        imagePath=cmd.ExecuteScalar().ToString();
        conn.Close();
        return imagePath;

    }

    public DataSet SearchByName(string name)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select * from tblProduct where Product_Name like ('%" + name + "%')";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }

    //To get top Specials Product
    public DataSet GetSpecialProducts(int count)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select top " + count + " * from tblProduct where Special='True' Order by DisplayOrderGroup,Product_Name";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;

    }
    //To get all Specials Product
    public DataSet GetAllSpecialProducts()
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select * from tblProduct where Special='True' Order by DisplayOrderGroup,Product_Name";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;

    }

    //To get top Home Products
    public DataSet GetHomePageProducts(int count)
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select top " + count + " * from tblProduct where Home_Option='True' Order by DisplayOrderGroup,Product_Name";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;

    }

    //To get all Home Products
    public DataSet GetAllHomePageProducts()
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select * from tblProduct where Home_Option='True' Order by DisplayOrderGroup,Product_Name";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;

    }

    public void UpdateSpecial(int productId, bool check)
    {
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmdString = "Update [tblProduct] Set [Special]=@Special Where Product_ID=@Product_ID";
        SqlCommand cmd = new SqlCommand(cmdString, conn);

        SqlParameter paramProductID = new SqlParameter();
        paramProductID.ParameterName = "@Product_ID";
        paramProductID.Value = productId;
        paramProductID.DbType = System.Data.DbType.Int32;
        cmd.Parameters.Add(paramProductID);

        SqlParameter paramSpecial = new SqlParameter();
        paramSpecial.ParameterName = "@Special";
        paramSpecial.Value = check;
        paramSpecial.DbType = System.Data.DbType.Boolean;
        cmd.Parameters.Add(paramSpecial);

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
    public void UpdateHomeOption(int productId, bool check)
    {
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmdString = "Update [tblProduct] Set [Home_Option]=@Home_Option Where Product_ID=@Product_ID";
        SqlCommand cmd = new SqlCommand(cmdString, conn);

        SqlParameter paramProductID = new SqlParameter();
        paramProductID.ParameterName = "@Product_ID";
        paramProductID.Value = productId;
        paramProductID.DbType = System.Data.DbType.Int32;
        cmd.Parameters.Add(paramProductID);

        SqlParameter paramHome = new SqlParameter();
        paramHome.ParameterName = "@Home_Option";
        paramHome.Value = check;
        paramHome.DbType = System.Data.DbType.Boolean;
        cmd.Parameters.Add(paramHome);

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


    //To display product with its categories
    public DataSet GetProductCategories()
    {
        string constring = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constring);
        String cmdString = "Select Product_ID, Product_Code,Product_Name,tblCategory1.Category_Name as RootCategory,tblCategory2.Category_Name as Category,tblCategory3.Category_Name as SubCategory,Special,Home_Option from tblProduct left outer join tblCategory1 on tblProduct.Category1_ID=tblCategory1.Category1_ID left outer join tblCategory2 on tblProduct.Category2_ID=tblCategory2.Category2_ID left outer join tblCategory3 on tblProduct.Category3_ID=tblCategory3.Category3_ID";
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds;
    }
}

