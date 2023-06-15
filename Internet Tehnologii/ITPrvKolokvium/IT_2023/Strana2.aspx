<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Strana2.aspx.cs" Inherits="IT_2023.Strana2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <div class="row m-4">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/sl2.jpg" />
        </div>

        <div class="row m-4">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/sl2.jpg" />
        </div>

        <div class="row m-4">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        


    </div>


</asp:Content>
