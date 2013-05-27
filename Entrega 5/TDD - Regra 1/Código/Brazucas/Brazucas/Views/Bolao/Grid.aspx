<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Anuncios.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Brazucas.Models.JOGOS>>" %>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button1.Text = "OK";
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            Button1.Text = "sjvnjsdknvkjdn";
    }
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Apostas
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Bolão da Copa</h2>
    <div class="Bolao">

        <% foreach (var item in Model)
           { %>
        <div class="Apostas">
            <div class="Sel_A">                
                <%: Html.DisplayFor(modelItem => item.SELECAO_A) %><asp:TextBox ID="TextBox1" runat="server" CssClass="numero"></asp:TextBox>&nbsp;X&nbsp;
            </div>
            <div class="Sel_B">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="numero"></asp:TextBox><%: Html.DisplayFor(modelItem => item.SELECAO_A) %>
            </div>
            <div class="Btn_Aposta">
                <asp:Button ID="Button1" runat="server" Text="Apostar" CssClass="apostaImg" OnClick="Button1_Click" />
            </div>
        </div>
        <br />
        <% } %>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
