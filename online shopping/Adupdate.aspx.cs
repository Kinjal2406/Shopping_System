using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_shopping
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["aid"] != null)
            {

            }
            else
            {
                Response.Redirect("~/Home.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Database1Entities4 db = new Database1Entities4();
            GridView1.Visible = true;
            //GridView2.Visible = false;
            Button3.Enabled = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WelcomeAdmin.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //GridView2.Visible = true;
            GridView1.Visible = false;
            Button3.Enabled = true;
        }
    }
}