<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.RANKING>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Ranking</h2>

<p>
    <%: Html.ActionLink("Novo Participante", "Create") %>
</p>
<table class="table table-bordered table-striped table-hover">
    <tr>
        <th>
            Código
        </th>
        <th>
            Usário
        </th>
        <th>
            Rodada
        </th>
        <th>
            Pontuação
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.CODRAN) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.USUARIOS.NOMUSU) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.CODRODADA) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.PONTUACAO.DCRPONT) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.CODRAN }) %> |
            <%: Html.ActionLink("Details", "Details", new { id = item.CODRAN })%> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.CODRAN }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
