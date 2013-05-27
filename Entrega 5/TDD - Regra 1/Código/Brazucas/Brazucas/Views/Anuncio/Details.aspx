<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.ANUNCIOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Detalhes</h2>
<br />
<fieldset>
    <legend>ANUNCIOS</legend>

    <div class="campo">
        Categoria
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CODCAT) %>
    </div>

    <div class="campo">
        Cidade
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CODCID) %>
    </div>

    <div class="campo">
        Título
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.TITULOANUN) %>
    </div>

    <div class="campo">
        Descrição
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DCRANUN) %>
    </div>

    <div class="campo">
        Data de Postagem
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DATPOSANUN) %>
    </div>

    <div class="campo">
        Data de Termino
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DATFIMANUN) %>
    </div>
</fieldset>
<p>
    <%: Html.ActionLink("Editar", "Edit", new { id=Model.CODANUN }) %> |
    <%: Html.ActionLink("Retornar para Lista", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
