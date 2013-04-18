<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Anuncios.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="indexTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Home
</asp:Content>

<asp:Content ID="indexContent" ContentPlaceHolderID="MainContent" runat="server">
    <%--<h1>Em Construção</h1> 
    <video controls="controls">
        <source src="http://www.youtube.com/watch?feature=player_detailpage&v=pyDVDKSzU9Y" type="video/mp4" />
        <source src="http://www.youtube.com/watch?feature=player_detailpage&v=pyDVDKSzU9Y" type="video/webm" />
        <source src="http://www.youtube.com/watch?feature=player_detailpage&v=pyDVDKSzU9Y" type="video/ogg" />
    </video>--%>
    <iframe width="640" height="360" src="http://www.youtube.com/embed/pyDVDKSzU9Y?feature=player_detailpage" frameborder="0" allowfullscreen></iframe>
    
       
</asp:Content>
