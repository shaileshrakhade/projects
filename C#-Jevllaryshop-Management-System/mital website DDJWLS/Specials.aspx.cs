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

public partial class Specials : System.Web.UI.Page
{
    clsProducts objProduct = new clsProducts();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = objProduct.GetSpecialProducts(6);
            DataList1.DataSource = ds;
            DataList1.DataBind();
            ViewState["rowCount"] = 6;
            ViewState["productCount"] = 6;
            if (ds.Tables[0].Rows.Count <= 6)
            {
                lnkNext.Visible = false;
            }
        }
    }
    protected void lnkNext_Click(object sender, EventArgs e)
    {
       
        DataSet ds1 = new DataSet();
      
        //ds1.Tables.Add("tbl"); 
        DataView dv = new DataView();
        ds1 = objProduct.GetAllSpecialProducts();
        dv.Table = ds1.Tables[0];
        int count = ds1.Tables[0].Rows.Count;
        int rowCount = Convert.ToInt32(ViewState["rowCount"]);
        int productCount = Convert.ToInt32(ViewState["productCount"]);  
        if (count > rowCount)
            {
                for (int i = 0; i < rowCount; i++)
                {
                    dv.Delete(0);
                    count--;

                }

                if (count > productCount )
                {
                    for (int j = count - 1; j >= productCount ; j--)
                    {
                        dv.Delete(j); 
                    }
                }
                //for (int j = k; j<count;count--) 
                //{
                
                //    dv.Delete(count-1);
                //    //count--;
                //}

           }
            DataList1.DataSource = dv;
            DataList1.DataBind();
            ViewState["rowCount"] = rowCount + productCount ;
            if (ds1.Tables[0].Rows.Count <= rowCount + productCount )
            {
                lnkNext.Visible = false; 
            }
        
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "product" && e.CommandArgument != null)
        {
            int productId = Convert.ToInt32(e.CommandArgument);
            Session["Product_ID"] = productId;
            Response.Redirect("Product_Detail.aspx"); 
        }
    }
}
