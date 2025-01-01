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

public partial class Admin_SpecialProduct : System.Web.UI.Page
{
    clsProducts objProduct = new clsProducts();
 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataSet ds = new DataSet();
            ds = objProduct.GetProductCategories(); 
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "update" && e.CommandArgument != null)
        {
            int productId = Convert.ToInt32(e.CommandArgument);
            //Label lbl=(Label) GridView1.FindControl("lblProductId");  
            //CheckBox chk1 = (CheckBox)GridView1.Rows[].FindControl("cbSpecial");
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                Label lbl = (Label)GridView1.Rows[i].FindControl("lblProductId");

                if (lbl.Text.Equals(productId.ToString()))
                {
                    CheckBox chkSpecial = (CheckBox) GridView1.Rows[i].FindControl("cbSpecial");
                    CheckBox chkHome = (CheckBox) GridView1.Rows[i].FindControl("cbHome");
                      //Update Product for Special
                        objProduct.UpdateSpecial(productId,chkSpecial.Checked);
                    
                    
                        //Update Product for Home Page Option
                        objProduct.UpdateHomeOption(productId,chkHome.Checked );
                    }                
            }

        }
    }  
    
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //int row=Convert.ToInt32(e.RowIndex);

        //Label lbl = (Label)GridView1.Rows[row].FindControl("lblProductId");
        //CheckBox chk1 = (CheckBox)GridView1.Rows[row].FindControl("cbSpecial");

        //objProduct.UpdateSpecial(Convert.ToInt32(lbl.Text), chk1.Checked);

        //DataSet ds = new DataSet();
        //ds = objProduct.GetAllSpecialProducts();
        //GridView1.DataSource = ds;
        //GridView1.DataBind(); 
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;   
        DataSet ds = new DataSet();
        ds = objProduct.GetProductCategories();
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}
