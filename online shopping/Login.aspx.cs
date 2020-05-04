using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
namespace online_shopping
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = TextBox1.Text;
            string password = TextBox2.Text;
            Database1Entities4 db = new Database1Entities4();
            User_DB u = db.User_DB.Where(us => (us.u_id == id) && (us.u_password == password)).FirstOrDefault<User_DB>();
            if(u==null)
            {
                Label3.Text = "ID or Password is Incorrect.Try Again!!";
            }
            else
            {
                Customer c = db.Customers.Where(cs => (cs.c_id == id)).FirstOrDefault<Customer>();
                if (c == null)
                {
                    Label3.Text = "You are not registered as customer";
                }
                else
                {
                    Session["cid"] = id;
                    Response.Redirect("~/WelcomeCus.aspx");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e) { 
            string id1 = TextBox1.Text;
            string password1 = TextBox2.Text;
            Database1Entities4 db = new Database1Entities4();
            User_DB u = db.User_DB.Where(us => (us.u_id == id1) && (us.u_password == password1)).FirstOrDefault<User_DB>();
            if (u == null)
            {
                Label3.Text = "ID or Password is Incorrect.Try Again!!";
            }
            else
            {
                Admin a = db.Admins.Where(ad => (ad.a_id == id1)).FirstOrDefault<Admin>();
                if(a==null)
                {
                    Label3.Text = "You Are not registerd as Admin";
                }
                else
                {
                    Session["aid"] = id1;
                    Response.Redirect("~/WelcomeAdmin.aspx");
                }
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string id = TextBox1.Text;
            string password = TextBox2.Text;
            Database1Entities4 db = new Database1Entities4();
            User_DB u = db.User_DB.Where(us => (us.u_id == id) && (us.u_password == password)).FirstOrDefault<User_DB>();
            if (u == null)
            {
                Label3.Text = "ID or Password is Incorrect.Try Again!!";
            }
            else
            {
                Session["cid"] = id;
                Response.Redirect("~/Feedback.aspx?Customer=" + id);
            }

        }
    }
}