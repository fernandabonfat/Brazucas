<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.NOTICIAS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>NOTICIAS</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.CODNOT) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CODNOT) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.USUARIOS.NOMUSU) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.USUARIOS.NOMUSU) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.CATEGORIAS.DCRCAT) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CATEGORIAS.DCRCAT) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.TITULONOT) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.TITULONOT) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.DCRNOT) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DCRNOT) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.DATPOSNOT) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DATPOSNOT) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.DATFIMNOT) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DATFIMNOT) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.SITUANOT) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.SITUANOT) %>
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
