<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Anuncios.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.ANUNCIOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Anúncios
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Novo Anúncio</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>
    <br />
    <fieldset>
        <legend>ANUNCIOS</legend>

        <div class="editor-label">
            Categoria
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODCAT", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODCAT) %>
        </div>

        <div class="editor-label">
            Cidade
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODCID",String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODCID) %>
        </div>

        <div class="editor-label">
            Título
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.TITULOANUN) %>
            <%: Html.ValidationMessageFor(model => model.TITULOANUN) %>
        </div>

        <div class="editor-label">
            Descrição
        </div>
        <div class="editor-field">
            <%: Html.TextAreaFor(model => model.DCRANUN) %>
            <%: Html.ValidationMessageFor(model => model.DCRANUN) %>
        </div>

        <div class="editor-label">
            Data de Postagem
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DATPOSANUN) %>
            <%: Html.ValidationMessageFor(model => model.DATPOSANUN) %>
        </div>

        <div class="editor-label">
            Data de Termino
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DATFIMANUN) %>
            <%: Html.ValidationMessageFor(model => model.DATFIMANUN) %>
        </div>

        <p>
            <input type="submit" value="Confirmar" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Voltar", "Index", "Home") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
