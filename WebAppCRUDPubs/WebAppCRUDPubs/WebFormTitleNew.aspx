<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormTitleNew.aspx.cs" Inherits="WebAppCRUDPubs.WebFormTitleNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="Style.css"/>
    <title>Inserir Livros</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="Inserir Livro"></asp:Label>
            <hr />
            
            <asp:TextBox runat="server" ID="codigo" DataSourceID="ObjectDataSource1"></asp:TextBox>
            <a class="descr" runat="server">Código</a>   
            <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" SelectMethod="Select" TypeName="WebAppCRUDPubs.DAL.DALTitle">
                <SelectParameters>
                    <asp:SessionParameter Name="title_id" SessionField="title_id" Type="String" />
                </SelectParameters>

            </asp:ObjectDataSource>
            <asp:RequiredFieldValidator runat="server" Text="Campo Obrigatório" CssClass="require" ControlToValidate="codigo">Campo Obrigatório</asp:RequiredFieldValidator>

            <br />       
            <br />
            <asp:TextBox runat="server" ID="nome"></asp:TextBox>
            <a class="descr">Título</a>
            <asp:RequiredFieldValidator runat="server" Text="Campo Obrigatório" CssClass="require" ControlToValidate="nome"></asp:RequiredFieldValidator>
            
            <br />       
            <br />
            <asp:TextBox runat="server" ID="editora"></asp:TextBox>
            <a class="descr">Editora</a>
            <asp:RequiredFieldValidator runat="server" Text="Campo Obrigatório" CssClass="require" ControlToValidate="editora"></asp:RequiredFieldValidator>
            
            <br />       
            <br />
            <asp:TextBox runat="server" ID="type"></asp:TextBox>
            <a class="descr">Tipo</a>
            <asp:RequiredFieldValidator runat="server" Text="Campo Obrigatório" CssClass="require" ControlToValidate="type"></asp:RequiredFieldValidator>
            
            <br />
            <br />
            <asp:TextBox runat="server" ID="preco"></asp:TextBox>
            <a class="descr">Preço</a>
            <asp:RequiredFieldValidator runat="server" Text="Campo Obrigatório" CssClass="require" ControlToValidate="preco"></asp:RequiredFieldValidator>

            <br />       
            <br />
            <a class="descr">Descrição</a>
            <br />
            <asp:TextBox runat="server" ID="decricao" Height="70px" TextMode="MultiLine" Width="300px"></asp:TextBox>            

            <br />
            <br />
            <asp:TextBox runat="server" ID="dataPub"></asp:TextBox>
            <a class="descr">Data de publicação</a>
            <asp:RequiredFieldValidator runat="server" Text="Campo Obrigatório" CssClass="require" ControlToValidate="dataPub"></asp:RequiredFieldValidator>

            <br />
            <asp:Button runat="server" Text="Salvar" OnClick="saveButton"/>

            
        </div>
    </form>
</body>
</html>
