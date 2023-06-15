using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_2023
{
    public partial class Plakjanje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                if (Session["card"] != null)
                {
                    ArrayList lista = (ArrayList)Session["card"];
                    var vk = 0;
                    foreach (ListItem item in lista)
                    {
                        vk += Convert.ToInt32(item.Value);
                    }

                    Label1.Text = "Вкупно цена: " + vk.ToString();


                    koshnichka.DataSource = lista;

                    koshnichka.DataTextField = "Text";
                    koshnichka.DataValueField = "Value";

                    koshnichka.DataBind();
                }
            }
        }
        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Katalog.aspx");
        }

        protected void kupi_Click(object sender, EventArgs e)
        {
            Session["card"] = null;
            koshnichka.Items.Clear();

            Label1.Text = "Вкупно цена: 0 ДЕН";
        }
    }
}