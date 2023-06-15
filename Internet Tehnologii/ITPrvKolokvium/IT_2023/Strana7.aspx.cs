using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_2023
{
    public partial class Strana7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {

                boja.Items.Add(new ListItem("Green"));
                boja.Items.Add(new ListItem("Blue"));
                boja.Items.Add(new ListItem("Red"));

                font.Items.Add(new ListItem("Times New Roman"));
                font.Items.Add(new ListItem("Arial"));

                bojaFont.Items.Add(new ListItem("Yellow"));
                bojaFont.Items.Add(new ListItem("Purple"));
                bojaFont.Items.Add(new ListItem("Red"));

                ramka.Items.Add(new ListItem(BorderStyle.None.ToString(), ((int)BorderStyle.None).ToString()));
                ramka.Items.Add(new ListItem(BorderStyle.Solid.ToString(), ((int)BorderStyle.Solid).ToString()));

            }

        }

        protected void kreiraj_Click(object sender, EventArgs e)
        {
            porakata.Text = poraka.Text;
            porakata.Font.Name = font.SelectedItem.Text;
            porakata.ForeColor = Color.FromName(bojaFont.SelectedItem.Text);
            int size;
            var success = Int32.TryParse(golemina.Text, out size);
               if(success)
                {
                    porakata.Font.Size = size;
                }

            cestitkaPanel.BackColor = Color.FromName(boja.SelectedItem.Text);

            int vrednost = Convert.ToInt32(ramka.SelectedValue);

            cestitkaPanel.BorderStyle = (BorderStyle)vrednost;

            if(dodadiSlika.Checked)
            {
                img.Visible = true;
            }
        }
    }
}