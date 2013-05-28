<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Anuncios.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.CIDADE_SEDE>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Cidades Sede
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Cidades Sede</h2>
    <p style="text-align: justify">
        Doze cidades das cinco regiões do Brasil receberão a Copa do Mundo em 2014. Mais de R$25 bilhões serão investidos em aeroportos,
    estádios e novos sistemas de transportes, tudo para adequar a infraestrutura das capitais aos milhares de turistas que virão ao evento.
    </p>
    Veja a seguir a curiosidades sobre as Cidades Sede.
    <br />
    <br />
    <asp:Image ImageUrl="~/Images/mapa.jpg" DescriptionUrl="~/Views/Noticia/Details.aspx" Height="250px" ImageAlign="Bottom" ID="Image1" runat="server" />
    <br />
    <br />

    <table class="table table-bordered table-striped table-hover">
        <tr>
            <th>Cidade Sede
            </th>
            <th>História da Cidade
            </th>

        </tr>

        <% foreach (var item in Model)
           { %>
        <tr>

            <td>
                <%: Html.DisplayFor(modelItem => item.NOMCID)%>
            </td>
            <td>
                <%: Html.ActionLink("Historia", "VisualizarCidade", new { id=item.CODCID }) %>  Confira também os <%: Html.ActionLink("Ingressos", "PostosDeVenda", "PostoVenda") %>
            </td>
        </tr>
        <% } %>
    </table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>

