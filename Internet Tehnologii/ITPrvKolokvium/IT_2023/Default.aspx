<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IT_2023._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Internet Tehnologii</h1>
        </section>

        <div class="row">
            <div class="col-md-12 text-center">
                <p>Изберете град:</p>
                <asp:ListBox ID="listaGradovi" runat="server" SelectionMode="Multiple">
                    <asp:ListItem Value="0">Skopje</asp:ListItem>
                    <asp:ListItem Value="50">Veles</asp:ListItem>
                    <asp:ListItem Value="200">Ohrid</asp:ListItem>
                </asp:ListBox>
            </div>
            <div class="col-md-12 text-center">
                <asp:Button ID="PrikaziGrad" runat="server" Text="Prikazi grad" OnClick="PrikaziGrad_Click" />
            </div>
            <div class="col-md-12 text-center">
                Селектиран град <asp:Label ID="SelektiranGrad" runat="server" Text=""></asp:Label>
                <br />
                Оддалеченоста е <asp:Label ID="Oddalecenost" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </main>

</asp:Content>
