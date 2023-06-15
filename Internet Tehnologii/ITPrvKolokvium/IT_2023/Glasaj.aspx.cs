using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_2023
{
    public partial class Glasaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ListItem predmet1 = new ListItem("Интернет Технологии", "Гоце Арменски");
                ListItem predmet2 = new ListItem("Интернет", "Магдалена Костоска");
                ListItem predmet3 = new ListItem("Дигитална Електроника", "Александар Стојменски");

                ListItem kredit1 = new ListItem("6", "6");
                ListItem kredit2 = new ListItem("6", "6");
                ListItem kredit3 = new ListItem("5.5", "5.5");

                lblPredmeti.Items.Add(predmet1);
                lblPredmeti.Items.Add(predmet2);
                lblPredmeti.Items.Add(predmet3);

                lblKrediti.Items.Add(kredit1);
                lblKrediti.Items.Add(kredit2);
                lblKrediti.Items.Add(kredit3);
            }
        }

        protected void lblPredmeti_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblProfesor.Text = lblPredmeti.SelectedValue;
            lblKrediti.SelectedIndex = lblPredmeti.SelectedIndex;
        }

        protected void lblKrediti_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblProfesor.Text = lblPredmeti.SelectedValue;
            lblPredmeti.SelectedIndex = lblKrediti.SelectedIndex;
        }

        protected void glasajte_Click(object sender, EventArgs e)
        {
            if( lblPredmeti.SelectedIndex == -1 )
            {
                undefined_glasanje.Text = "Одберете професор";
            } 
            else
            {
                Response.Redirect("UspeshnoGlasanje.aspx");
            }
        }

        protected void dodadi_predmet_Click(object sender, EventArgs e)
        {
            ListItem novPredmet = new ListItem(predmet_vnesuvanje.Text, predmet_vnesuvanje.Text);
            lblPredmeti.Items.Add(novPredmet);

            ListItem kreditiZaPredmetot = new ListItem(krediti_dodavanje.Text, krediti_dodavanje.Text);
            lblKrediti.Items.Add(kreditiZaPredmetot);
        }

        protected void izbrisi_predmet_Click(object sender, EventArgs e)
        {
            if(lblPredmeti.SelectedIndex == -1)
            {
                izbrisan_failed.Text = "Изберете предмет кој сакате да го избришете";
            }
            else
            {
                lblPredmeti.Items.RemoveAt(lblPredmeti.SelectedIndex);
                lblKrediti.Items.RemoveAt(lblKrediti.SelectedIndex);
                lblProfesor.Text = "";
            }
        }
    }
}