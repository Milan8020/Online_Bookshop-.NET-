<%@ Page Language="C#" MasterPageFile="~/User/MasterUser.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Visitor_login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;" class="content">
        <tr>
            <td colspan="2">
            </td>
        </tr>
        <tr>
            <td colspan="2">
            </td>
        </tr>
        <tr>
            <td colspan="2">
            </td>
        </tr>        
        <tr>
            <td colspan="2"><h5>&nbsp;&nbsp;&nbsp;You have not <b style="color:#cbc750;">Logged In</b>. Please Login first to buy any product.</h5></td>
        </tr>
        <tr>
            <td colspan="2">
            </td>
        </tr>    
         <tr>
            <td colspan="2">
                <h1>&nbsp;&nbsp;&nbsp;&nbsp;Login:</h1>
            </td>
        </tr>
        <tr>
            <td><h3>User Name:&nbsp;&nbsp;&nbsp;</h3></td>
            <td><asp:TextBox ID="textUsername" runat="server" Width="260px" Font-Size="20px"></asp:TextBox></td>
        </tr>
        <tr>
            <td><h3>Password:&nbsp;&nbsp;&nbsp;</h3></td>
            <td><asp:TextBox ID="textPassword" runat="server" Width="260px" Font-Size="20px" 
                    TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
            </td>
        </tr>    
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td align="right">
                <asp:ImageButton ID="imageLogin" runat="server" ImageUrl="~/Images/login.gif" 
                    Height="25px" Width="130px" onclick="imageLogin_Click"/>
                &nbsp;&nbsp;
            </td>
            <td>
                &nbsp;&nbsp;
               <asp:ImageButton ID="imageCancel" runat="server" ImageUrl="~/Images/Cancel.gif"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="labelLoginError" runat="server" Font-Bold="True" Font-Size="16px" 
                    ForeColor="Red" Text="Username/Password Is Incorrect." Visible="False"></asp:Label>
            </td>
        </tr>        
        <tr>
            <td colspan="2"><h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;If not a member, then <a href="signup.aspx" class="signup">Sign Up Here</a></h5></td>
        </tr>
        <tr>
            <td align="right">
                &nbsp;</td>
            <td>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

