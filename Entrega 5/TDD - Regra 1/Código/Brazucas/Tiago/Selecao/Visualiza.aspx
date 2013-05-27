<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Anuncios.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.SELECOES>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Visualiza
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>História do País</h2>
    
<fieldset>
    <legend>SELECOES</legend>

    <div class="display-field" >
        <h4><%: Html.DisplayFor(model => model.NOMSELE) %> </h4>
              
    </div>
    <br />
    <div class="display-field">
       <p style="text-align: justify"><%: Html.DisplayFor(model => model.HISTORIA) %></p> 
    </div>
</fieldset>
<p>
    
    <%: Html.ActionLink("Selecionar outra Seleção", "ListaSelecoes", "Selecao") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
