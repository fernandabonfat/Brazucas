<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.JOGOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>JOGOS</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.CODJOGO) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CODJOGO) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.FASE_JOGOS.DCRFASE) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.FASE_JOGOS.DCRFASE) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ESTADO_JOGOS.DCRESTADO) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ESTADO_JOGOS.DCRESTADO) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.CIDADE_SEDE.NOMCID) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CIDADE_SEDE.NOMCID) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.SELECAO_A) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.SELECAO_A) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.SELECAO_B) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.SELECAO_B) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.DATJOGO) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DATJOGO) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.VENCJOGO) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.VENCJOGO) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.PLACAR_A) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.PLACAR_A) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.PLACAR_B) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.PLACAR_B) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
