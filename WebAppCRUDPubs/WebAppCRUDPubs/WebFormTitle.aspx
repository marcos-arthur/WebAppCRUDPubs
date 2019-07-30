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
            <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="Editar" PageSize="5" ID="GridView1">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="title_id" HeaderText="Código" SortExpression="title_id" />
                    <asp:BoundField DataField="title" HeaderText="Livro" SortExpression="title" />
                    <asp:BoundField DataField="pub_id" HeaderText="Editora" SortExpression="pub_id" />
                    <asp:BoundField DataField="price" HeaderText="Preço" SortExpression="price" DataFormatString="{0:f2}" />
                    <asp:BoundField DataField="notes" HeaderText="Descrição" SortExpression="notes" />
                    <asp:BoundField DataField="pubdate" HeaderText="Data da Publicação" SortExpression="pubdate" DataFormatString="{0:d}" />
                    <asp:ButtonField CommandName="Editar" Text="Editar" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="WebAppCRUDPubs.Modelo.Titles" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="SelectAll" TypeName="WebAppCRUDPubs.DAL.DALTitle" UpdateMethod="Update"></asp:ObjectDataSource>
        </div>        
    </form>
</body>
</html>
