<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Plakjanje.aspx.cs" Inherits="IT_2023.Plakjanje" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-xs-12 text-center">
            <h1>Производи во кошничка</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 text-center">
            <asp:ListBox ID="koshnichka" runat="server"></asp:ListBox>
        </div>
    </div>
    <div class="row">
        <asp:Label ID="Label1" runat="server" Text="(none)"></asp:Label>
    </div>
    <div class="row">
        <div class="col-xs-2">
            <asp:LinkButton ID="back" runat="server" OnClick="back_Click" >< Каталог</asp:LinkButton>
        </div>
        <div class="col-xs-10 text-center">
            <asp:Button ID="kupi" runat="server" Text="Купи" OnClick="kupi_Click"/>
        </div>
    </div>

</asp:Content>
