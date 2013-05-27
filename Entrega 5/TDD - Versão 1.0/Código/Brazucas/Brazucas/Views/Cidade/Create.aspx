<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.CIDADE_SEDE>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>CIDADE_SEDE</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODCID) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CODCID) %>
            <%: Html.ValidationMessageFor(model => model.CODCID) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.NOMCID) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.NOMCID) %>
            <%: Html.ValidationMessageFor(model => model.NOMCID) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.HISTORIA) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.HISTORIA) %>
            <%: Html.ValidationMessageFor(model => model.HISTORIA) %>
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
