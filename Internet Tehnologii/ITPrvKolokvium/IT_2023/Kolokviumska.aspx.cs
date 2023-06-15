using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_2023
{
    public partial class Kolokviumska : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                string[] genresArray =
                {
                    "Драма",
                    "Комедија",
                    "Акција"
                };

                genres.DataSource = genresArray;
                genres.DataBind();
            }
        }

        protected void najava_Click(object sender, EventArgs e)
        {
            panel.Visible = true;
        }

        protected void genres_SelectedIndexChanged(object sender, EventArgs e)
        {
            moviesInfo.Visible = true;
            buyMovies.Visible = true;
            string[] movies;
            string[] prices;

            moviesSelected.Items.Clear();

            if (genres.SelectedIndex == 0)
            {
                movies = new string[] {"Forrest Gump",
                    "Good will hunting",
                    "A beautiful mind" };
                prices = new string[] { "150",
                    "130",
                    "100" };  
            }
            else if(genres.SelectedIndex == 1)
            {
                movies = new string[] {"Keeping up with the Johneses",
                    "Masterminds",
                    "Ted2" };
                prices = new string[] { "120",
                    "170",
                    "180" };
            }
            else
            {
                movies = new string[] { "Batman vs Superman 3D",
                    "Deadpool 3D",
                    "The Accountant" };
                prices = new string[] { "350",
                    "300",
                    "200" };
            }

            for(int i=0; i<movies.Length; i++)
            {

                CheckBox checkbox = new CheckBox();
                checkbox.ID = "Checkbox" + i;
                checkbox.ValidationGroup = "group" + i;
                checkbox.Text = movies[i];
                checkbox.AutoPostBack = true;

                moviesSelected.Items.Add(new ListItem(movies[i], prices[i]));


                TextBox textbox = new TextBox();
                textbox.ID = "Textbox" + i;
                textbox.Style["display"] = "block";
                textbox.ValidationGroup = "group" + i;
                textbox.Style["margin-bottom"] = "5px";
                textBoxes.Controls.Add(textbox);
            }

           
        }

        protected void buyMovies_Click(object sender, EventArgs e)
        {
            int countPrices = 0;
            foreach(ListItem item in moviesSelected.Items)
            {
                if(item.Selected)
                countPrices += Convert.ToInt32(item.Value);
            }

            priceToPay.Text = countPrices.ToString() + " денари";
        }
    }
}