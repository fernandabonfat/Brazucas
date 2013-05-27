<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.SELECOES>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>SELECOES</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.CODSELE) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CODSELE) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.NOMSELE) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.NOMSELE) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.NUMTITSELE) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.NUMTITSELE) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.HISTORIA) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.HISTORIA) %>
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
