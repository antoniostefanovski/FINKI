<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Kolokviumska.aspx.cs" Inherits="IT_2023.Kolokviumska" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row">

        <div class="text-center">
            Корисничко име:
            <asp:TextBox ID="username" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" class="text-danger" runat="server" ErrorMessage="Внесете корисничко име" ControlToValidate="username"></asp:RequiredFieldValidator>
        </div>

        <div class="text-center">
            Лозинка:
            <asp:TextBox ID="password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" class="text-danger" runat="server" ErrorMessage="Внесете лозинка" ControlToValidate="password"></asp:RequiredFieldValidator>
        </div>

        <div class="text-center">
            Email:
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" class="text-danger" runat="server" ErrorMessage="Внесете email" ControlToValidate="email"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" class="text-danger" runat="server" ErrorMessage="Неправилен формат" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>

        <div class="text-center">
            <asp:Button ID="najava" runat="server" Text="Најави се" OnClick="najava_Click" />
        </div>


        <asp:Panel ID="panel" runat="server" Visible="False" class="text-center">

            <div>
                <asp:Image ID="cinemaLogo" runat="server" ImageUrl="~/cinema.png" />
            </div>

            <div>
                <asp:ListBox ID="genres" runat="server" OnSelectedIndexChanged="genres_SelectedIndexChanged" AutoPostBack="True"></asp:ListBox>
            </div>

        </asp:Panel>

        <asp:Panel ID="moviesInfo" runat="server" Visible="False" style="display: flex; justify-content: center;">
                <div>
                     <asp:CheckBoxList ID="moviesSelected" runat="server" style="margin-bottom: 10px;"></asp:CheckBoxList>
                 </div>
            <div id="textBoxes" runat="server">

            </div>
            </asp:Panel>

                <div class="text-center">
                    <asp:Button ID="buyMovies" runat="server" Text="Купи" Visible="False" OnClick="buyMovies_Click" />
                </div>

                <div class="text-center">
                    Вкупно:
                    <asp:Label ID="priceToPay" runat="server" Text=""></asp:Label>
                </div>

    </div>

</asp:Content>
