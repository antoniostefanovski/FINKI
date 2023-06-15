<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Proizvodi2.aspx.cs" Inherits="IT_2023.Proizvodi2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">

        <div class="text-center">
            <asp:Label ID="naslov" runat="server" Text=""></asp:Label>
        </div>

        <div style="display: flex; justify-content: center;">

        <div class="text-center" style="margin-right: 10px;">
            Наслов
            <br />
            <asp:ListBox ID="categories" runat="server" OnSelectedIndexChanged="categories_SelectedIndexChanged" AutoPostBack="True"></asp:ListBox>
            
        </div>

        <div class="text-center">
            Цена
            <br />
            <asp:ListBox ID="price" runat="server" AutoPostBack="True"></asp:ListBox>
        </div>
        </div>

        <div class="text-center">
            <asp:Label ID="total_clicks" runat="server" Text="Total: 0"></asp:Label>
        </div>

        <div>
            <asp:LinkButton ID="katalog_back" runat="server" OnClick="katalog_back_Click">Каталог</asp:LinkButton>
        </div>

        <div class="text-center">
            <asp:Button ID="add" runat="server" Text="Додади" OnClick="add_Click" />
            <br />
            <asp:ListBox ID="shopping_cart" runat="server"></asp:ListBox>
            <br />
            <asp:Button ID="buy" runat="server" Text="Купи" OnClick="buy_Click" />
        </div>

    </div>


</asp:Content>
