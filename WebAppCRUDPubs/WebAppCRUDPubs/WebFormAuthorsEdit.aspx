<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormAuthorsEdit.aspx.cs" Inherits="WebAppCRUDPubs.WebFormAuthorsEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="script.js"></script>
    <title>Autores</title>    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="Edição de Autores"></asp:Label>
            <hr />
            <asp:DetailsView runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" Width="500px" ID="Detalhes">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="author_id" HeaderText="Código" SortExpression="author_id" />
                    <asp:BoundField DataField="author_name" HeaderText="Nome" SortExpression="author_name" />
                    <asp:BoundField DataField="author_last_name" HeaderText="Último nome" SortExpression="author_last_name" />
                    <asp:BoundField DataField="phone" HeaderText="Telefone" SortExpression="phone" />
                    <asp:BoundField DataField="address" HeaderText="Endereço" SortExpression="address" />
                    <asp:BoundField DataField="city" HeaderText="Cidade" SortExpression="city" />
                    <asp:BoundField DataField="state" HeaderText="Estado" SortExpression="state" />
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
                            &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Excluir" OnClientClick="javascript:return ConfirmaExclusao()"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />

            </asp:DetailsView>
            
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="WebAppCRUDPubs.Modelo.Authors" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="Select" TypeName="WebAppCRUDPubs.DAL.DALAuthors" UpdateMethod="Update" OnDeleted="Deleted" >
                <SelectParameters>
                    <asp:SessionParameter Name="au_id" SessionField="author_id" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            
        </div>
    </form>
</body>
</html>
