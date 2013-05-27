<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.JOGOS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Jogos</h2>

<p>
    <%: Html.ActionLink("Novo Jogo", "Create") %>
</p>
<table class="table table-bordered table-striped table-hover">
    <tr>
        <th>
            Código
        </th>
        <th>
            Fase
        </th>
        <th>
            Seleção A
        </th>
        <th>
            Seleção B
        </th>
        <th>
            Data do Jogo
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.CODJOGO) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.FASE_JOGOS.DCRFASE) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.SELECAO_A) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.SELECAO_B) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.DATJOGO) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.CODJOGO }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.CODJOGO }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.CODJOGO }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
