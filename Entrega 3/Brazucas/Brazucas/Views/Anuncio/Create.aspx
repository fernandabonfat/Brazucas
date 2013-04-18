<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.ANUNCIOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>ANUNCIOS</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODANUN) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CODANUN) %>
            <%: Html.ValidationMessageFor(model => model.CODANUN) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODUSU) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CODUSU) %>
            <%: Html.ValidationMessageFor(model => model.CODUSU) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODCAT) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CODCAT) %>
            <%: Html.ValidationMessageFor(model => model.CODCAT) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODCID) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CODCID) %>
            <%: Html.ValidationMessageFor(model => model.CODCID) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.TITULOANUN) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.TITULOANUN) %>
            <%: Html.ValidationMessageFor(model => model.TITULOANUN) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DCRANUN) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DCRANUN) %>
            <%: Html.ValidationMessageFor(model => model.DCRANUN) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DATPOSANUN) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DATPOSANUN) %>
            <%: Html.ValidationMessageFor(model => model.DATPOSANUN) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DATFIMANUN) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DATFIMANUN) %>
            <%: Html.ValidationMessageFor(model => model.DATFIMANUN) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
