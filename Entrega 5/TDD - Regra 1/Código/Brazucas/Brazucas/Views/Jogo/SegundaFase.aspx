<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Anuncios.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.JOGOS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Segunda Fase
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Segunda Fase</h2>
    <h3> Aguardando os vencedores da Primeira Fase</h3>

<p>
    <img src="../../Images/SegundaFase.png"  />
</p>
        <div>
            <%: Html.ActionLink("Escolher Fase", "TabelaDeJogos", "Jogo") %>
        </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
