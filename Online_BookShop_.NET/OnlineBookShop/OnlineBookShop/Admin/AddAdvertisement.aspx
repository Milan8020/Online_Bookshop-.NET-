<%@ Page Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="AddAdvertisement.aspx.cs" Inherits="Admin_addadvertisement" Title="Untitled Page" %>

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
            <td colspan="2">
                <h1>&nbsp;&nbsp;&nbsp;&nbsp;Add New Advertisement:</h1>
            </td>
        </tr>
         <tr>
            <td><h3>Alternate Text:&nbsp;&nbsp;&nbsp;</h3></td>
            <td><asp:TextBox ID="textAlternate" runat="server" Width="260px" Font-Size="20px"></asp:TextBox></td>
        </tr>
        <tr>
            <td><h3>Upload Advertisement Image:&nbsp;&nbsp;&nbsp;</h3></td>
            <td><asp:FileUpload ID="AdImageUpload" runat="server" Height="29px" Width="260px" /></td>
        </tr>
        <tr>
            <td><h3>Nevigate URL:&nbsp;&nbsp;&nbsp;</h3></td>
            <td><asp:TextBox ID="textNevigate" runat="server" Width="260px" Font-Size="20px"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
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
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

