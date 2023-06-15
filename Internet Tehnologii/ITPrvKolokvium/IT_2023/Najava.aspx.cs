using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_2023
{
    public partial class Najava : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void najava_Click(object sender, EventArgs e)
        {
            string email_input = email.Text;
            if (Session["email"] == null)
            {
                Session["email"] = email_input;
            }
            Response.Redirect("Glasaj.aspx");
        }
    }
}