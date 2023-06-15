<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Plakjanje2.aspx.cs" Inherits="IT_2023.Plakjanje2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">

        <div class="text-center">
            <asp:Label ID="xx" runat="server" Text="Производи во кошничка"></asp:Label>
        </div>

        <div class="text-center">
            <asp:ListBox ID="shopping_cart" runat="server"></asp:ListBox>
        </div>

        <div class="text-center">
            <asp:Label ID="totalPay" runat="server" Text="Total: 0$"></asp:Label>
        </div>

        <div class="text-center">
            <asp:Button ID="buy" runat="server" Text="Купи" OnClick="buy_Click" />
        </div>

        <div>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="katalogBack_Click">Каталог</asp:LinkButton>
         </div>

    </div>

</asp:Content>
