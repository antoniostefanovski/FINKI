using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_2023
{
    public partial class Strana4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveGrade_Click(object sender, EventArgs e)
        {
            grades.Text = name.Text + " " + ocenka.Text + " " + dateIspit.Text;
        }
    }
}