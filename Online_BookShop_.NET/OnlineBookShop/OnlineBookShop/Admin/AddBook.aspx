<%@ Page Language="C#" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="true" CodeFile="AddBook.aspx.cs" Inherits="Admin_addbook" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 74px;
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
                <h1>&nbsp;&nbsp;&nbsp;&nbsp;Insert Book:</h1>
            </td>
        </tr>
        <tr>
            <td><h3>ISBN No:&nbsp;&nbsp;&nbsp;</h3></td>
            <td><asp:TextBox ID="textIsbn" runat="server" Width="260px" Font-Size="20px" 
                    ontextchanged="textIsbn_TextChanged"></asp:TextBox>
                <asp:Label ID="labelBookError" runat="server" EnableTheming="True" 
                    Font-Size="14px" ForeColor="Red" Text="Book already Exist." Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td><h3>Title:&nbsp;&nbsp;&nbsp;</h3></td>
            <td><asp:TextBox ID="textTitle" runat="server" Width="260px" Font-Size="20px"></asp:TextBox></td>
        </tr>
        <tr>
            <td><h3>Author:&nbsp;&nbsp;&nbsp;</h3></td>
            <td><asp:TextBox ID="textAuthor" runat="server" Width="260px" Font-Size="20px"></asp:TextBox></td>
        </tr>
        <tr>
            <td><h3>Publisher:&nbsp;&nbsp;&nbsp;</h3></td>
            <td><asp:TextBox ID="textPublisher" runat="server" Width="260px" Font-Size="20px"></asp:TextBox></td>
        </tr>
        <tr>
            <td><h3>Price:&nbsp;&nbsp;&nbsp;</h3></td>
            <td><asp:TextBox ID="textPrice" runat="server" Width="260px" Font-Size="20px"></asp:TextBox></td>
        </tr>
        <tr>
            <td><h3>Year:&nbsp;&nbsp;&nbsp;</h3></td>
            <td><asp:TextBox ID="textYear" runat="server" Width="260px" Font-Size="20px"></asp:TextBox></td>
        </tr>
        <tr>
            <td><h3>Category:&nbsp;&nbsp;&nbsp;</h3></td>
            <td>
                <asp:DropDownList ID="dropCategory" runat="server" Height="29px" Width="260px" >
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
            <td><h3>Short Detail:&nbsp;&nbsp;&nbsp;</h3></td>
            <td><asp:TextBox ID="textShortdetail" runat="server" Width="400px" Font-Size="20px" 
                    Height="70px" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td><h3>Detail(In Brief):&nbsp;&nbsp;&nbsp;</h3></td>
            <td><asp:TextBox ID="textDetail" runat="server" Width="400px" Font-Size="20px" 
                    Height="100px" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="style2"><h3>Author Details:&nbsp;&nbsp;&nbsp;</h3></td>
            <td class="style2">
                <asp:TextBox ID="textAuthordetail" runat="server" Width="400px" 
                    Font-Size="20px" Height="70px" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td><h3>Upload Book's Thumbnail Image:&nbsp;&nbsp;&nbsp;</h3></td>
            <td><asp:FileUpload ID="t_imageUpload" runat="server" Height="29px" Width="300px" /></td>
        </tr>
        <tr>
            <td><h3>Upload Book's Fullsize Image:&nbsp;&nbsp;&nbsp;</h3></td>
            <td><asp:FileUpload ID="f_imageUpload" runat="server" Height="29px" Width="300px" /></td>            
        </tr>                
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td align="right">
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Save.gif" 
                    Height="29px" Width="130px" onclick="ImageButton2_Click"/>
                &nbsp;&nbsp;
            </td>
            <td>
                &nbsp;&nbsp;
               <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/Cancel.gif" 
                    Height="29px" onclick="ImageButton3_Click" Width="130px"/>
            </td>
        </tr>
        <tr>
            <td align="right">
                &nbsp;</td>
            <td>
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

