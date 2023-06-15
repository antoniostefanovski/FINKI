<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Strana3.aspx.cs" Inherits="IT_2023.Strana3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="margin: 20px;">
        <div class="row">
            <div class="col-md-3">
                 <%-- Control --%>
                Username:
                <asp:TextBox ID="username" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-9 text-left">
                <%-- Validator --%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" class="text-danger" ErrorMessage="Please enter your username" ControlToValidate="username"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-3">
                 <%-- Control --%>
                Password:
                <asp:TextBox ID="password" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-9 text-left">
                <%-- Validator --%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" class="text-danger" ErrorMessage="Please enter your password" ControlToValidate="password"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-3">
                 <%-- Control --%>
                Confirm password:
                <asp:TextBox ID="confirm_password" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-9 text-left">
                <%-- Validator --%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" class="text-danger" ErrorMessage="Confirm your password!" ControlToValidate="confirm_password"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" class="text-danger" runat="server" ErrorMessage="Password doesn't match!" ControlToCompare="password" ControlToValidate="confirm_password"></asp:CompareValidator>
            </div>

            <div class="row" style="margin-left: 0px; margin-top: 10px;">
                <%-- Submit Button --%>
                <asp:Button ID="save" runat="server" Text="Register" OnClick="save_Click" />

                <asp:Label ID="submitted" runat="server" Text=""></asp:Label>
            </div>

            <div class="col-md-9 text-left">
                <%-- Controller --%>
                <asp:DropDownList ID="cities" runat="server">
                    <asp:ListItem>(град)</asp:ListItem>
                    <asp:ListItem>Скопје</asp:ListItem>
                    <asp:ListItem>Битола</asp:ListItem>
                    <asp:ListItem>Велес</asp:ListItem>
                    <asp:ListItem>Охрид</asp:ListItem>
                </asp:DropDownList>
            </div>


            <div class="col-md-9 text-left">
                <%-- Validator --%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" class="text-danger" runat="server" ErrorMessage="Please select a city!" InitialValue="(град)" ControlToValidate="cities"></asp:RequiredFieldValidator>
            </div>

            <div class="row" style="margin-left: 0px; margin-top: 10px;">
                <%-- Submit Button --%>
                <asp:Button ID="submit_city" runat="server" Text="Choose" OnClick="submit_city_Click" />

                <asp:Label ID="labelChosen" runat="server" Text=""></asp:Label>
            </div>

            </div>
 
            


 
    </div>


</asp:Content>
