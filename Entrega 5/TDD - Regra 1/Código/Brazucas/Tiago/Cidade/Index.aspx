<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.CIDADE_SEDE>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Cidade Sede</h2>

<p>
    <%: Html.ActionLink("Nova Cidade Sede", "Create") %>
</p>
<table class="table table-bordered table-striped table-hover">
    <tr>
        <th>
            Código
        </th>
        <th>
            Nome
        </th>
        <th>
            História
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.CODCID) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.NOMCID) %>
        </td>
        <td>
            <div class="TextHist">
                <%: Html.DisplayFor(modelItem => item.HISTORIA) %>
            </div>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.CODCID }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.CODCID }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.CODCID }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
