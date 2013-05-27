<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.USUARIOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>USUARIOS</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODUSU) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CODUSU) %>
            <%: Html.ValidationMessageFor(model => model.CODUSU) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CODTIPUSU, "TIPO_USUARIOS") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CODTIPUSU", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CODTIPUSU) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.NOMUSU) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.NOMUSU) %>
            <%: Html.ValidationMessageFor(model => model.NOMUSU) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.EMAILUSU) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.EMAILUSU) %>
            <%: Html.ValidationMessageFor(model => model.EMAILUSU) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.SEXUSU) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.SEXUSU) %>
            <%: Html.ValidationMessageFor(model => model.SEXUSU) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.DATNASCUSU) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.DATNASCUSU) %>
            <%: Html.ValidationMessageFor(model => model.DATNASCUSU) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.LOGINUSU) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.LOGINUSU) %>
            <%: Html.ValidationMessageFor(model => model.LOGINUSU) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.SENHAUSU) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.SENHAUSU) %>
            <%: Html.ValidationMessageFor(model => model.SENHAUSU) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CPFCNPJUSU) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CPFCNPJUSU) %>
            <%: Html.ValidationMessageFor(model => model.CPFCNPJUSU) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.TELUSU) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.TELUSU) %>
            <%: Html.ValidationMessageFor(model => model.TELUSU) %>
        </div>

        <p>
            <input type="submit" value="Save" />
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
