<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.NOTICIAS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Notícias</h2>

<p>
    <%: Html.ActionLink("Nova Notícia", "Create") %>
</p>
<table  class="table table-bordered table-striped table-hover">
    <tr>
        <th>
            Código
        </th>
        <th>
            Titulo
        </th>
        <th>
            Descrição
        </th>
        <th>
            Data Postagem
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.CODNOT) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.TITULONOT) %>
        </td>
        <td>
            <div class="TextHist">
                <%: Html.DisplayFor(modelItem => item.DCRNOT) %>
            </div>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.DATPOSNOT) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.CODNOT }) %> 
            <%: Html.ActionLink("Details", "Details", new { id=item.CODNOT }) %> 
            <%: Html.ActionLink("Delete", "Delete", new { id=item.CODNOT }) %> 
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
