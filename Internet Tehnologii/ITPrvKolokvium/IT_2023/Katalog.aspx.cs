using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_2023
{
    public partial class Katalog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void struchna_link_Click(object sender, EventArgs e)
        {
            String url = "Proizvodi.aspx?catId=0&name=Стручна+Литература";
            Response.Redirect(url);
        }

        protected void bele_link_Click(object sender, EventArgs e)
        {
            String url = "Proizvodi.aspx?catId=1&name=Белетристика";
            Response.Redirect(url);
        }

        protected void mag_link_Click(object sender, EventArgs e)
        {
            String url = "Proizvodi.aspx?catId=2&name=Магазини";
            Response.Redirect(url);
        }
    }
}