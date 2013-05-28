<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.FASE_JOGOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>FASE_JOGOS</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.CODFASE) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CODFASE) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.DCRFASE) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DCRFASE) %>
    </div>
</fieldset>
<p>
    <%: Html.ActionLink("Edit", "Edit", new { /* id=Model.PrimaryKey */ }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
