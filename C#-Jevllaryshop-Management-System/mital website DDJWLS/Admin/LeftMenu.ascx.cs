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

public partial class LeftMenu : System.Web.UI.UserControl
{
    string temp;
    //string[] menu ={"Store setup", "Checkout setup", "Admin security", "Products", "Categories", "Orders", "Customers","Reports","Downloads","Vouchers","Store Extras"};
    string[] menu ={ "Products", "Orders", "Customers", "Reports" }; 
    string[][] items;
    TableRow tr;
    TableCell td;
    protected void Page_Load(object sender, EventArgs e)
    {
        items = new string[menu.Length][];
        setArrowImg(); 
        //items[0] = new string[] {
        //            "Store information|store_info.aspx?type=Store&name=Store information",
        //            "Email setup|store_email.aspx?type=Store&name=Email setup",
        //            "Stock setup|store_stock.aspx?type=Store&name=Stock setup",
        //            "Home page options|store_home_setup.aspx?type=Store&name=Home page options",
        //            "Country List|store_countries.aspx?type=Store&name=Country List",
        //            "States list|store_states.aspx?type=Store&name=States List",
        //            "Misc options|store_misc.aspx?type=Store&name=Misc options"};


        //items[1] = new string[] {"Checkout|checkout_checkout.aspx?type=Checkout&name=Checkout",
        //            "Accepted cards|checkout_acceptedCards.aspx?type=Checkout&name=Accepted cards",
        //            "Payment methods|checkout_payment.aspx?type=Checkout&name=Payment methods",
        //            "Shipping zones|checkout_tax.aspx?type=Checkout&name=Shipping zones",
        //            "GOC|checkout_shipping.aspx?type=Checkout&name=GOC"};


        //items[2] = new string[] {
        //      "Admin IP restrictions|admin_security.aspx?type=Admin&name=Admin IP restrictions",
        //      "Admin users|admin_users.aspx?type=Admin&name=Admin users" };


        items[0] = new string[] {"View products|Products.aspx?type=Products&name=View products",
                    "Add product|productAE.aspx?type=Products&name=Add product",
                    "Special & Home Page Option|SpecialProduct.aspx?type=Products&name=Special Products",
                    "View categories|Categories.aspx?type=Products&name=View categories",
                    "Add categories|CategoryAE.aspx?type=Products&name=Add category",                    
                    //"Product Options|productOptions.aspx?type=Products&name=Product Options",
                    //"Add Product Option group|productOptionGroupAE.aspx?type=Products&name=Add Product Option group",
                    //"Add Product Option value|productOptionAE.aspx?type=Products&name=Add Product Option value",
                    //"Suppliers|productSuppliers.aspx?type=Products&name=Suppliers",
                    //"Add Supplier|productSupplierAE.aspx?type=Products&name=Add Supplier"};
                    };

        //items[1] = new string[] {
        //            "View categories|category.aspx?type=Categories&name=View categories",
        //            "Add category|categoryAE.aspx?type=Categories&name=Add category"};


        items[1] = new string[]{
                            "View orders|Orders.aspx?type=Orders&name=View orders",
                            "New orders|OrdersNew.aspx?type=Orders&name=New orders",
                            "Orders - Processed|OrdersProcessed.aspx?type=Orders&name=Orders - Processed",
                            //"Orders to process|ordersPay.aspx?type=Orders&name=Orders to process",
                            //"Orders to ship|ordersShip.aspx?type=Orders&name=Orders to ship",
                            //"Orders - Declined|ordersDeclined.aspx?type=Orders&name=Orders - Declined",
                            //"Orders - Archived|ordersarchived.aspx?type=Orders&name=Orders - Archived",
                            "Orders - Cancelled|OrdersCancelled.aspx?type=Orders&name=Orders - Cancelled"};



        items[2] = new string[]{
                            "View customers|Customers.aspx?type=Customers&name=View customers",
                            //"Add customer|CustomerAE.aspx?type=Customers&name=Add customer",
                            //"View memberships|membership.aspx?type=Customers&name=View memberships",
                            //"Add membership|membershipAE.aspx?type=Customers&name=Add membership",
                            //"Newsletter Mailout|customerMailout.aspx?type=Customers&name=Newsletter Mailout"
                            };



        items[3] = new string[] {"View reports|Reports.aspx?type=Reports&name=View reports",
                            "Orders Report|OrderReport.aspx?type=Reports&name=Orders report",
                            "Products Report|ProductReport.aspx?type=Reports&name=Products report",
                            "Customers Report|UsersReport.aspx?type=Reports&name=Customers report"};
                            //"Sales by customer|reportscustomers.aspx?type=Reports&name=Sales by customer",
                            //"LOG Title not Found|reportsSearches.aspx?type=Reports&name=LOG Title not Found"};



        //items[8] = new string[]{"Download orders|downloadorders.aspx?type=Downloads&name=Download orders",
        //                    "Download customers|downloadcustomers.aspx?type=Downloads&name=Download customers",
        //                    "Upload/Download products|downloadProducts.aspx?type=Downloads&name=Upload/Download products"};


        //items[9] = new string[]{"Gift vouchers|voucherGift.aspx?type=Vouchers&name=Gift vouchers",
        //                    "Add gift voucher|voucherGiftAdd.aspx?type=Vouchers&name=Add gift voucher",
        //                    "Discount vouchers|voucherDiscount.aspx?type=Vouchers&name=Discount vouchers",
        //                    "Add discount voucher|voucherDiscountAdd.aspx?type=Vouchers&name=Add discount voucher",
        //                    "Voucher statistics/report|voucherReport.aspx?type=Vouchers&name=Voucher statistics/report"};



        //items[10] = new string[]{"Site Manager|site_manager_template.aspx?type=StoreExtras&name=Site Manager",
        //                    "Event Counter Manager|event_counter.aspx?type=StoreExtras&name=Event Counter Manager"};

        if (Request.QueryString["type"] != null) // && Session["SelMenu"] == null)
        {
            temp = Request.QueryString["type"];
            getpalceholder(temp);

        }
        else if(Session["SelMenu"] != null)
        {
                temp = Convert.ToString(Session["SelMenu"]);
                getpalceholder(temp);
                //temp = string.Empty;
       }
    }

    //protected void lnkbtnStore_Click(object sender, EventArgs e)
    //{
    //        Session["SelMenu"] = null;
    //        setArrowImg();
    //        clearPHAll();
    //        Image1.ImageUrl = "~/Images/LeftMenu/arrow_down.gif";
    //        Table maintable = createSubMenu(0);
    //        PHStore.Controls.Add(maintable);
    //        Session["SelMenu"] = "Store";
    //        Response.Redirect("store_info.aspx");
               
    //}
    
    //protected void LnkbtnChkout_Click(object sender, EventArgs e)
    //{
    //    Session["SelMenu"] = null;
    //    setArrowImg();
    //    clearPHAll();
    //    Image2.ImageUrl = "~/admin/img/source/arrow_down.gif";
    //    Table maintable = createSubMenu(1);
    //    PHChkout.Controls.Add(maintable);
    //    Session["SelMenu"] = "Checkout";
    //    Response.Redirect("checkout_checkout.aspx");
        
       
    //}

    
    //protected void lnkbtnAdmin_Click(object sender, EventArgs e)
    //{
    //    Session["SelMenu"] = null;
    //    setArrowImg();
    //    clearPHAll();
    //    Image3.ImageUrl = "~/admin/img/source/arrow_down.gif";
    //    Table maintable = createSubMenu(2);
    //    PHAdmin.Controls.Add(maintable);
    //    Session["SelMenu"] = "Admin";
    //    Response.Redirect("admin_security.aspx");
        
       
    //}
    protected void lnkbtnProducts_Click(object sender, EventArgs e)
    {
            Session["SelMenu"] = null;
            setArrowImg();
            clearPHAll();
            Image4.ImageUrl = "~/Images/LeftMenu/arrow_down.gif";
            //Image4.ImageUrl = "~/Images/LeftMenu/arrow_down.gif";
            Table maintable = createSubMenu(0);
            PHProducts.Controls.Add(maintable);
            Session["SelMenu"] = "Products";
            Response.Redirect("Products.aspx");
     }
    //protected void lnkbtnCategories_Click(object sender, EventArgs e)
    //{
    //        Session["SelMenu"] = null;
    //        setArrowImg();
    //        clearPHAll();
    //        Image5.ImageUrl = "~/admin/img/source/arrow_down.gif";
    //        Table maintable = createSubMenu(4);
    //        PHCategories.Controls.Add(maintable);
    //        Session["SelMenu"] = "Categories";
    //        Response.Redirect("category.aspx");
    // }
    protected void LnkbtnOrders_Click(object sender, EventArgs e)
    {
            Session["SelMenu"] = null;
            setArrowImg();
            clearPHAll();
            Image6.ImageUrl = "~/Images/LeftMenu/arrow_down.gif";
            Table maintable = createSubMenu(1);
            PHOrders.Controls.Add(maintable);
            Session["SelMenu"] = "Orders";
            Response.Redirect("Orders.aspx");
        
        
    }
    protected void lnkbtnCustomer_Click(object sender, EventArgs e)
    {
            Session["SelMenu"] = null;
            setArrowImg();
            clearPHAll();
            Image7.ImageUrl = "~/Images/LeftMenu/arrow_down.gif";
            Table maintable = createSubMenu(2);
            PHCustomers.Controls.Add(maintable);
            Session["SelMenu"] = "Customers";
            Response.Redirect("Customers.aspx");
        
        
    }
    protected void Reports_Click(object sender, EventArgs e)
    {
            Session["SelMenu"] = null;
            setArrowImg();
            clearPHAll();
            Image8.ImageUrl = "~/Images/LeftMenu/arrow_down.gif";
            Table maintable = createSubMenu(3);
            PHReports.Controls.Add(maintable);
            Session["SelMenu"] = "Reports";
            Response.Redirect("Reports.aspx");
    }
    //protected void lnkbtnDownloads_Click(object sender, EventArgs e)
    //{
    //        Session["SelMenu"] = null;
    //        setArrowImg();
    //        clearPHAll();
    //        Image9.ImageUrl = "~/admin/img/source/arrow_down.gif";
    //        Table maintable = createSubMenu(8);
    //        PHDownloads.Controls.Add(maintable);
    //        Session["SelMenu"] = "Downloads";
    //        Response.Redirect("downloadOrders.aspx");
    //}
    //protected void lnkbtnStoreExtras_Click(object sender, EventArgs e)
    //{
    //        Session["SelMenu"] = null;
    //        setArrowImg();
    //        clearPHAll();
    //        Image10.ImageUrl = "~/admin/img/source/arrow_down.gif";
    //        Table maintable = createSubMenu(9);
    //        PHStoreExtras.Controls.Add(maintable);
    //        Session["SelMenu"] = "Vouchers";
    //}

    private void setArrowImg()
    {
        //Image1.ImageUrl = "~/Images/LeftMenu/arrow.gif";
        //Image2.ImageUrl = "~/Images/LeftMenu/arrow.gif";
        //Image3.ImageUrl = "~/Images/LeftMenu/arrow.gif";
        Image4.ImageUrl = "~/Images/LeftMenu/arrow.gif";
       // Image5.ImageUrl = "~/Images/LeftMenu/arrow.gif";
        Image6.ImageUrl = "~/Images/LeftMenu/arrow.gif";
        Image7.ImageUrl = "~/Images/LeftMenu/arrow.gif";
        Image8.ImageUrl = "~/Images/LeftMenu/arrow.gif";
        //Image9.ImageUrl = "~/Images/LeftMenu/arrow.gif";
        //Image10.ImageUrl = "~/Images/LeftMenu/arrow.gif";
    }
    private Table createSubMenu( int itemindex)
    {
        string str = string.Empty;
        Table maintable = new Table();
        maintable.Width = 173;
        maintable.BorderWidth = 0;
        maintable.CellPadding = 2;
        maintable.CellSpacing = 0;

        tr = new TableRow();
        foreach (string mnu in items[itemindex])
        {
            string[] arr = mnu.Split('|');
            str = str + "- <a href= " + Convert.ToString(arr[1]) + " class=\"noUnderlineL2\">" + arr[0] + "</a><br>";

        }
        tr.Width = 173;
        td = new TableCell();
        td.CssClass = "level2Box";
        td.Height = 16;
        td.Controls.Add(new LiteralControl(str));
        tr.Cells.Add(td);
        maintable.Rows.Add(tr);
        tr = new TableRow();
        td = new TableCell();
        td.Height = 4;
        //td.CssClass = "spacer";
        tr.Cells.Add(td);
        maintable.Rows.Add(tr);
        return maintable;
    }

    private void getpalceholder(string type)
    {
        Table maintable;
        switch (type)
        {
            //case "Store":
            //    setArrowImg();
            //    Image1.ImageUrl = "~/admin/img/source/arrow_down.gif";
            //    maintable = createSubMenu(0);
            //    PHStore.Controls.Add(maintable);
            //    Session["SelMenu"] = type;
            //    break;
            //case "Checkout":
            //    setArrowImg();
            //    Image2.ImageUrl = "~/admin/img/source/arrow_down.gif";
            //    maintable = createSubMenu(1);
            //    PHChkout.Controls.Add(maintable);
            //    Session["SelMenu"] = type;
            //    break;
            //case "Admin":
            //    setArrowImg();
            //    Image3.ImageUrl = "~/admin/img/source/arrow_down.gif";
            //    maintable = createSubMenu(2);
            //    PHAdmin.Controls.Add(maintable);
            //    Session["SelMenu"] = type; 
            //    break;
            case "Products":
                setArrowImg();
                Image4.ImageUrl = "~/Images/LeftMenu/arrow_down.gif";
                maintable = createSubMenu(0);
                PHProducts.Controls.Add(maintable);
                Session["SelMenu"] = type; break;
            //case "Categories":
            //    setArrowImg();
            //    Image5.ImageUrl = "~/admin/img/source/arrow_down.gif";
            //    maintable = createSubMenu(4);
            //    PHCategories.Controls.Add(maintable);
            //    Session["SelMenu"] = type;
            //    break;
            case "Orders":
                setArrowImg();
                Image6.ImageUrl = "~/Images/LeftMenu/arrow_down.gif";
                maintable = createSubMenu(1);
                PHOrders.Controls.Add(maintable);
                Session["SelMenu"] = type; 
                break;
            case "Customers":
                setArrowImg();
                Image7.ImageUrl = "~/Images/LeftMenu/arrow_down.gif";
                maintable = createSubMenu(2);
                PHCustomers.Controls.Add(maintable);
                Session["SelMenu"] = type;
                break;
            case "Reports":
                setArrowImg();
                Image8.ImageUrl = "~/Images/LeftMenu/arrow_down.gif";
                maintable = createSubMenu(3);
                PHReports.Controls.Add(maintable);
                Session["SelMenu"] = type; break;
            //case "Downloads":
            //    setArrowImg();
            //    Image9.ImageUrl = "~/admin/img/source/arrow_down.gif";
            //    maintable = createSubMenu(8);
            //    PHDownloads.Controls.Add(maintable);
            //    Session["SelMenu"] = type; break;
            //case "Vouchers":
            //    setArrowImg();
            //    Image10.ImageUrl = "~/admin/img/source/arrow_down.gif";
            //    maintable = createSubMenu(9);
            //    PHStoreExtras.Controls.Add(maintable);
            //    Session["SelMenu"] = type; 
            //    break;
            default:
                break;

        }
    }
        private void clearPHAll()
        {
            //PHDownloads.Controls.Clear();
            //PHAdmin.Controls.Clear();
            //PHCategories.Controls.Clear();
            //PHChkout.Controls.Clear();
            PHCustomers.Controls.Clear();
            PHOrders.Controls.Clear();
            PHProducts.Controls.Clear();
            PHReports.Controls.Clear();
            //PHStore.Controls.Clear();
            //PHStoreExtras.Controls.Clear();
        }

}
