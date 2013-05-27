<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.POSTOSVENDAS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Postos de Venda</h2>

<p>
    <%: Html.ActionLink("Novo Posto deVenda", "Create") %>
</p>
<table class="table table-bordered table-striped table-hover">
    <tr>
        <th>
            Código
        </th>
        <th>
            Endereço
        </th>
        <th>
            Cidade Sede
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.CODPOS) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ENDPOS) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.CIDADE_SEDE.NOMCID) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.CODPOS }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.CODPOS }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.CODPOS }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
