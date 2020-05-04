using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;

namespace online_shopping
{
    public partial class WebForm2 : System.Web.UI.Page




    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if(!IsPostBack)
            {
                Calendar1.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id1 = TextBox1.Text;
            Database1Entities4 db = new Database1Entities4();
            User_DB u1 = db.User_DB.Where(us => (us.u_id == id1) ).FirstOrDefault<User_DB>();
            if (u1 == null)
            {
                int ag = System.DateTime.Now.Year - Calendar1.SelectedDate.Year;
               
                User_DB u = new User_DB();
                u.u_id = TextBox1.Text;
                u.u_password = TextBox2.Text;
                db.User_DB.Add(u);
                db.SaveChanges();
               
                Customer c = new Customer();
                c.c_id = TextBox1.Text;
                c.c_name = TextBox3.Text;
                c.c_dob = DateTime.Parse(TextBox4.Text);
                c.c_age = ag;
                c.c_mail = TextBox5.Text;
                c.c_address = TextBox6.Text;
                c.c_contact = TextBox7.Text;
                db.Customers.Add(c);
                db.SaveChanges();
                Label8.Text = "register sucessfully";
                // Response.Redirect("~/Login.aspx");
                Button2.Visible = true;
            }
            else
            {
                Label8.Text = "This ID is already taken.Try another one";
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if(Calendar1.Visible==true)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox4.Text = Calendar1.SelectedDate.ToShortDateString();
            //TextBox4.Text = Calendar1.SelectedDate.ToString();
            Calendar1.Visible = false;
            int ag = System.DateTime.Now.Year - Calendar1.SelectedDate.Year;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth || e.Day.Date > System.DateTime.Today)
            {
             e.Day.IsSelectable = false;
            }
        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string d = "01/01/" + DropDownList1.SelectedValue;
            Calendar1.VisibleDate = DateTime.Parse(d);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}