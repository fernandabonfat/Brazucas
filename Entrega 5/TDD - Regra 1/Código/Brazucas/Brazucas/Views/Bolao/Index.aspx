<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.BOLAO>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Bolão</h2>

<p>
    <%: Html.ActionLink("Novo Bolão", "Create") %>
</p>
<table class="table table-bordered table-striped table-hover">
    <tr>
        <th>
            Jogo
        </th>
        <th>
            Usuário
        </th>
        <th>
            Vencedor
        </th>
        <th>
            Data Aposta
        </th>
        <th>
            Placar A
        </th>
        <th>
            Placar B
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.JOGOS.CODJOGO) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.USUARIOS.NOMUSU) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.VENCJOGO) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.DATAPOSTA) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.PLACAR_A) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.PLACAR_B) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.CODUSU }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.CODUSU }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.CODUSU }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
