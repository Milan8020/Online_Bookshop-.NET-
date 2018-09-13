<%@ Page Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="AdvancedSearch.aspx.cs" Inherits="Visitor_advancesearch" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 19px;
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
                <h1>&nbsp;&nbsp;&nbsp;Advanced Search:</h1>
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
            <td><h3>Title:&nbsp;&nbsp;&nbsp;</h3></td>
            <td><asp:TextBox ID="textTitle" runat="server" Width="260px" Font-Size="20px"></asp:TextBox></td>
        </tr>
        <tr>
            <td><h3>Author Name:&nbsp;&nbsp;&nbsp;</h3></td>
            <td><asp:TextBox ID="textPassword" runat="server" Width="260px" Font-Size="20px"></asp:TextBox></td>
        </tr>
        <tr>
            <td><h3>Publisher:&nbsp;&nbsp;&nbsp;</h3></td>
            <td><asp:TextBox ID="textPublisher" runat="server" Width="260px" Font-Size="20px"></asp:TextBox></td>
        </tr>
        <tr>
            <td><h3>Category:&nbsp;&nbsp;&nbsp;</h3></td>
            <td>
                <asp:DropDownList ID="dropCategory" runat="server" Height="29px" Width="260px" 
                    Font-Size="20px">
                    <asp:ListItem>Art and Photography</asp:ListItem>
                    <asp:ListItem>Health, Mind and Body</asp:ListItem>
                    <asp:ListItem>Law</asp:ListItem>
                    <asp:ListItem>Literature and Fiction</asp:ListItem>
                    <asp:ListItem>Proffesional and Technical</asp:ListItem>
                    <asp:ListItem>Mystery and Thriller</asp:ListItem>
                    <asp:ListItem>Biography and Memories</asp:ListItem>
                    <asp:ListItem>Reference</asp:ListItem>
                    <asp:ListItem>Religion and Spirituality</asp:ListItem>
                    <asp:ListItem>Science Fiction and Fantacy</asp:ListItem>
                    <asp:ListItem>Travel</asp:ListItem>
                    <asp:ListItem>Outdoor and Natures</asp:ListItem>
                    <asp:ListItem>Business and Investing</asp:ListItem>
                    <asp:ListItem>Children&#39;s Book</asp:ListItem>
                    <asp:ListItem>Computer and Internet</asp:ListItem>
                    <asp:ListItem>Nonfiction</asp:ListItem>
                    <asp:ListItem>Science</asp:ListItem>
                    <asp:ListItem>Entertainment</asp:ListItem>
                    <asp:ListItem>History</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style1">
            </td>
        </tr>    
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td align="right">
                <asp:ImageButton ID="imageSearch" runat="server" ImageUrl="~/Images/Search.gif" Height="25px" Width="130px"/>
                &nbsp;&nbsp;
            </td>
            <td>
                &nbsp;&nbsp;
               <asp:ImageButton ID="imageCancel" runat="server" ImageUrl="~/Images/Cancel.gif"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style1">
            </td>
        </tr>
        <tr>
            <td colspan="2">
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
            </td>
        </tr>
    </table>
</asp:Content>

