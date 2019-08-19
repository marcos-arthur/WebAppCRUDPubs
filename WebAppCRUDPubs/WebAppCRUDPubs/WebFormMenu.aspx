<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormMenu.aspx.cs" Inherits="WebAppCRUDPubs.WebFormMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink runat="server" Text="Cadastro de Livros" NavigateUrl="~/WebFormTitle.aspx"></asp:HyperLink>
            <br />
            <!--<asp:HyperLink runat="server" Text="Cadastro de Autores" NavigateUrl="~/WebFormAuthors.aspx"></asp:HyperLink>
            <br /> -->
            <asp:HyperLink runat="server" Text="Cadastro de Autores" NavigateUrl="~/WebFormAuthorsRep.aspx"></asp:HyperLink>            
        </div>
    </form>
</body>
</html>
