<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Strana5.aspx.cs" Inherits="IT_2023.Strana5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <div class="row">

           <div class="m-4">
               <%--- Controller ---%>
               <asp:TextBox ID="telephone" runat="server"></asp:TextBox>
           </div>

           <div class="m-4">
               <%--- Validator ---%>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter number!" ControlToValidate="telephone"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Incorrect number" ControlToValidate="telephone"
                   ValidationExpression="\+389 7[014567]-\d{3}-\d{3}"></asp:RegularExpressionValidator>
           </div>

           <div class="m-4">
               <%--- Submit ---%>
               <asp:Button ID="validate" runat="server" Text="Validate" OnClick="validate_Click" />
               <asp:Label ID="validSuccess" CssClass="text-success" runat="server" Text=""></asp:Label>
           </div>


       </div>
</asp:Content>
