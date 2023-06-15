<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Stranica.aspx.cs" Inherits="IT_2023.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row text-center">

            <div class="m-4">
                Внесете име на валута: <br />
                <asp:TextBox ID="imeValuta" runat="server"></asp:TextBox>
            </div>

            <div class="m-4">
                Внесете вредност на валута: <br />
                <asp:TextBox ID="vrednostValuta" runat="server"></asp:TextBox>
            </div>

            <div class="m-4">
                <asp:Button ID="dodadiValuta" runat="server" Text="Додади валута" OnClick="dodadiValuta_Click" />

                <asp:Button ID="brisiValuta" runat="server" Text="Бриши валута" OnClick="brisiValuta_Click" />
            </div>

            <div class="m-4">
                <asp:RadioButtonList ID="valuti" runat="server" OnSelectedIndexChanged="selectedIndex_Change" AutoPostBack="True"></asp:RadioButtonList>
            </div>

            <div class="m-4">
                Вкупно валути: <asp:Label ID="vkupnoValuti" runat="server" Text="0"></asp:Label>
            </div>

            <div class="m-4">
                Статус: <asp:Label ID="statusValuti" runat="server" Text=""></asp:Label>
            </div>

            <div class="m-4">
                Внесете вредност: <asp:TextBox ID="vnesenaVrednost" runat="server"></asp:TextBox>
            </div>

            <div class="m-4">
                Промена: <asp:Label ID="promenetaValuta" runat="server" Text=""></asp:Label>
            </div>
            

        </div>
    </div>
</asp:Content>
