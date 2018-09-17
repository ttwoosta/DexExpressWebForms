<%@ Page Title="Books Listing" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Bookstore3.aspx.cs" Inherits="Bookstore3" %>




<%@ Register assembly="DevExpress.Web.Bootstrap.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/Bookstore.xml"></asp:XmlDataSource>
    <dx:BootstrapGridView ID="BootstrapGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1" KeyFieldName="ISBN">
        <SettingsDataSecurity AllowEdit="True" />
        <Columns>
            <dx:BootstrapGridViewCommandColumn ShowEditButton="True" VisibleIndex="0">
            </dx:BootstrapGridViewCommandColumn>
            <dx:BootstrapGridViewTextColumn FieldName="ISBN" VisibleIndex="1">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="title" VisibleIndex="2">
            </dx:BootstrapGridViewTextColumn>
            <dx:BootstrapGridViewTextColumn FieldName="price" VisibleIndex="3">
            </dx:BootstrapGridViewTextColumn>
        </Columns>
    </dx:BootstrapGridView>
    
</asp:Content>
