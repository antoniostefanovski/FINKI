<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Strana6.aspx.cs" Inherits="IT_2023.Strana6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class"row">

        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="group1" />
            <asp:ValidationSummary ID="ValidationSummary2" runat="server" ValidationGroup="group2" />
        </div>

        <div>
            Text 1:
            <asp:TextBox ID="text1" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="text1" ValidationGroup="group1"></asp:RequiredFieldValidator>
        </div>

        <div>
            <asp:Button ID="button_first" runat="server" Text="Group 1" OnClick="button_first_Click" ValidationGroup="group1" />
            <asp:Label ID="label1" runat="server" Text=""></asp:Label>
        </div>



        <div>
            Text 2:
            <asp:TextBox ID="text2" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="text2" ValidationGroup="group2"></asp:RequiredFieldValidator>
        </div>

        <div>
            <asp:Button ID="button_second" runat="server" Text="Group 2" OnClick="button_second_Click" ValidationGroup="group2" />
            <asp:Label ID="label2" runat="server" Text=""></asp:Label>
        </div>

    </div>

</asp:Content>
