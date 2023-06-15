using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_2023
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PrikaziGrad_Click(object sender, EventArgs e)
        {
            ListItemCollection items = listaGradovi.Items;

            foreach(ListItem item in listaGradovi.Items)
            {
                if(item.Selected)
                {
                    SelektiranGrad.Text += item.Text + "<br/>";
                    Oddalecenost.Text += item.Value + "km" + "<br/>";
                }
            }
            
            
        }
    }
}