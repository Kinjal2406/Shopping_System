using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace online_shopping
{
    public partial class WebForm12 : System.Web.UI.Page
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
            string catid = TextBox1.Text;
            Database1Entities4 db = new Database1Entities4();
            Category cat = db.Categories.Where(c => (c.cc_id == catid)).FirstOrDefault<Category>();

            if(cat==null)
            {
                //Label4.Text = "Id can be used";
                Category category = new Category();
                category.cc_id = TextBox1.Text;
                category.cc_name = TextBox2.Text;
                category.cc_description = TextBox3.Text;
                db.Categories.Add(category);
                db.SaveChanges();
                Label4.Text = "category inserted sucessfully";
            }
            else
            {
                Label4.Text = "ID is already taken for another category.Try another one";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WelcomeAdmin.aspx");
        }
    }
}