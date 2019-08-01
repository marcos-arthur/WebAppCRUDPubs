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
            <asp:GridView runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" OnRowCommand="Editar" PageSize="5" ID="GridviewAuthors">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="author_id" HeaderText="Código" SortExpression="author_id" />
                    <asp:BoundField DataField="author_name" HeaderText="Nome" SortExpression="author_name" />
                    <asp:BoundField DataField="author_last_name" HeaderText="Último nome" SortExpression="author_last_name" />
                    <asp:BoundField DataField="phone" HeaderText="Telefone" SortExpression="phone" />
                    <asp:BoundField DataField="address" HeaderText="Endereço" SortExpression="address" />
                    <asp:BoundField DataField="city" HeaderText="Cidade" SortExpression="city" />
                    <asp:BoundField DataField="state" HeaderText="Estado" SortExpression="state" />
                    <asp:ButtonField CommandName="Editar" Text="Editar" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="WebAppCRUDPubs.Modelo.Authors" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="SelectAll" TypeName="WebAppCRUDPubs.DAL.DALAuthors" UpdateMethod="Update"></asp:ObjectDataSource>
            <br />
            
        </div>
    </form>
</body>
</html>
