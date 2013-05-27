<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.RODADA>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>RODADA</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODRODADA, "BOLAO") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODRODADA", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODRODADA) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODFASE, "FASE_JOGOS") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODFASE", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODFASE) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DCRTIPUSU) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DCRTIPUSU) %>
            <%: Html.ValidationMessageFor(model => model.DCRTIPUSU) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
