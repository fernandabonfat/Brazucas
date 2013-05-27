<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Anuncios.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.POSTOSVENDAS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Ingressos
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Endereços dos Postos de Vendas dos Ingressos</h2>
    <br />
<table class="table table-bordered table-striped table-hover">
    <tr>
        <th>
            Endereços
        </th>
        <th>
            Cidade do Posto
        </th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.ActionLink("Abrir", "Details", new { id=item.CODPOS }) %> <%: Html.DisplayFor(modelItem => item.ENDPOS) %>
        </td>
        <td>
             <%: Html.DisplayFor(modelItem => item.CIDADE_SEDE.NOMCID) %>
        </td>
    </tr>
<% } %>

</table>
    
     <%: Html.ActionLink("Historia das Cidade", "Visualizar", "Cidade") %>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
