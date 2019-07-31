<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormAuthors.aspx.cs" Inherits="WebAppCRUDPubs.WebFormAuthors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
                <Columns>
                    <asp:BoundField DataField="author_id" HeaderText="Código" SortExpression="author_id" />
                    <asp:BoundField DataField="author_name" HeaderText="Nome" SortExpression="author_name" />
                    <asp:BoundField DataField="author_last_name" HeaderText="Último nome" SortExpression="author_last_name" />
                    <asp:BoundField DataField="phone" HeaderText="Telefone" SortExpression="phone" />
                    <asp:BoundField DataField="address" HeaderText="Endereço" SortExpression="address" />
                    <asp:BoundField DataField="city" HeaderText="Cidade" SortExpression="city" />
                    <asp:BoundField DataField="state" HeaderText="Estado" SortExpression="state" />
                    <asp:ButtonField Text="Editar" />
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="WebAppCRUDPubs.Modelo.Authors" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="SelectAll" TypeName="WebAppCRUDPubs.DAL.DALAuthors" UpdateMethod="Update"></asp:ObjectDataSource>
            <br />
            
        </div>
    </form>
</body>
</html>
