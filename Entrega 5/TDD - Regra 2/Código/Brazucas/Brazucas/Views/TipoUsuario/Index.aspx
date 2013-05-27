<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.TIPO_USUARIOS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Tipo de Usuário</h2>

<p>
    <%: Html.ActionLink("Novo Tipo de Usuário", "Create") %>
</p>
<table class="table table-bordered table-striped table-hover">
    <tr>
        <th>
            Código
        </th>
        <th>
            Tipo de Usuário
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.CODTIPUSU) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.DCRTIPUSU) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.CODTIPUSU }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.CODTIPUSU }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.CODTIPUSU }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
