<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Katalog.aspx.cs" Inherits="IT_2023.Katalog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">

        <div class="col-md-14 text-center">
            <p>Категории</p>
        </div>

    </div>

    <div class="row">

        <div class="col-md-8 text-center">
            <asp:LinkButton ID="struchna_link" runat="server" OnClick="struchna_link_Click">Стручна литература</asp:LinkButton>
            <br />
            <asp:LinkButton ID="bele_link" runat="server" OnClick="bele_link_Click">Белетристика</asp:LinkButton>
            <br />
            <asp:LinkButton ID="mag_link" runat="server" OnClick="mag_link_Click">Магазин</asp:LinkButton>
        </div>

    </div>

</asp:Content>
