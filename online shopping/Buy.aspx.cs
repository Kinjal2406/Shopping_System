using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
using iTextSharp;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;
using System.Net;


namespace online_shopping
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            Button2.Enabled = false;
            if(Session["id"]!=null)
            {

            }
            else
            {
                Response.Redirect("~/demo.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string iname = Session["id"].ToString();
            Database1Entities4 db = new Database1Entities4();
            Item_DB it = db.Item_DB.Where(i => i.I_name == iname).FirstOrDefault<Item_DB>();
            if (it != null)
            {
                Session["iid"] = it.I_id;
                Session["ccid"] = it.cc_id;

                float finalcost;

                float  dcost = (float)it.i_cost - (float)((it.i_cost) * (it.i_discount))/(100);
                finalcost = (float)(Int32.Parse(TextBox1.Text)) + dcost;
                int exd = Int32.Parse(TextBox1.Text) / 30;
                Label3.Text ="Your final amount after discount is : " + finalcost.ToString();
                Session["fcost"] = finalcost.ToString();
                DateTime t =   System.DateTime.Today;
                 DateTime nt = t.AddDays(exd+1);
                Session["ddate"] = nt.ToShortDateString();
           
                Label4.Text ="Estimated Date of delivery: " + nt.ToShortDateString();
                Button2.Enabled = true;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        { 
            Database1Entities4 db = new Database1Entities4();

            string date = Session["ddate"].ToString();
            string iid = Session["iid"].ToString();

            order_details od = new order_details();
            od.i_id = Session["iid"].ToString();
            od.cc_id = Session["ccid"].ToString();
            od.c_id = Session["cid"].ToString();
            od.o_status = "In Process";
            od.o_date = Session["ddate"].ToString();
            od.o_cost = Session["fcost"].ToString();
            db.order_details.Add(od);
            db.SaveChanges();

           // Database1Entities4 db1 = new Database1Entities4();
            Item_DB it = db.Item_DB.Where(i => i.I_id == iid).FirstOrDefault<Item_DB>();
            int iq = it.i_quantity;
            int niq = iq - 1;
            it.i_quantity = niq;

            db.SaveChanges();
            //Label5.Text = iq.ToString();
            //Label6.Text = niq.ToString();

            Button3.Visible = true;
           Label5.Text = "Your order place successfully";
           Label6.Text = "your order id is:" + od.o_id.ToString();
            Button1.Enabled = false;
            Button4.Visible = true;

           
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Welcomecus.aspx");
        }
    }
}