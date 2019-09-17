using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using User;
using DAL;
using BAL;

namespace WebApplication2
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            Signup_Data ob = new Signup_Data();
            ob.Id = TextBox5.Text;
            ob.Firstname = TextBox4.Text;
            ob.Lastname = TextBox3.Text;
            ob.Email = TextBox1.Text;
            ob.Password = TextBox2.Text;
            BAL.BAL sba1 = new BAL.BAL();
            int result = sba1.AddBALRecord(ob);
            if (result > 0)
            {
                TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text  = "";
                Label1.Text = "Record Added Successfully";
            }
            else
            {
                Label1.Text = "Try Again";
            }
        }
    }
}