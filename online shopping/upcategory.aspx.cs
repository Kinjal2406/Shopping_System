﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_shopping
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
            Response.Redirect("~/WelcomeAdmin.aspx");
        }
    }
}