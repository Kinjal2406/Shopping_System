using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Net;

namespace online_shopping
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["Pref"];
            if (cookie != null)
            {
                string cat = cookie["Category"].ToString();
                DataTable dt = new DataTable();
                
                String strConnString = System.Configuration.ConfigurationManager.
                ConnectionStrings["connectionString"].ConnectionString;
              
                string strQuery = "select * from Item_DB where cc_id='" + cat + "'";

                SqlCommand cmd = new SqlCommand(strQuery);
                SqlConnection con = new SqlConnection(strConnString);
                SqlDataAdapter sda = new SqlDataAdapter();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                try
                {
                    con.Open();
                    sda.SelectCommand = cmd;
                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
                finally
                {
                    con.Close();
                    sda.Dispose();
                    con.Dispose();
                }


            }
            else
            {
                Response.Redirect("~/Welcomecus.aspx");
            }

           
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow selectedRow = GridView1.Rows[index];
                string id = GridView1.Rows[index].Cells[2].Text;

                Session["id"] = id;
                Response.Redirect("~/Placeorder.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}