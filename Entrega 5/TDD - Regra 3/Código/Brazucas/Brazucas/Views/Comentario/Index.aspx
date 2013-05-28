<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.COMENTARIOS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Comentários</h2>

<p>
    <%: Html.ActionLink("Novo Comentários", "Create") %>
</p>
<table class="table table-bordered table-striped table-hover">
    <tr>
        <th>
            Código
        </th>
        <th>
            Usuário
        </th>
        <th>
            Título
        </th>
        <th>
            Descrição
        </th>
        <th>
            Situação
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.CODCOM) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.USUARIOS.NOMUSU) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.NOTICIAS.TITULONOT) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.DCRCOM) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.SITUACOM) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.CODCOM }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.CODCOM }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.CODCOM }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
