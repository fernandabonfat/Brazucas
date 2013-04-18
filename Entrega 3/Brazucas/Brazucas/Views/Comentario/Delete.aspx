<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.COMENTARIOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>COMENTARIOS</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.CODCOM) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CODCOM) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.USUARIOS.NOMUSU) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.USUARIOS.NOMUSU) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.NOTICIAS.TITULONOT) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.NOTICIAS.TITULONOT) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.DCRCOM) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DCRCOM) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.DATCOM) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DATCOM) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.SITUACOM) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.SITUACOM) %>
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
