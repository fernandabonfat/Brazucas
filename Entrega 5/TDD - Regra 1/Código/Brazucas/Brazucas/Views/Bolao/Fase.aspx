<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Anuncios.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Fase
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Bolão da Copa</h2>

    <div class="Fases_Bolao">
        <div class="fase_detalhe">            
            <%: Html.ActionLink("Fase de Grupos", "Grid", new { id=1 }) %>                       
        </div>
        <div class="fase_detalhe">            
            <%: Html.ActionLink("Oitavas de Final", "Grid", new { id=2 })%>            
        </div>
        <div class="fase_detalhe">
            <%: Html.ActionLink("Quartas de Final", "Grid", new { id=3 })%>
        </div>
        <div class="fase_detalhe">
            <%: Html.ActionLink("Semifinal", "Grid", new { id=4 })%>
        </div>
        <div class="fase_detalhe">
            <%: Html.ActionLink("Final", "Grid", new { id=5 })%>
        </div>
    </div>    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
