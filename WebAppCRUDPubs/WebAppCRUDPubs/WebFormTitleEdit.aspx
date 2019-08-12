<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormTitleEdit.aspx.cs" Inherits="WebAppCRUDPubs.WebFormTitleEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="script.js"></script>
    <title>Trabalho</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="Edição de Livros"></asp:Label>
            <hr />
            <asp:DetailsView runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" Width="500px" ID="Detalhes">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="title_id" HeaderText="Código" SortExpression="title_id" />
                    <asp:BoundField DataField="title" HeaderText="Título" SortExpression="title" />
                    <asp:BoundField DataField="type" HeaderText="Tipo" SortExpression="type" />
                    <asp:BoundField DataField="pub_id" HeaderText="Editora" SortExpression="pub_id" />
                    <asp:BoundField DataField="price" DataFormatString="{0:f2}" HeaderText="Preço" SortExpression="price" />
                    <asp:BoundField DataField="notes" HeaderText="Descrição" SortExpression="notes" />
                    <asp:BoundField DataField="pubdate" DataFormatString="{0:d}" HeaderText="Data da Publicação" SortExpression="pubdate" />
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Atualizar"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Inserir"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="New" Text="Novo"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="javascript:return ConfirmaExclusao()" Text="Excluir"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="WebAppCRUDPubs.Modelo.Titles" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="Select" TypeName="WebAppCRUDPubs.DAL.DALTitle" UpdateMethod="Update" OnDeleted="Deleted">
                <SelectParameters>
                    <asp:SessionParameter Name="title_id" SessionField="title_id" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
