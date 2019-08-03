<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormAuthorsNew.aspx.cs" Inherits="WebAppCRUDPubs.WebFormAuthorsNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="Style.css"/>
    <title>Inserir Autores</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="Inserir Autor"></asp:Label>
            <hr />

            <asp:TextBox runat="server" ID="codigo"></asp:TextBox>
            <a class="descr">Código</a>
            <asp:RequiredFieldValidator runat="server" Text="Campo orbigatório" CssClass="require" ControlToValidate="codigo"></asp:RequiredFieldValidator>
            
            <br />
            <br />
            <asp:TextBox runat="server" ID="nome"></asp:TextBox>
            <a class="descr">Nome</a>
            <asp:RequiredFieldValidator runat="server" Text="Campo orbigatório" CssClass="require" ControlToValidate="nome"></asp:RequiredFieldValidator>

            <br />
            <br />
            <asp:TextBox runat="server" ID="lName"></asp:TextBox>
            <a class="descr">Último nome</a>
            <asp:RequiredFieldValidator runat="server" Text="Campo orbigatório" CssClass="require" ControlToValidate="lName"></asp:RequiredFieldValidator>

            <br />
            <br />
            <asp:TextBox runat="server" ID="phone"></asp:TextBox>
            <a class="descr">Telefone</a>
            <asp:RequiredFieldValidator runat="server" Text="Campo orbigatório" CssClass="require" ControlToValidate="phone"></asp:RequiredFieldValidator>

            <br />
            <br />
            <asp:TextBox runat="server" ID="address"></asp:TextBox>
            <a class="descr">Endereço</a>
            <asp:RequiredFieldValidator runat="server" Text="Campo orbigatório" CssClass="require" ControlToValidate="address"></asp:RequiredFieldValidator>

            <br />
            <br />
            <asp:TextBox runat="server" ID="city"></asp:TextBox>
            <a class="descr">Cidade</a>
            <asp:RequiredFieldValidator runat="server" Text="Campo orbigatório" CssClass="require" ControlToValidate="city"></asp:RequiredFieldValidator>

            <br />
            <br />
            <asp:TextBox runat="server" ID="state"></asp:TextBox>
            <a class="descr">Estado</a>
            <asp:RequiredFieldValidator runat="server" Text="Campo orbigatório" CssClass="require" ControlToValidate="state"></asp:RequiredFieldValidator>

            <br />
            <asp:Button runat="server" Text="Salvar" OnClick="saveButton"/>
        </div>
    </form>
</body>
</html>
