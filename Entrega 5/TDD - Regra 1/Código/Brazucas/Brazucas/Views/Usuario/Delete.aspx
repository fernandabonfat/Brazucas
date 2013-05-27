<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.USUARIOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>USUARIOS</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.CODUSU) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CODUSU) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.TIPO_USUARIOS.DCRTIPUSU) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.TIPO_USUARIOS.DCRTIPUSU) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.NOMUSU) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.NOMUSU) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.EMAILUSU) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.EMAILUSU) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.SEXUSU) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.SEXUSU) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.DATNASCUSU) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DATNASCUSU) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.LOGINUSU) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.LOGINUSU) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.SENHAUSU) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.SENHAUSU) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.CPFCNPJUSU) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CPFCNPJUSU) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.TELUSU) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.TELUSU) %>
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
