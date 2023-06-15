<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Glasaj.aspx.cs" Inherits="IT_2023.Glasaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">

        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="group1" />
        </div>

        <div style="width: 300px; margin: auto;">
            <asp:Image ID="img" runat="server" ImageUrl="~/finki_logo.jpg" style="width: 300px; margin: auto;" />
        </div>


        <div>
            <asp:Label ID="lblProfesor" runat="server" Text=""></asp:Label>
        </div>

        <div>
            <asp:ListBox ID="lblPredmeti" runat="server" OnSelectedIndexChanged="lblPredmeti_SelectedIndexChanged" AutoPostBack="True"></asp:ListBox>

            <asp:ListBox ID="lblKrediti" runat="server" OnSelectedIndexChanged="lblKrediti_SelectedIndexChanged"></asp:ListBox>
        </div>

        <div>
            <asp:Button ID="glasajte" runat="server" Text="Гласајте" OnClick="glasajte_Click"/>
        </div>

        <div>
            <asp:Label ID="undefined_glasanje" runat="server" Text=""></asp:Label>
        </div>

        <hr />

        <div>
            Предмет:
            <asp:TextBox ID="predmet_vnesuvanje" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" class="text-danger" ErrorMessage="Не внесовте предмет" ControlToValidate="predmet_vnesuvanje"  ValidationGroup="group1"></asp:RequiredFieldValidator>
        </div>

        <div>
            Кредити:
            <asp:TextBox ID="krediti_dodavanje" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  class="text-danger" ErrorMessage="Не внесовте кредити" ControlToValidate="krediti_dodavanje"  ValidationGroup="group1"></asp:RequiredFieldValidator>
        </div>

        <div>
            <asp:Button ID="dodadi_predmet" runat="server" Text="Додади" OnClick="dodadi_predmet_Click" ValidationGroup="group1"/>
        </div>

        <div>
            <asp:Button ID="izbrisi_predmet" runat="server" Text="Избриши" OnClick="izbrisi_predmet_Click" />
        </div>

        <div>
            <asp:Label ID="izbrisan_failed" runat="server" Text=""></asp:Label>
        </div>

       

    </div>


</asp:Content>
