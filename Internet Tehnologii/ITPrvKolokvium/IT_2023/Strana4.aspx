<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Strana4.aspx.cs" Inherits="IT_2023.Strana4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="margin: 20px;">
                <div class="row">
                    <div class="col-md-3">
                    <%-- Validation --%>
                        <asp:ValidationSummary class="text-danger" ValidationGroup="validacija" ID="ValidationSummary1" runat="server" />
                </div>

                <div class="col-md-3">
                    <%-- Control --%>
                    Име на предметот:
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-9 text-left">
                    <%-- Validator --%>
                    <asp:RequiredFieldValidator ID="name_required" ValidationGroup="validacija" class="text-danger" runat="server" ErrorMessage="Внесете го името на предметот!" ControlToValidate="name" Display="None"></asp:RequiredFieldValidator>
                </div>

               <div class="col-md-3">
                    <%-- Control --%>
                    Добиена оцена:
                    <asp:TextBox ID="ocenka" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-9 text-left">
                    <%-- Validator --%>
                    <asp:RequiredFieldValidator ID="ocenka_required" ValidationGroup="validacija" class="text-danger" runat="server" ErrorMessage="Внесете ја оценката!" ControlToValidate="ocenka" Display="None"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" ValidationGroup="validacija" class="text-danger" runat="server" Display="None" ErrorMessage="Оценката треба да биде помеѓу 5 и 10" MinimumValue="5" MaximumValue="10" ControlToValidate="ocenka" Type="Integer"></asp:RangeValidator>
                </div>

                    <div class="col-md-3">
                    <%-- Control --%>
                    Датум на испитот:
                    <asp:TextBox ID="dateIspit" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-9 text-left">
                    <%-- Validator --%>
                    <asp:RequiredFieldValidator ID="dateIspit_required" class="text-danger" Display="None" runat="server" ErrorMessage="Внесете го датумот на полагање!" ControlToValidate="dateIspit" ValidationGroup="validacija"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" Display="None" runat="server" ErrorMessage="Неправилен внес на датум" ControlToValidate="dateIspit" ValueToCompare="01.01.2020" Operator="GreaterThan" ValidationGroup="validacija"></asp:CompareValidator>
                </div>
                </div>
 
                <div class="row" style="margin-left: 0px; margin-top: 10px;">
                    <%-- Submit Button --%>
                    <asp:Button ID="saveGrade" runat="server" Text="Save Grade" ValidationGroup="validacija" OnClick="saveGrade_Click" />
                    <asp:Label ID="grades" class="text-success" runat="server" Text=""></asp:Label>
            </div>
 
        </div>
</asp:Content>
