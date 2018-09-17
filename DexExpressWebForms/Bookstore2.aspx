<%@ Page Title="Books Listing" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Bookstore2.aspx.cs" Inherits="Bookstore2" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1" KeyFieldName="ISBN" OnHtmlEditFormCreated="ASPxGridView1_HtmlEditFormCreated" OnRowDeleting="ASPxGridView1_RowDeleting" OnRowInserting="ASPxGridView1_RowInserting" OnRowUpdating="ASPxGridView1_RowUpdating" Theme="Default">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
        <Columns>
            <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="ISBN" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="title" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="price" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
        </Columns>
</dx:ASPxGridView>
<asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/Bookstore2.xml" TransformFile="~/App_Data/Bookstore2.xsl"></asp:XmlDataSource>
</asp:Content>
