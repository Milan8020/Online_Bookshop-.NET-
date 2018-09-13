<%@ Page Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="EditAccount.aspx.cs" Inherits="editaccount" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 33px;
        }
        </style>
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
            <td colspan="2">
                <h1>&nbsp;&nbsp;&nbsp;&nbsp;Change Password:</h1>
            </td>
        </tr>
        <tr>
            <td><h3>Old Password:&nbsp;&nbsp;&nbsp;</h3></td>
            <td><asp:TextBox ID="textOldpassword" runat="server" Width="260px" Font-Size="20px" 
                    ontextchanged="textOldpassword_TextChanged"></asp:TextBox>
                <asp:Label ID="labelerror" runat="server" Font-Size="14px" ForeColor="Red" 
                    Text="Incorrect Password." Visible="False"></asp:Label>
                                </td>
        </tr>
        <tr>
            <td><h3>New Password:&nbsp;&nbsp;&nbsp;</h3></td>
            <td><asp:TextBox ID="textNewpassword" runat="server" Width="260px" Font-Size="20px"></asp:TextBox></td>
        </tr>
        <tr>
            <td><h3>Re-enter New Password:&nbsp;&nbsp;&nbsp;</h3></td>
            <td><asp:TextBox ID="textRepassword" runat="server" Width="260px" Font-Size="20px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Size="20px" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Save.gif" 
                    Height="25px" Width="130px" onclick="ImageButton2_Click"/>
                &nbsp;&nbsp;
            </td>
            <td>
                &nbsp;&nbsp;
               <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/Cancel.gif"/>
            </td>
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
            </td>
        </tr>
    </table>
</asp:Content>

