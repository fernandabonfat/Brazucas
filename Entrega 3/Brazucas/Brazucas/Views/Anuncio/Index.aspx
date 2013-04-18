<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.ANUNCIOS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Anuncio
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">

        <h2>Gerenciar Anuncios</h2>
        <br />
        <p>
            <%: Html.ActionLink("Novo Anuncio", "Create") %>
        </p>
        <table class="table table-bordered table-striped table-hover">
            <tr>
                <th>Codigo
                </th>
                <th>Titulo
                </th>
                <th>Descrição
                </th>
                <th>Data Postagem
                </th>
                <th></th>
            </tr>

            <% foreach (var item in Model)
               { %>
            <tr>
                <td>
                    <%: Html.DisplayFor(modelItem => item.CODANUN) %>
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.TITULOANUN) %>
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.DCRANUN) %>
                </td>
                <td>
                    <%: Html.DisplayFor(modelItem => item.DATPOSANUN) %>
                </td>
                <td>
                    <%: Html.ActionLink("Edit", "Edit", new { id=item.CODANUN }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.CODANUN }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.CODANUN }) %>
                </td>
            </tr>
            <% } %>
        </table>
    </form>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
