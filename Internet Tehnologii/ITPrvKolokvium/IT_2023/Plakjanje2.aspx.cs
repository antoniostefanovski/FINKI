using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_2023
{
    public partial class Plakjanje2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["cart"] != null)
                {
                    ArrayList lista = (ArrayList)Session["cart"];
                    int total = 0;
                    foreach(ListItem item in lista)
                    {
                        total += Convert.ToInt32(item.Value);
                    }

                    totalPay.Text = "Total: " + total.ToString();

                    shopping_cart.DataSource = lista;

                    shopping_cart.DataTextField = "Text";

                    shopping_cart.DataValueField = "Value";

                    shopping_cart.DataBind();
                }
            }
        }

        protected void buy_Click(object sender, EventArgs e)
        {
            Session["cart"] = null;
            shopping_cart.Items.Clear();

            totalPay.Text = "Total: 0$";
        }

        protected void katalogBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Katalog2.aspx");
        }
    }
}