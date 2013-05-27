<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.CIDADE_SEDE>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>CIDADE_SEDE</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.CODCID) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CODCID) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.NOMCID) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.NOMCID) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.HISTORIA) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.HISTORIA) %>
    </div>
</fieldset>
<p>
    <%: Html.ActionLink("Edit", "Edit", new { /* id=Model.PrimaryKey */ }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
