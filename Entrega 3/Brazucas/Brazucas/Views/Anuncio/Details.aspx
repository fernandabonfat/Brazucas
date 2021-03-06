﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.ANUNCIOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>ANUNCIOS</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.CODANUN) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CODANUN) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.CODUSU) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CODUSU) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.CODCAT) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CODCAT) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.CODCID) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CODCID) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.TITULOANUN) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.TITULOANUN) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.DCRANUN) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DCRANUN) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.DATPOSANUN) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DATPOSANUN) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.DATFIMANUN) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DATFIMANUN) %>
    </div>
</fieldset>
<p>
    <%: Html.ActionLink("Edit", "Edit", new { /* id=Model.PrimaryKey */ }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
