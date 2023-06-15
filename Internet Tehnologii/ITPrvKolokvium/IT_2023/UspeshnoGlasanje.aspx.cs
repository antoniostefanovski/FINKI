using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_2023
{
    public partial class UspeshnoGlasanje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // email_output
           if(!this.IsPostBack)
            {
                if (Session["email"] != null)
                {
                    email_output.Text = (string)Session["email"];
                }
            }
        }
    }
}