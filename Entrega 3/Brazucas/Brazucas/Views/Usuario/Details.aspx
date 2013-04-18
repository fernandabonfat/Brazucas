<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Brazucas.Models.USUARIOS>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
Detalhes da Conta
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Visualizar Conta</h2>

<fieldset>
    <legend>USUARIOS</legend>

    <div class="display-label">
        Tipo de usuário:  <%: Html.DisplayFor(model => model.TIPO_USUARIOS.DCRTIPUSU) %>
    </div>
    
    <div class="display-label">
        Nome: <%: Html.DisplayFor(model => model.NOMUSU) %>
    </div>
   
    <div class="display-label">
        Email: <%: Html.DisplayFor(model => model.EMAILUSU) %>
    </div>
   
    <div class="display-label">
        Sexo: <%: Html.DisplayFor(model => model.SEXUSU) %>
    </div>
   
    <div class="display-label">
        Data de Nascimento: <%: Html.DisplayFor(model => model.DATNASCUSU) %>
    </div>
    
    <div class="display-label">
        Login: <%: Html.DisplayFor(model => model.LOGINUSU) %>
    </div>
  
    <div class="display-label">
        CPF/CNPJ:  <%: Html.DisplayFor(model => model.CPFCNPJUSU) %>
    </div>
    
    <div class="display-label">
        Telefone: <%: Html.DisplayFor(model => model.TELUSU) %>
    </div>
    
</fieldset>
<p>
    <%: Html.ActionLink("Editar", "Edit", new { id= Model.CODUSU }) %> 
    <br />
    <%: Html.ActionLink("Voltar", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
