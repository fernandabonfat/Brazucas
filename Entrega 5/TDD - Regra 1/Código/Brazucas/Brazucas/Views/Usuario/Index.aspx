<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.USUARIOS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Usuários</h2>

<p>
    <%: Html.ActionLink("Novo Usuário", "Create") %>
</p>
<table class="table table-bordered table-striped table-hover">
    <tr>
        <th>
            Código
        </th>
        <th>
            Tipo de Usuário
        </th>
        <th>
            Nome
        </th>
        <th>
            E-Mail
        </th>        
        <th>
            Login
        </th>        
        <th>
            CPF/CNPJ
        </th>
        <th>
            Telefone
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.CODUSU) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.TIPO_USUARIOS.DCRTIPUSU) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.NOMUSU) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.EMAILUSU) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.LOGINUSU) %>
        </td>        
        <td>
            <%: Html.DisplayFor(modelItem => item.CPFCNPJUSU) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.TELUSU) %>
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
