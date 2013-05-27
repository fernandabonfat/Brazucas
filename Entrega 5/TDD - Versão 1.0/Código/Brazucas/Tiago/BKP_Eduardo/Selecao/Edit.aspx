<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.SELECOES>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>SELECOES</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODSELE) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CODSELE) %>
            <%: Html.ValidationMessageFor(model => model.CODSELE) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.NOMSELE) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.NOMSELE) %>
            <%: Html.ValidationMessageFor(model => model.NOMSELE) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.NUMTITSELE) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.NUMTITSELE) %>
            <%: Html.ValidationMessageFor(model => model.NUMTITSELE) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.HISTORIA) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.HISTORIA) %>
            <%: Html.ValidationMessageFor(model => model.HISTORIA) %>
        </div>

        <p>
            <input type="submit" value="Save" />
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
