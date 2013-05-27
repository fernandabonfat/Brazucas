<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Anuncios.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.POSTOSVENDAS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Ingressos
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2><%: Html.DisplayFor(model => model.CIDADE_SEDE.NOMCID) %></h2>
    <br />
<fieldset>
    <legend>POSTOSVENDAS</legend>
    <div class="display-label">
        Endereço do Posto de Venda
    </div>
    <br />
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ENDPOS) %>
    </div>
    <br />
    <img src="../../Images/ingressos.jpg" />
</fieldset>
<p>
    <%: Html.ActionLink("Voltar", "PostosDeVenda","PostoVenda") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
