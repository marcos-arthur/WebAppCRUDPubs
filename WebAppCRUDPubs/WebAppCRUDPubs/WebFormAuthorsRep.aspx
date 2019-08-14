<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormAuthorsRep.aspx.cs" Inherits="WebAppCRUDPubs.WebFormAuthorsRep" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <hr />
            <asp:Repeater runat="server" ID="Rep" DataSourceID="ObjectDataSource1">

            </asp:Repeater>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="WebAppCRUDPubs.Modelo.AuthorsRep" InsertMethod="Insert" SelectMethod="SelectAll" TypeName="WebAppCRUDPubs.DAL.DALAuthorsRep" UpdateMethod="Update"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
