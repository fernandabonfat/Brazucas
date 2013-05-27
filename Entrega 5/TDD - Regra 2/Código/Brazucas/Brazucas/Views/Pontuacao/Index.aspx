<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.PONTUACAO>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Pontuação</h2>

<p>
    <%: Html.ActionLink("Nova Pontuação", "Create") %>
</p>
<table  class="table table-bordered table-striped table-hover">
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
            <%: Html.DisplayFor(modelItem => item.CODPONT) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.DCRPONT) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.CODPONT }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.CODPONT }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.CODPONT }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
