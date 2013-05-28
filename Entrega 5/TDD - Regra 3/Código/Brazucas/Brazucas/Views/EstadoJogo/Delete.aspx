<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.ESTADO_JOGOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>ESTADO_JOGOS</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.CODESTADO) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CODESTADO) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.DCRESTADO) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DCRESTADO) %>
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
