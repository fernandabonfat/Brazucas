<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.ESTADO_JOGOS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Estado Jogo</h2>

<p>
    <%: Html.ActionLink("Novo Estado", "Create") %>
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
            <%: Html.DisplayFor(modelItem => item.CODESTADO) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.DCRESTADO) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.CODESTADO }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.CODESTADO }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.CODESTADO }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
