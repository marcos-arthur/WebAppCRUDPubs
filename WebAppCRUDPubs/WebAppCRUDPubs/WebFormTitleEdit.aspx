<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormTitleEdit.aspx.cs" Inherits="WebAppCRUDPubs.WebFormTitleEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="Edição de Livros"></asp:Label>
            <hr />
            <asp:DetailsView runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" Width="500px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="title_id" HeaderText="Código" SortExpression="title_id" />
                    <asp:BoundField DataField="title" HeaderText="Livro" SortExpression="title" />
                    <asp:BoundField DataField="pub_id" HeaderText="Editora" SortExpression="pub_id" />
                    <asp:BoundField DataField="price" DataFormatString="{0:f2}" HeaderText="Preço" SortExpression="price" />
                    <asp:BoundField DataField="notes" HeaderText="Descrição" SortExpression="notes" />
                    <asp:BoundField DataField="pubdate" DataFormatString="{0:d}" HeaderText="Data da Publicação" SortExpression="pubdate" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="WebAppCRUDPubs.Modelo.Titles" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="SelectAll" TypeName="WebAppCRUDPubs.DAL.DALTitle" UpdateMethod="Update"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
