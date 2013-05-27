<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.ANUNCIOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Apagar</h2>
    <br />
    <fieldset>
        <legend>ANUNCIOS</legend>

        <div class="campo">
            Título
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.TITULOANUN) %>
        </div>

        <div class="campo">
            Descrição
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.DCRANUN) %>
        </div>

        <div class="campo">
            Data de Postagem
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.DATPOSANUN) %>
        </div>

        <div class="campo">
            Data de Termino
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.DATFIMANUN) %>
        </div>
    </fieldset>
    <% using (Html.BeginForm())
       { %>
    <p>
        <input type="submit" value="Apagar" />
        |
        <%: Html.ActionLink("Retornar para lista", "Index") %>
    </p>
    <% } %>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
