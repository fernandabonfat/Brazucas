<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.NOTICIAS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>NOTICIAS</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODNOT) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CODNOT) %>
            <%: Html.ValidationMessageFor(model => model.CODNOT) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODUSU, "USUARIOS") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODUSU", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODUSU) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODCAT, "CATEGORIAS") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODCAT", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODCAT) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.TITULONOT) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.TITULONOT) %>
            <%: Html.ValidationMessageFor(model => model.TITULONOT) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DCRNOT) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DCRNOT) %>
            <%: Html.ValidationMessageFor(model => model.DCRNOT) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DATPOSNOT) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DATPOSNOT) %>
            <%: Html.ValidationMessageFor(model => model.DATPOSNOT) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DATFIMNOT) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DATFIMNOT) %>
            <%: Html.ValidationMessageFor(model => model.DATFIMNOT) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.SITUANOT) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.SITUANOT) %>
            <%: Html.ValidationMessageFor(model => model.SITUANOT) %>
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
