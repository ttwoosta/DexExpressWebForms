<%@ Page Title="Order Listing" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Bookstore.aspx.cs" Inherits="Bookstore" %>


<%@ Register assembly="DevExpress.Web.Bootstrap.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <dx:BootstrapGridView ID="BootstrapGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="dtsBooks">
        <Columns>
            <dx:BootstrapGridViewTextColumn FieldName="ISBN" VisibleIndex="0">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="title" VisibleIndex="1">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="price" VisibleIndex="2">
            </dx:BootstrapGridViewTextColumn>
        </Columns>
    </dx:BootstrapGridView>
    <asp:XmlDataSource ID="dtsBooks" runat="server" DataFile="~/App_Data/Bookstore.xml"></asp:XmlDataSource>
</asp:Content>