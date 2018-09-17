<%@ Page Title="Order Listing" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="Orders" %>

<%@ Register assembly="DevExpress.Web.Bootstrap.v18.1, Version=18.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="gridInvoice" runat="server" AutoGenerateColumns="False" DataKeyNames="InvoiceID" DataSourceID="PayablesDataSource" AllowPaging="True" OnRowEditing="gridInvoice_RowEditing">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="InvoiceID" HeaderText="InvoiceID" InsertVisible="False" ReadOnly="True" SortExpression="InvoiceID" />
            <asp:BoundField DataField="VendorID" HeaderText="VendorID" SortExpression="VendorID" />
            <asp:BoundField DataField="InvoiceNumber" HeaderText="InvoiceNumber" SortExpression="InvoiceNumber" />
            <asp:BoundField DataField="InvoiceDate" HeaderText="InvoiceDate" SortExpression="InvoiceDate" />
            <asp:BoundField DataField="InvoiceTotal" HeaderText="InvoiceTotal" SortExpression="InvoiceTotal" />
            <asp:BoundField DataField="PaymentTotal" HeaderText="PaymentTotal" SortExpression="PaymentTotal" />
            <asp:BoundField DataField="CreditTotal" HeaderText="CreditTotal" SortExpression="CreditTotal" />
            <asp:BoundField DataField="TermsID" HeaderText="TermsID" SortExpression="TermsID" />
            <asp:BoundField DataField="DueDate" HeaderText="DueDate" SortExpression="DueDate" />
            <asp:BoundField DataField="PaymentDate" HeaderText="PaymentDate" SortExpression="PaymentDate" />
        </Columns>
    </asp:GridView>
<asp:SqlDataSource ID="PayablesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:PayablesConnectionString %>" SelectCommand="SELECT * FROM [Invoices]" DeleteCommand="DELETE FROM [Invoices] WHERE [InvoiceID] = @InvoiceID" InsertCommand="INSERT INTO [Invoices] ([VendorID], [InvoiceNumber], [InvoiceDate], [InvoiceTotal], [PaymentTotal], [CreditTotal], [TermsID], [DueDate], [PaymentDate]) VALUES (@VendorID, @InvoiceNumber, @InvoiceDate, @InvoiceTotal, @PaymentTotal, @CreditTotal, @TermsID, @DueDate, @PaymentDate)" UpdateCommand="UPDATE [Invoices] SET [VendorID] = @VendorID, [InvoiceNumber] = @InvoiceNumber, [InvoiceDate] = @InvoiceDate, [InvoiceTotal] = @InvoiceTotal, [PaymentTotal] = @PaymentTotal, [CreditTotal] = @CreditTotal, [TermsID] = @TermsID, [DueDate] = @DueDate, [PaymentDate] = @PaymentDate WHERE [InvoiceID] = @InvoiceID">
    <DeleteParameters>
        <asp:Parameter Name="InvoiceID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="VendorID" Type="Int32" />
        <asp:Parameter Name="InvoiceNumber" Type="String" />
        <asp:Parameter Name="InvoiceDate" Type="DateTime" />
        <asp:Parameter Name="InvoiceTotal" Type="Decimal" />
        <asp:Parameter Name="PaymentTotal" Type="Decimal" />
        <asp:Parameter Name="CreditTotal" Type="Decimal" />
        <asp:Parameter Name="TermsID" Type="Int32" />
        <asp:Parameter Name="DueDate" Type="DateTime" />
        <asp:Parameter Name="PaymentDate" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="VendorID" Type="Int32" />
        <asp:Parameter Name="InvoiceNumber" Type="String" />
        <asp:Parameter Name="InvoiceDate" Type="DateTime" />
        <asp:Parameter Name="InvoiceTotal" Type="Decimal" />
        <asp:Parameter Name="PaymentTotal" Type="Decimal" />
        <asp:Parameter Name="CreditTotal" Type="Decimal" />
        <asp:Parameter Name="TermsID" Type="Int32" />
        <asp:Parameter Name="DueDate" Type="DateTime" />
        <asp:Parameter Name="PaymentDate" Type="DateTime" />
        <asp:Parameter Name="InvoiceID" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
