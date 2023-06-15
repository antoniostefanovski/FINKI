<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="IT_2023.Najava" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">

        <div class="m-4">
               <%--- Controller ---%>
                Име
               <asp:TextBox ID="ime" runat="server"></asp:TextBox>
           </div>

           <div class="m-4">
               <%--- Validator ---%>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" class="text-danger" runat="server" ErrorMessage="Внесете име" ControlToValidate="ime"></asp:RequiredFieldValidator>
           </div>

         <div class="m-4">
               <%--- Controller ---%>
                Лозинка
               <asp:TextBox ID="lozinka" runat="server"></asp:TextBox>
           </div>

           <div class="m-4">
               <%--- Validator ---%>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" class="text-danger" runat="server" ErrorMessage="Внесете лозинка" ControlToValidate="lozinka"></asp:RequiredFieldValidator>
           </div>

            <div class="m-4">
               <%--- Controller ---%>
                е-адреса
               <asp:TextBox ID="email" runat="server"></asp:TextBox>
           </div>

           <div class="m-4">
               <%--- Validator ---%>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" class="text-danger" runat="server" ErrorMessage="Внесете емаил" ControlToValidate="email"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" class="text-danger" runat="server" ErrorMessage="Неправилен внес" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
           </div>

           <div class="m-4">
               <%--- Submit ---%>
               <asp:Button ID="najava" runat="server" Text="Најавете се" OnClick="najava_Click" />
           </div>
    </div>


</asp:Content>
