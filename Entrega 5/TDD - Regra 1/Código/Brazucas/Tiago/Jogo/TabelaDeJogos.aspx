<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Anuncios.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.JOGOS>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    TabelaDeJogos
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Tabela Dos Jogos</h2>
    <h3>Primeira Fase</h3>
<br />
   <a href=" http://localhost:2236/Jogo/PrimeiraFase "><img src="../../Images/Primeira%20Fase.jpg"></a> 
    <br />
    <h4>Segunda Fase</h4>
    <br />
    <a href=" http://localhost:2236/Jogo/SegundaFase "><img src="../../Images/segunda%20fase.jpg"> </a> 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
