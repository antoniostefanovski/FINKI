<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Strana7.aspx.cs" Inherits="IT_2023.Strana7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">

        <div class="col-5">
            <div class="m-4">
            <p>Изберете боја за позадина</p>
            <asp:DropDownList ID="boja" runat="server"></asp:DropDownList>
        </div>

        <div class="m-4">
            <p>Изберете фонт за позадина</p>
            <asp:DropDownList ID="font" runat="server"></asp:DropDownList>
        </div>

        <div class="m-4">
           <p>Изберете боја на фонт</p>
            <asp:DropDownList ID="bojaFont" runat="server"></asp:DropDownList>
        </div>

        <div class="m-4">
            <p>Внесете големина на фонт</p>
            <asp:TextBox ID="golemina" runat="server"></asp:TextBox>pt
        </div>

        <div class="m-4">
            <p>Тип на рамка</p>
            <asp:RadioButtonList ID="ramka" runat="server"></asp:RadioButtonList>
        </div>

         <div class="m-4">
            <p>Додади слика</p>
            <asp:CheckBox ID="dodadiSlika" runat="server" />
        </div>

         <div class="m-4">
            <p>Внесете ја пораката за честитката</p>
            <asp:TextBox ID="poraka" runat="server" TextMode="MultiLine"></asp:TextBox>
        </div>

        <div class="m-4">
            <asp:Button ID="kreiraj" runat="server" Text="Креирај" OnClick="kreiraj_Click" />
        </div>
        </div>

        <div class="col-5">
            
            <asp:Panel ID="cestitkaPanel" runat="server">
                <asp:Label ID="porakata" runat="server" Text=""></asp:Label>
                <asp:Image ID="img" runat="server" ImageUrl="~/sl2.jpg" Visible="False" />
            </asp:Panel>
        </div>
        

    </div>

</asp:Content>
