<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Katalog2.aspx.cs" Inherits="IT_2023.Katalog2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>


        <asp:LinkButton ID="struchnaLiteratura_link" runat="server" OnClick="struchnaLiteratura_link_Click">Стручна литература</asp:LinkButton>

        <br />

        <asp:LinkButton ID="beletristika_link" runat="server" OnClick="beletristika_link_Click">Белетристика</asp:LinkButton>

        <br />

        <asp:LinkButton ID="magazin_link" runat="server" OnClick="magazin_link_Click">Магазин</asp:LinkButton>

    </div>


</asp:Content>
