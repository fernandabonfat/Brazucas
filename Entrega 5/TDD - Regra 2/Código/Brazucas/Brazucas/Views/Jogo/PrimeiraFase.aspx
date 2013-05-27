<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Anuncios.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.JOGOS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    PrimeiraFase
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Primeira Fase</h2>
<br />
    <%int i = 0; %>
    <h3>GRUPO A</h3>
<table class="table table-bordered table-striped table-hover">
    <tr>
        <th>
            #
        </th>
        <th>
            Cidade
        </th>
        <th>
            Seleção A
        </th>
        <th>VS</th>
        <th>
            Seleção B
        </th>
         <th>
            Gols
        </th>
        <th>
            x
        </th>
        <th>
            Gols
        </th>
        <th>
            Vencedor
        </th>
        <th>
            Data do Jogo
        </th>
       
    </tr>
     
<% foreach (var item in Model) { %>
   <%if (i < 6){ %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.CODJOGO) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.CIDADE_SEDE.NOMCID) %>
        </td>
        <td>
            
           <%if (item.SELECAO_A == 1){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/7 "> <img src="../../Images/Bandeiras/africa%20do%20sul.gif" height="25">Africa do Sul</a>
            <%} %>
            <%if (item.SELECAO_A == 2){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/8 "> <img src="../../Images/Bandeiras/mexico.jpg" height="25">México</a>
            <%} %>
            <%if (item.SELECAO_A == 3){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/9 "> <img src="../../Images/Bandeiras/Uruguai.png" height="25">Uruguai</a>
            <%} %>
        </td>
        <td> VS </td>
        <td>
            <%if (item.SELECAO_B == 4){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/4 "> <img src="../../Images/Bandeiras/Franca.gif" height="25">França</a>
            <%} %>
            <%if (item.SELECAO_B == 2){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/8 "> <img src="../../Images/Bandeiras/mexico.jpg" height="25">México</a>
            <%} %>
            <%if (item.SELECAO_B == 3){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/9 "> <img src="../../Images/Bandeiras/Uruguai.png" height="25">Uruguai</a>
            <%} %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.PLACAR_A) %>
        </td>
        <td>
            x
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.PLACAR_B) %>
        </td>
        <td>
            <%if(item.PLACAR_A>item.PLACAR_B){ %>
            <%if(item.SELECAO_A == 1){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/7 "> <img src="../../Images/Bandeiras/africa%20do%20sul.gif" height="25">Africa do Sul</a>
            <%} %>
            <%if (item.SELECAO_A == 2){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/8 "> <img src="../../Images/Bandeiras/mexico.jpg" height="25">México</a>
            <%} %>
            <%if (item.SELECAO_A == 3){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/9 "> <img src="../../Images/Bandeiras/Uruguai.png" height="25">Uruguai</a>
            <%} %>
            <%} %>
            <%if(item.PLACAR_A<item.PLACAR_B){  %>
            <%if (item.SELECAO_B == 4){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/4 "> <img src="../../Images/Bandeiras/Franca.gif" height="25">França</a>
            <%} %>
            <%if (item.SELECAO_B == 2){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/8 "> <img src="../../Images/Bandeiras/mexico.jpg" height="25">México</a>
            <%} %>
            <%if (item.SELECAO_B == 3){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/9 "> <img src="../../Images/Bandeiras/Uruguai.png" height="25">Uruguai</a>
            <%} %>
            <%} %>
            <%if(item.PLACAR_A == item.PLACAR_B){ %>
            Empate
            <%} %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.DATJOGO) %>
        </td>
        </tr>
    <%i++; %>
    <%} %>
<% } %>
    </table>
    <div>
        <%: Html.ActionLink("Escolher Fase", "TabelaDeJogos", "Jogo") %> |
        <%: Html.ActionLink("GRUPO A", "PrimeiraFase", "Jogo") %> |
        <%: Html.ActionLink("GRUPO B", "GrupoB", "Jogo") %> |
        <%: Html.ActionLink("GRUPO C", "GrupoC", "Jogo") %> |
        <%: Html.ActionLink("GRUPO D", "GrupoD", "Jogo") %> |
        <%: Html.ActionLink("GRUPO E", "GrupoE", "Jogo") %> |
        <%: Html.ActionLink("GRUPO F", "GrupoF", "Jogo") %> |
        <%: Html.ActionLink("GRUPO G", "GrupoG", "Jogo") %> |
        <%: Html.ActionLink("GRUPO H", "GrupoH", "Jogo") %> |
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
