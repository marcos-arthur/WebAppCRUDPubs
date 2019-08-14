<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormDataList.aspx.cs" Inherits="WebAppCRUDPubs.WebFormDataList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DataList runat="server" CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" >
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#EFF3FB" />
                <ItemTemplate>
                    title_id:
                    <asp:Label ID="title_idLabel" runat="server" Text='<%# Eval("title_id") %>' />
                    <br />
                    title:
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                    <br />
                    type:
                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                    <br />
                    pub_id:
                    <asp:Label ID="pub_idLabel" runat="server" Text='<%# Eval("pub_id") %>' />
                    <br />
                    price:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    <br />
                    advance:
                    <asp:Label ID="advanceLabel" runat="server" Text='<%# Eval("advance") %>' />
                    <br />
                    royalty:
                    <asp:Label ID="royaltyLabel" runat="server" Text='<%# Eval("royalty") %>' />
                    <br />
                    ytd_sales:
                    <asp:Label ID="ytd_salesLabel" runat="server" Text='<%# Eval("ytd_sales") %>' />
                    <br />
                    notes:
                    <asp:Label ID="notesLabel" runat="server" Text='<%# Eval("notes") %>' />
                    <br />
                    pubdate:
                    <asp:Label ID="pubdateLabel" runat="server" Text='<%# Eval("pubdate") %>' />
                    <br />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="WebAppCRUDPubs.Modelo.Titles" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="SelectAll" TypeName="WebAppCRUDPubs.DAL.DALTitle" UpdateMethod="Update"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
