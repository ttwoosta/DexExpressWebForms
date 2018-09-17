<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Books.aspx.cs" Inherits="Books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1">
            <Columns>
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            </Columns>
        </asp:GridView>
        <div>
        </div>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/Bookstore.xml"></asp:XmlDataSource>
    </form>
</body>
</html>
