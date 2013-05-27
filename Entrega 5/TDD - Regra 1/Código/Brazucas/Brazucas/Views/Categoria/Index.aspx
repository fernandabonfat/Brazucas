<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.CATEGORIAS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Categorias</h2>

<p>
    <%: Html.ActionLink("Nova Categoria", "Create") %>
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
            <%: Html.DisplayFor(modelItem => item.CODCAT) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.DCRCAT) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.CODCAT }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.CODCAT }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.CODCAT }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
