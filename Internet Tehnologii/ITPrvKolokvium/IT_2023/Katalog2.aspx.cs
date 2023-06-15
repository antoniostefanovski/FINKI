using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_2023
{
    public partial class Katalog2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void struchnaLiteratura_link_Click(object sender, EventArgs e)
        {
            String url = "Proizvodi2.aspx?categoryId=0&catName=Стручна+Литература";
            Response.Redirect(url);
        }

        protected void beletristika_link_Click(object sender, EventArgs e)
        {
            String url = "Proizvodi2.aspx?categoryId=1&catName=Белетристика";
            Response.Redirect(url);
        }

        protected void magazin_link_Click(object sender, EventArgs e)
        {
            String url = "Proizvodi2.aspx?categoryId=2&catName=Магазин";
            Response.Redirect(url);
        }
    }
}