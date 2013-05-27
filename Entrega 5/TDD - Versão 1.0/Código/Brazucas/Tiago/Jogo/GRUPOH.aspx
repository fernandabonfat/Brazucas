<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Anuncios.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.JOGOS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    GRUPOH
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Primeira Fase</h2>
<br />
    <%int i = 0; %>
    <h3>GRUPO H</h3>
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
    <%i++; %>
   <%if (i > 42 && i < 49){ %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.CODJOGO) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.CIDADE_SEDE.NOMCID) %>
        </td>
        <td>
            
           <%if (item.SELECAO_A == 29){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/2 "> <img src="../../Images/Bandeiras/espanha.jpg" height="25">Espanha</a>
            <%} %>
            <%if (item.SELECAO_A == 30){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/30 "> <img src="../../Images/Bandeiras/suica.gif" height="25">Suiça</a>
            <%} %>
            <%if (item.SELECAO_A == 31){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/31 "> <img src="../../Images/Bandeiras/honduras.jpg" height="25">Honduras</a>
            <%} %>
        </td>
        <td> VS </td>
        <td>
            <%if (item.SELECAO_B == 32){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/32 "> <img src="../../Images/Bandeiras/chile.gif" height="25">Chile</a>
            <%} %>
            <%if (item.SELECAO_B == 30){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/30 "> <img src="../../Images/Bandeiras/suica.gif" height="25">Suiça</a>
            <%} %>
            <%if (item.SELECAO_B == 31){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/31 "> <img src="../../Images/Bandeiras/honduras.jpg" height="25">Honduras</a>
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
            <%if(item.SELECAO_A == 29){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/2 "> <img src="../../Images/Bandeiras/espanha.jpg" height="25">Espanha</a>
            <%} %>
            <%if (item.SELECAO_A == 30){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/30 "> <img src="../../Images/Bandeiras/suica.gif" height="25">Suiça</a>
            <%} %>
            <%if (item.SELECAO_A == 31){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/31 "> <img src="../../Images/Bandeiras/honduras.jpg" height="25">Honduras</a>
            <%} %>
            <%} %>
            <%if(item.PLACAR_A<item.PLACAR_B){  %>
            <%if (item.SELECAO_B == 32){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/32 "> <img src="../../Images/Bandeiras/chile.gif" height="25">Chile</a>
            <%} %>
            <%if (item.SELECAO_B == 30){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/30 "> <img src="../../Images/Bandeiras/suica.gif" height="25">Suiça</a>
            <%} %>
            <%if (item.SELECAO_B == 31){ %>
            <a href=" http://localhost:2236/Selecao/Visualiza/31 "> <img src="../../Images/Bandeiras/honduras.jpg" height="25">Honduras</a>
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
