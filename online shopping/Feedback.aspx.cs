using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace online_shopping
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            string cid = Request.QueryString["Customer"];
            Database1Entities4 db = new Database1Entities4();
            Customer cs = db.Customers.Where(c => c.c_id == cid).FirstOrDefault<Customer>();
            if (cs != null)
            {
                Label2.Text = "Welcome " + cs.c_name;
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cid = Request.QueryString["Customer"];
            Database1Entities4 db = new Database1Entities4();
            int oid = Int32.Parse(TextBox1.Text);
            order_details od = db.order_details.Where(o => (o.o_id == oid) && (o.c_id==cid)).FirstOrDefault<order_details>();
            if (od == null)
            {
                Label1.Text = "Can't find any order.Try Again!!";
            }
            else
            {
                Feedback_DB fb = new Feedback_DB();
                fb.c_id = od.c_id;
                fb.i_id = od.i_id;
                fb.feedback = TextBox2.Text;
                db.Feedback_DB.Add(fb);
                db.SaveChanges();

                Label1.Text = od.c_id + " Your feedback send sucessfully";
                Button2.Enabled = true;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }

}

