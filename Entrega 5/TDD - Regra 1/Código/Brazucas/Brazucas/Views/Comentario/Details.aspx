<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.COMENTARIOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

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
<p>
    <%: Html.ActionLink("Edit", "Edit", new { /* id=Model.PrimaryKey */ }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
