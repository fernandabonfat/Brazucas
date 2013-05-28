<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.BOLAO>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>BOLAO</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.RODADA.DCRTIPUSU) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.RODADA.DCRTIPUSU) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.JOGOS.CODJOGO) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.JOGOS.CODJOGO) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.USUARIOS.NOMUSU) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.USUARIOS.NOMUSU) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.VENCJOGO) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.VENCJOGO) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.DATAPOSTA) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DATAPOSTA) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.PLACAR_A) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.PLACAR_A) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.PLACAR_B) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.PLACAR_B) %>
    </div>
</fieldset>
<p>
    <%: Html.ActionLink("Edit", "Edit", new { /* id=Model.PrimaryKey */ }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
