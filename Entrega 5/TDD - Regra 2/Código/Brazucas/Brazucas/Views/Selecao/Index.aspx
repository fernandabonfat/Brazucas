<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.SELECOES>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Seleções</h2>

<p>
    <%: Html.ActionLink("Nova Seleção", "Create") %>
</p>
    <table class="table table-bordered table-striped table-hover">
        <tr>
            <th>Código
            </th>
            <th>Seleção
            </th>
            <th>Titulos 
            </th>
            <th>História
            </th>
            <th></th>
        </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.CODSELE) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.NOMSELE) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.NUMTITSELE) %>
        </td>
        <td>
            <div class="TextHist">
                <%: Html.DisplayFor(modelItem =>  item.HISTORIA) %>
            </div>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.CODSELE }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.CODSELE }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.CODSELE }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
