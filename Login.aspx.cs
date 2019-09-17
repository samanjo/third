using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Convert.ToString(DropDownList1.SelectedValue) == "Admin")
            {
                Response.Redirect("~/AdminSignUp.aspx");
            }
            else if (Convert.ToString(DropDownList1.SelectedValue) == "User")
            {
                Response.Redirect("~/SignUp.aspx");
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Popup", "successalert();", true);
        }
    }
}