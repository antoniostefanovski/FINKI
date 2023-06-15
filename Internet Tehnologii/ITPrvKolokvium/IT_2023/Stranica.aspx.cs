using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_2023
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                List<ListItem> list_items = new List<ListItem>();
                ListItem item1 = new ListItem("Evro", "61");
                ListItem item2 = new ListItem("Dolar", "55");


                list_items.Add(item1);
                list_items.Add(item2);
                valuti.DataSource = list_items;
                valuti.DataBind();
            }
        }

        protected void dodadiValuta_Click(object sender, EventArgs e)
        {
            ListItem item = new ListItem(imeValuta.Text, vrednostValuta.Text);

            valuti.Items.Add(item);

            imeValuta.Text = "";
            vrednostValuta.Text = "";

            vkupnoValuti.Text = valuti.Items.Count.ToString();
        }

        protected void brisiValuta_Click(object sender, EventArgs e)
        {
            if(valuti.SelectedIndex != -1)
            {
                valuti.Items.Remove(valuti.SelectedItem);
                statusValuti.Text = "";
                vkupnoValuti.Text = valuti.Items.Count.ToString();
            }
            else
            {
                statusValuti.Text = "Не селектиравте ништо";
            }
        }

        protected void selectedIndex_Change(object sender, EventArgs e)
        {
            int valueOfCurrency = Convert.ToInt32(valuti.SelectedValue);

            promenetaValuta.Text = Convert.ToString(Convert.ToInt32(vnesenaVrednost.Text) * valueOfCurrency);
        }
    }
}