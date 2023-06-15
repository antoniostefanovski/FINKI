using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_2023
{
    public partial class Strana3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void save_Click(object sender, EventArgs e)
        {
            submitted.Text = "Successful registration";
        }

        protected void submit_city_Click(object sender, EventArgs e)
        {
            labelChosen.Text = "You chose " + cities.SelectedValue.ToString();
        }
    }
}