<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.FASE_JOGOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>FASE_JOGOS</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODFASE) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CODFASE) %>
            <%: Html.ValidationMessageFor(model => model.CODFASE) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DCRFASE) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DCRFASE) %>
            <%: Html.ValidationMessageFor(model => model.DCRFASE) %>
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
