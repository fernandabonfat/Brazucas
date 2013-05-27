<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.FASE_JOGOS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Fase Jogos</h2>

<p>
    <%: Html.ActionLink("Nova Fase", "Create") %>
</p>
<table class="table table-bordered table-striped table-hover">
    <tr>
        <th>
            Código
        </th>
        <th>
            Descrição
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.CODFASE) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.DCRFASE) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.CODFASE }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.CODFASE }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.CODFASE }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
