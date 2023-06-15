<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Proizvodi.aspx.cs" Inherits="IT_2023.Proizvodi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-xs-12 text-center">
            <asp:Label ID="naslov" runat="server" Text="(none)" Font-Size="XX-Large"></asp:Label>
        </div>
    </div>

     <div class="row">
        <div class="col-xs-offset-1 col-xs-8 text-center">
            <b>Наслов</b>
        </div>
        <div class="col-xs-2 text-center">
            <b>Цена</b>
        </div>
    </div>    
    <div class="row">
        <div class="col-xs-offset-1 col-xs-8">
            <asp:ListBox ID="naslovi" runat="server" Height="250px" Width="850px" AutoPostBack="True" OnSelectedIndexChanged="naslovi_SelectedIndexChanged" ></asp:ListBox>
        </div>
        <div class="col-xs-2">
            <asp:ListBox ID="ceni" runat="server" Height="250px" Width="100%"></asp:ListBox>
        </div>
    </div>


    <div class="row">
         <hr />
        <div class="col-xs-offset-1 col-xs-8">
            <asp:LinkButton ID="back" runat="server" OnClick="back_Click">< Каталог</asp:LinkButton>
            <br />
        </div>
         <div class="col-xs-2">
            Тотал:
            <asp:Label ID="total" runat="server" Text="0"></asp:Label>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-offset-1 col-xs-11">
            <asp:Button ID="dodadi" runat="server" Text="Додади" OnClick="dodadi_Click"/>
            <hr />
            <asp:ListBox ID="koshnichka" runat="server"></asp:ListBox>
            <hr />
            <asp:Button ID="kupi" runat="server" Text="Купи" OnClick="kupi_Click"/>
        </div>
    </div>

</asp:Content>
