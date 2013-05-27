<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Anuncios.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.SELECOES>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ListaSelecoes
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Seleções Participantes</h2>
    <%int i = 0; %>
<table class="table table-bordered table-striped table-hover">
    <tr>
        <th>
            Bandeira
        </th>
        <th>
            Seleção
        </th>
        <th>
            Títulos
        </th>
        <th>
            História
        </th>
    </tr>

<% foreach (var item in Model) { %>
    <%i++; %>
    <tr>
        <td>
            <%if (item.CODSELE == 1){ %>
            <img src="../../Images/Bandeiras/brasil.gif" height="25" />
            <%} %>
            <%if (item.CODSELE == 2){ %>
            <img src="../../Images/Bandeiras/espanha.jpg" height="25"/>
            <%} %>
            <%if (item.CODSELE == 3){ %>
            <img src="../../Images/Bandeiras/argentina.png"height="25" />
            <%} %>
            <%if (item.CODSELE == 4){ %>
            <img src="../../Images/Bandeiras/franca.gif"height="25" />
            <%} %>
            <%if (item.CODSELE == 5){ %>
            <img src="../../Images/Bandeiras/inglaterra.jpg"height="25" />
            <%} %>
            <%if (item.CODSELE == 6){ %>
            <img src="../../Images/Bandeiras/italia.jpg" height="25"/>
            <%} %>
            <%if (item.CODSELE == 7){ %>
            <img src="../../Images/Bandeiras/africa%20do%20sul.gif" height="28" />
            <%} %>
            <%if (item.CODSELE == 8){ %>
            <img src="../../Images/Bandeiras/mexico.jpg"height="25" />
            <%} %>
            <%if (item.CODSELE == 9){ %>
            <img src="../../Images/Bandeiras/uruguai.png"height="25" />
            <%} %>
            <%if (item.CODSELE == 10){ %>
            <img src="../../Images/Bandeiras/nigeria.jpg" height="25" />
            <%} %>
            <%if (item.CODSELE == 11){ %>
            <img src="../../Images/Bandeiras/coreia%20do%20sul.jpg"height="25" />
            <%} %>
            <%if (item.CODSELE == 12){ %>
            <img src="../../Images/Bandeiras/grecia.jpg"height="25" />
            <%} %>
            <%if (item.CODSELE == 13){ %>
            <img src="../../Images/Bandeiras/estados%20unidos.jpg" height="25" />
            <%} %>
            <%if (item.CODSELE == 14){ %>
            <img src="../../Images/Bandeiras/argelia.jpg"height="25" />
            <%} %>
            <%if (item.CODSELE == 15){ %>
            <img src="../../Images/Bandeiras/eslovenia.gif" height="25"/>
            <%} %>
            <%if (item.CODSELE == 16){ %>
            <img src="../../Images/Bandeiras/alemanha.jpg" height="25"/>
            <%} %>
            <%if (item.CODSELE == 17){ %>
            <img src="../../Images/Bandeiras/australia.jpg"height="25" />
            <%} %>
            <%if (item.CODSELE == 18){ %>
            <img src="../../Images/Bandeiras/gana.gif" height="25"/>
            <%} %>
            <%if (item.CODSELE == 19){ %>
            <img src="../../Images/Bandeiras/servia.png" height="25"/>
            <%} %>
            <%if (item.CODSELE == 20){ %>
            <img src="../../Images/Bandeiras/holanda.jpg" height="25"/>
            <%} %>
            <%if (item.CODSELE == 21){ %>
            <img src="../../Images/Bandeiras/dinamarca.gif" height="25" />
            <%} %>
            <%if (item.CODSELE == 22){ %>
            <img src="../../Images/Bandeiras/japao.jpg" height="25"/>
            <%} %>
            <%if (item.CODSELE == 23){ %>
            <img src="../../Images/Bandeiras/camaroes.gif"height="25" />
            <%} %>
            <%if (item.CODSELE == 24){ %>
            <img src="../../Images/Bandeiras/paraguai.jpg" height="25" />
            <%} %>
            <%if (item.CODSELE == 25){ %>
            <img src="../../Images/Bandeiras/nova%20zelandia.jpg"height="23" />
            <%} %>
            <%if (item.CODSELE == 26){ %>
            <img src="../../Images/Bandeiras/eslovaquia.jpg"height="25" />
            <%} %>
            <%if (item.CODSELE == 27){ %>
            <img src="../../Images/Bandeiras/coreia%20do%20norte.gif" height="25" />
            <%} %>
            <%if (item.CODSELE == 28){ %>
            <img src="../../Images/Bandeiras/costa%20do%20marfim.gif" height="25" />
            <%} %>
            <%if (item.CODSELE == 29){ %>
            <img src="../../Images/Bandeiras/portugal.gif" height="25"/>
            <%} %>
            <%if (item.CODSELE == 30){ %>
            <img src="../../Images/Bandeiras/suica.gif" height="25"/>
            <%} %>
            <%if (item.CODSELE == 31){ %>
            <img src="../../Images/Bandeiras/honduras.jpg" height="25"/>
            <%} %>
            <%if (item.CODSELE == 32){ %>
            <img src="../../Images/Bandeiras/chile.gif"height="25" />
            <%} %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.NOMSELE) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.NUMTITSELE) %>
        </td>
        <td>
           <%: Html.ActionLink("Abrir", "Visualiza", new { id=item.CODSELE}) %> 
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
