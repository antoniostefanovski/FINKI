using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_2023
{
    public partial class Strana6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_first_Click(object sender, EventArgs e)
        {
            label1.Text = "Success group 1";
        }

        protected void button_second_Click(object sender, EventArgs e)
        {
            label2.Text = "Success group 2";
        }
    }
}