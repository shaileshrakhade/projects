using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Auth
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string DataContext = ConfigurationManager.ConnectionStrings["DataContext"].ConnectionString;
                using (MySqlConnection con = new MySqlConnection(DataContext))
                {
                    using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM user"))
                    {
                        using (MySqlDataAdapter sda = new MySqlDataAdapter())
                        {
                            cmd.Connection = con;
                            sda.SelectCommand = cmd;
                            using (DataTable dt = new DataTable())
                            {
                                sda.Fill(dt);
                                //GridView1.DataSource = dt;
                                //GridView1.DataBind();
                            }
                        }
                    }
                }
            }
            //    MySqlConnection con = new MySqlConnection("DataContext");
            //con.Open();
            //MySqlCommand cmd = new MySqlCommand("select * from user", con);
            //MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //adp.Fill(ds);
            //GridView1.DataSource = ds;
            //GridView1.DataBind();
            //cmd.Dispose();
            //con.Close();
        }
    }
}