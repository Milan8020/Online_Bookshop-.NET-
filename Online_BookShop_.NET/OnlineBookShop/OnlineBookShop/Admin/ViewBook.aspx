<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="ViewBook.aspx.cs" Inherits="Admin_ViewBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" 
    BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
    CellPadding="3" CellSpacing="1" GridLines="None">
        <Columns>
            <asp:BoundField DataField="isbnno" HeaderText="isbnno" 
                SortExpression="isbnno" />
            <asp:BoundField DataField="title" HeaderText="title" 
                SortExpression="title" />
            <asp:BoundField DataField="author" HeaderText="author" 
                SortExpression="author" />
            <asp:BoundField DataField="publisher" HeaderText="publisher" 
                SortExpression="publisher" />
            <asp:BoundField DataField="price" HeaderText="price" 
                SortExpression="price" />
            <asp:BoundField DataField="year" HeaderText="year" 
                SortExpression="year" />
            <asp:BoundField DataField="category" HeaderText="category" 
                SortExpression="category" />
            <asp:BoundField DataField="shortdetails" HeaderText="shortdetails" 
                SortExpression="shortdetails" />
            <asp:BoundField DataField="fulldetails" HeaderText="fulldetails" 
                SortExpression="fulldetails" />
            <asp:BoundField DataField="authordetails" HeaderText="authordetails" 
                SortExpression="authordetails" />
            <asp:BoundField DataField="t_image" HeaderText="t_image" 
                SortExpression="t_image" />
            <asp:BoundField DataField="f_image" HeaderText="f_image" 
                SortExpression="f_image" />
        </Columns>
        


        <EmptyDataTemplate>
            <br />
        </EmptyDataTemplate>
        


        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
        


    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT * FROM [books]"></asp:SqlDataSource>
    <br />
    </asp:Content>

