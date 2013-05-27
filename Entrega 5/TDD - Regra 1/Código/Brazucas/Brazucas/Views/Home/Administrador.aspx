<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Anuncios.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Adminstração de Entidades.
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Gerenciar Entidades</h2>
    <br />
    <ol class="Lista">
        <li><%: Html.ActionLink("Anúncio", "Index", "Anuncio") %></li>
        <li><%: Html.ActionLink("Bolão", "Index", "Bolao") %></li>
        <li><%: Html.ActionLink("Categoria", "Index", "Categoria") %></li>
        <li><%: Html.ActionLink("Cidades Sede", "Index", "Cidade") %></li>
        <li><%: Html.ActionLink("Comentário", "Index", "Comentario") %></li>
        <li><%: Html.ActionLink("Estado do Jogo", "Index", "EstadoJogo") %></li>
        <li><%: Html.ActionLink("Fase dos Jogos", "Index", "FaseJogo") %></li>
        <li><%: Html.ActionLink("Jogos", "Index", "Jogo") %></li>
        <li><%: Html.ActionLink("Notícia", "Index", "Noticia") %></li>
        <li><%: Html.ActionLink("Pontuação", "Index", "Pontuacao") %></li>
        <li><%: Html.ActionLink("Postos de venda", "Index", "PostoVenda") %></li>
        <li><%: Html.ActionLink("Ranking", "Index", "Ranking") %></li>
        <li><%: Html.ActionLink("Rodada", "Index", "Rodada") %></li>
        <li><%: Html.ActionLink("Seleção", "Index", "Selecao") %></li>
        <li><%: Html.ActionLink("Tipo de Usuário", "Index", "TipoUsuario") %></li>
        <li><%: Html.ActionLink("Usuário", "Index", "Usuario") %></li>    
    </ol>
</asp:Content>