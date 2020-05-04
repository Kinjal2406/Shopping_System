using System;
using System.Net;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_shopping
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cid"] != null)
            {
                string cid = Session["cid"].ToString();
                Database1Entities4 db = new Database1Entities4();
                Customer cs = db.Customers.Where(c => c.c_id == cid).FirstOrDefault<Customer>();
                if (cs != null)
                {
                    Label1.Text = "Welcome: " + cs.c_name;
                }
                else
                {
                    Response.Redirect("~/Home.aspx");
                }
            }
            else
            {
                Response.Redirect("~/Home.aspx");
            }
           // Label2.Text = Session["cid"].ToString();
        }
        
        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                HttpCookie cookie = new HttpCookie("Pref");
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow selectedRow = GridView2.Rows[index];
                string ccid = GridView2.Rows[index].Cells[1].Text;

                cookie["Category"] = ccid;
                Response.Cookies.Add(cookie);
                Response.Redirect("~/demo.aspx");
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}