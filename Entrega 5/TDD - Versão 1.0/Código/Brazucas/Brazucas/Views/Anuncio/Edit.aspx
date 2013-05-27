<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.ANUNCIOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Editar</h2>
<br />
<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>ANUNCIOS</legend>

        <div class="campo">
            Categoria
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODCAT",string.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODCAT) %>
        </div>

        <div class="campo">
            Cidade
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODCID", string.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODCID) %>
        </div>

        <div class="campo">
            Título
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.TITULOANUN) %>
            <%: Html.ValidationMessageFor(model => model.TITULOANUN) %>
        </div>

        <div class="campo">
            Descrição
        </div>
        <div class="editor-field">
            <%: Html.TextAreaFor(model => model.DCRANUN) %>
            <%: Html.ValidationMessageFor(model => model.DCRANUN) %>
        </div>

        <div class="campo">
            Data de Postagem
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DATPOSANUN) %>
            <%: Html.ValidationMessageFor(model => model.DATPOSANUN) %>
        </div>

        <div class="campo">
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
    <%: Html.ActionLink("Retornar para Lista", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
