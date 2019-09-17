using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication2
{
    public partial class SecurityQues : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source=PC429502;initial catalog = question_paper_generation;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("select * from QPS_Recovery", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                //  DataTable dt = new DataTable();
                DataTable dt = new DataTable();
                sda.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "Security_Question";
                DropDownList1.DataValueField = "Security_Id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0,new ListItem {Text="--select--",Value=""});

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignUp.aspx");
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SecurityQues2.aspx");
        }

       
    }
}