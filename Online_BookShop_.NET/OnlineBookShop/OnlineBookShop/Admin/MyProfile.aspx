<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="User_MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" DataKeyNames="username" 
    BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
    CellPadding="3" CellSpacing="1" GridLines="None">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="username" HeaderText="username" 
                SortExpression="username" ReadOnly="True" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="firstname" HeaderText="firstname" 
                SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" 
                SortExpression="lastname" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="pincode" HeaderText="pincode" 
                SortExpression="pincode" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" 
                SortExpression="mobile" />
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
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        DeleteCommand="DELETE FROM [registration] WHERE [username] = @original_username AND [password] = @original_password AND [email] = @original_email AND [firstname] = @original_firstname AND [lastname] = @original_lastname AND [gender] = @original_gender AND [address] = @original_address AND [city] = @original_city AND [state] = @original_state AND [pincode] = @original_pincode AND [mobile] = @original_mobile" 
       InsertCommand="INSERT INTO [registration] ([username], [password], [email], [firstname], [lastname], [gender], [address], [city], [state], [pincode], [mobile]) VALUES (@Username, @password, @email, @firstname, @lastname, @gender, @address, @city, @state, @pincode, @mobile)"
       OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [registration]"
        UpdateCommand="UPDATE [registration] SET [password] = @password , [email] = @email , [firstname] = @firstname , [lastname] = @lastname , [gender] = @gender , [address] = @address , [city] = @city , [state] = @state , [pincode] = @pincode , [mobile] = @mobile WHERE ([username] = @original_username AND [password] = @original_password)">
        <DeleteParameters>
            <asp:Parameter Name="original_username" Type="String" />
            <asp:Parameter Name="original_password" Type="String" />
            <asp:Parameter Name="original_email" Type="String" />
            <asp:Parameter Name="original_firstname" Type="String" />
            <asp:Parameter Name="original_lastname" Type="String" />
            <asp:Parameter Name="original_gender" Type="String" />
            <asp:Parameter Name="original_address" Type="String" />
            <asp:Parameter Name="original_city" Type="String" />
            <asp:Parameter Name="original_state" Type="String" />
            <asp:Parameter Name="original_pincode" Type="String" />
            <asp:Parameter Name="original_mobile" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="pincode" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Username" SessionField="Username" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="pincode" Type="String" />
            <asp:Parameter Name="mobile" Type="String" />
            <asp:Parameter Name="original_username" Type="String" />
            <asp:Parameter Name="original_password" Type="String" />
            <asp:Parameter Name="original_email" Type="String" />
            <asp:Parameter Name="original_firstname" Type="String" />
            <asp:Parameter Name="original_lastname" Type="String" />
            <asp:Parameter Name="original_gender" Type="String" />
            <asp:Parameter Name="original_address" Type="String" />
            <asp:Parameter Name="original_city" Type="String" />
            <asp:Parameter Name="original_state" Type="String" />
            <asp:Parameter Name="original_pincode" Type="String" />
            <asp:Parameter Name="original_mobile" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

