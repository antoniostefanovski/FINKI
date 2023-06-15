using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_2023
{
    public partial class Proizvodi2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["cart"] != null)
                {
                    ArrayList lista = (ArrayList)Session["cart"];


                    shopping_cart.DataSource = lista;

                    shopping_cart.DataTextField = "Text";
                    shopping_cart.DataValueField = "Value";

                    shopping_cart.DataBind();
                }
                // База на податоци
                string[] sl = {
                    "Modern Operating Systems by Andrew S. Tanenbaum",
                    "Advanced Programming in the UNIX Environment by W. Richard Stevens",
                    "The Mythical Man-month by Frederick Phillips Brooks",
                    "Introduction to the Theory of Computation by Michael Sipser",
                    "Thinking in Systems: A Primer by Donella H. Meadows"
                };

                string[] sl_c = {
                    "45", "60", "20", "55", "30"
                };

                string[] be = {
                    "Origin by Dan Brown",
                    "The Hobbit by J. R. R. Tolkien",
                    "Harry Potter and the Philosopher's Stone by J. K. Rowling",
                    "Sherlock Holmes Series by Arthur Conan Doyle",
                    "Hercule Poirot Mysteries Series by Agatha Christie"
                };

                string[] be_c = {
                    "10", "9", "9", "50", "40"
                };

                string[] mg = {
                    "WIRED",
                    "PC Magazine",
                    "MIT Technology Review",
                    "Linux Magazine",
                    "Fast Company"
                };

                string[] mg_c = {
                    "2", "3", "1", "3", "2"
                };

                var chosenName = Request.QueryString["catName"];
                var chosenId = Convert.ToInt32(Request.QueryString["categoryId"]);

                naslov.Text = chosenName;

                switch(chosenId)
                {
                    case 0:
                        categories.DataSource = sl;
                        price.DataSource = sl_c;
                        break;
                    case 1:
                        categories.DataSource = be;
                        price.DataSource = be_c;
                        break;
                    case 2:
                        categories.DataSource = mg;
                        price.DataSource = mg_c;
                        break;

                }

                categories.DataBind();
                price.DataBind();
            }
        }

        protected void categories_SelectedIndexChanged(object sender, EventArgs e)
        {
            price.SelectedIndex = categories.SelectedIndex;

            if (ViewState["clicks"] == null)
            {
                ViewState["clicks"] = 1;
            }
            else
            {
                ViewState["clicks"] = Convert.ToInt32(ViewState["clicks"]) + 1;
            }
            total_clicks.Text = "Total: " + ((int)ViewState["clicks"]).ToString();
        }

        protected void add_Click(object sender, EventArgs e)
        {
            ArrayList list;
            if (Session["cart"] == null)
            {
               list = new ArrayList();
            }
            else
            {
                list = (ArrayList)Session["cart"];
            }

            list.Add(new ListItem(categories.SelectedItem.Text, price.SelectedItem.Text));

            shopping_cart.DataSource = list;

            shopping_cart.DataTextField = "Text";
            shopping_cart.DataValueField = "Value";

            shopping_cart.DataBind();

            Session["cart"] = list;
        }

        protected void buy_Click(object sender, EventArgs e)
        {
            Response.Redirect("Plakjanje2.aspx");
        }

        protected void katalog_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Katalog2.aspx");
        }
    }
}