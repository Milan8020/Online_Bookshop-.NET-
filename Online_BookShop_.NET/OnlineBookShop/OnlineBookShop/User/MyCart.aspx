<%@ Page Language="C#" MasterPageFile="~/User/MasterUser.master" AutoEventWireup="true" CodeFile="MyCart.aspx.cs" Inherits="User_MyCart" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" AllowPaging="True" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" >
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="publisher" HeaderText="publisher" 
            SortExpression="publisher" />
        <asp:BoundField DataField="isbnno" HeaderText="isbnno" 
            SortExpression="isbnno" />
        <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
        <asp:BoundField DataField="author" HeaderText="author" 
            SortExpression="author" />
        <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        <asp:BoundField DataField="quantity" HeaderText="quantity" 
            SortExpression="quantity" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
    SelectCommand="SELECT [publisher], [isbnno], [title], [author], [year], [price], [quantity] FROM [MyCart1] WHERE ([username] = @username)">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="" Name="username" SessionField="Username" 
            Type="String" />
    </SelectParameters>
</asp:SqlDataSource>



    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Pay Now" />
    <br />
    <br />
    <br />
    <br />
    <br />



</asp:Content>

