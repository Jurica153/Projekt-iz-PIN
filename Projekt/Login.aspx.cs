using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekt
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "Jurica" && TextBox2.Text == "123456")
            {
                Session["IsLogged"] = "Logirani ste kao " + TextBox1.Text;
                Response.Redirect("TableDesign.aspx");
                Label1.Text = "Logirani ste kao " + TextBox1.Text;
            }   
        }
    }
}