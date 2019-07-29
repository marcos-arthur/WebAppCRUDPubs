<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormTitle.aspx.cs" Inherits="WebAppCRUDPubs.WebFormTitle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="Cadastro de Livros"></asp:Label>
            <hr/>
            <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
                <Columns>
                    <asp:BoundField DataField="title_id" HeaderText="title_id" SortExpression="title_id" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                    <asp:BoundField DataField="pub_id" HeaderText="pub_id" SortExpression="pub_id" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="advance" HeaderText="advance" SortExpression="advance" />
                    <asp:BoundField DataField="royalty" HeaderText="royalty" SortExpression="royalty" />
                    <asp:BoundField DataField="ytd_sales" HeaderText="ytd_sales" SortExpression="ytd_sales" />
                    <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
                    <asp:BoundField DataField="pubdate" HeaderText="pubdate" SortExpression="pubdate" />
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="WebAppCRUDPubs.Modelo.Titles" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="SelectAll" TypeName="WebAppCRUDPubs.DAL.DALTitle" UpdateMethod="Update"></asp:ObjectDataSource>
        </div>        
    </form>
</body>
</html>
