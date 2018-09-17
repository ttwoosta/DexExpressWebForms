<%@ Page Title="Order Listing" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Bookstore.aspx.cs" Inherits="Bookstore" %>


<%@ Register assembly="DevExpress.Web.Bootstrap.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <asp:XmlDataSource ID="dtsBooks" runat="server" DataFile="~/App_Data/Bookstore.xml"></asp:XmlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ISBN" DataSourceID="dtsBooks" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="549px">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        </Columns>
    </asp:GridView>
    <asp:XmlDataSource ID="dtsComments" runat="server" DataFile="~/App_Data/Bookstore.xml" XPath="/bookstore/book/comments/userComment"></asp:XmlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="dtsComments" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Visible="False">
        <ItemTemplate>
            User rating:
            <asp:Label ID="ratingLabel" runat="server" Text='<%# Eval("rating") %>' />
            <br />
            omment:
            <asp:Label ID="commentLabel" runat="server" Text='<%# Eval("comment") %>' />
            <br />
<br />
        </ItemTemplate>
        <SeparatorTemplate>
            <hr />
        </SeparatorTemplate>
    </asp:DataList>
</asp:Content>