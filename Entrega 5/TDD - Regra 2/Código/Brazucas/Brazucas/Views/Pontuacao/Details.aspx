<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.PONTUACAO>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>PONTUACAO</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.CODPONT) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CODPONT) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.DCRPONT) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DCRPONT) %>
    </div>
</fieldset>
<p>
    <%: Html.ActionLink("Edit", "Edit", new { /* id=Model.PrimaryKey */ }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
