<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Anuncios.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.CIDADE_SEDE>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Curiosidades
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>A história da Cidade</h2>
<fieldset>
    <legend>CIDADE_SEDE</legend>
    
    <div class="display-field" >
        <h4><%: Html.DisplayFor(model => model.NOMCID) %> </h4>
              
    </div>
    <br />
    <div class="display-field">
       <p style="text-align: justify"><%: Html.DisplayFor(model => model.HISTORIA) %></p> 
    </div>
</fieldset>
<p>
    
    <%: Html.ActionLink("Selecionar outra Cidade", "Visualizar", "Cidade") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
