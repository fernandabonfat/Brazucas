<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.RANKING>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>RANKING</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.CODRAN) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CODRAN) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.USUARIOS.NOMUSU) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.USUARIOS.NOMUSU) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.RODADA.DCRTIPUSU) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.RODADA.DCRTIPUSU) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.PONTUACAO.DCRPONT) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.PONTUACAO.DCRPONT) %>
    </div>
</fieldset>
<p>
    <%: Html.ActionLink("Edit", "Edit", new { /* id=Model.PrimaryKey */ }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
