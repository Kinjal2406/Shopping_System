using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace online_shopping
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if(Session["aid"]!=null)
            {

            }
            else
            {
                Response.Redirect("~/Home.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    string filename = Path.GetFileName(FileUpload1.FileName);
                    FileUpload1.SaveAs(Server.MapPath("~/Images/") + filename);
                    TextBox10.Text = "Images/"+filename;
                    Label12.Text = "Upload status: File uploaded!";
                    
                }
                catch (Exception ex)
                {
                    
                    Label12.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Database1Entities4 db = new Database1Entities4();
            Item_DB i = db.Item_DB.Where(it1=>it1.I_id == TextBox1.Text).FirstOrDefault<Item_DB>();

            if (i == null)
            {

                Item_DB it = new Item_DB();
                it.I_id = TextBox1.Text;
                it.I_name = TextBox2.Text;
                it.I_description = TextBox3.Text;
                it.cc_id = TextBox8.Text;
                it.i_cost = Int32.Parse(TextBox4.Text);
                it.i_discount = Int32.Parse(TextBox5.Text);
                it.i_status = TextBox9.Text;
                it.i_quantity = Int32.Parse(TextBox6.Text);
                it.i_company = TextBox7.Text;
                it.i_imagepath = TextBox10.Text;
                db.Item_DB.Add(it);
                db.SaveChanges();

                Label13.Text = "Item inserted sucessfully";
                Button3.Enabled = true;
                Button4.Enabled = true;

            }
            else
            {
                Label13.Text = "Item ID is already taken for another Item take another one for this";
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox8.Text = DropDownList1.SelectedItem.Text;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WelcomeAdmin.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }
    }
}