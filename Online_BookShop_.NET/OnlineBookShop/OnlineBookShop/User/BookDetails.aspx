<%@ Page Language="C#" MasterPageFile="~/User/MasterUser.master" AutoEventWireup="true" CodeFile="BookDetails.aspx.cs" Inherits="User_BookDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 33px;
        }
        .style6
        {
        }
        .style7
        {
            width: 137px;
        }
        .style9
        {
        }
        .style10
        {
            width: 318px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;" class="content" align="left">
        <tr>
            <td colspan="3">
            </td>
        </tr>
        <tr>
            <td colspan="3">
            </td>
        </tr>        
        <tr>
            <td colspan="3">
            </td>
        </tr>    
         <tr>
            <td colspan="3" class="style1">
                <h1>&nbsp;&nbsp;&nbsp;&nbsp;Book Details:</h1>
            </td>
        </tr>
        <tr>
            <td align="right" class="style10">
                
            </td>
            <td colspan="2">
                &nbsp;&nbsp;
               </td>
        </tr>
        <tr>
            <td align="left" class="style10" rowspan="4">
                
                <asp:Image ID="Image1" runat="server" Height="300px" Width="300px" />
            </td>
            <td class="style7" align="right" valign="bottom">
                <asp:Label ID="Label1" runat="server" Font-Size="24px" ForeColor="Blue" 
                    Text="Title:"></asp:Label>
            </td>
            <td valign="bottom">
                <asp:Label ID="Label8" runat="server" Font-Size="20px" ForeColor="#663300" 
                    Text="Label"></asp:Label>
            </td>
        </tr>       
        <tr>
            <td class="style7" align="right" valign="bottom">
                <asp:Label ID="Label2" runat="server" Font-Size="24px" ForeColor="Blue" 
                    Text="Author:"></asp:Label>
            </td>
            <td valign="bottom">
                <asp:Label ID="Label9" runat="server" Font-Size="20px" ForeColor="#663300" 
                    Text="Label"></asp:Label>
            </td>
        </tr>       
        <tr>
            <td class="style7" align="right" valign="bottom">
                <asp:Label ID="Label3" runat="server" Font-Size="24px" ForeColor="Blue" 
                    Text="Publisher:"></asp:Label>
            </td>
            <td valign="bottom">
                <asp:Label ID="Label10" runat="server" Font-Size="20px" ForeColor="#663300" 
                    Text="Label"></asp:Label>
            </td>
        </tr>       
        <tr>
            <td class="style7" align="right" valign="bottom">
                <asp:Label ID="Label4" runat="server" Font-Size="24px" ForeColor="Blue" 
                    Text="Price:"></asp:Label>
            </td>
            <td valign="bottom">
                <asp:Label ID="Label11" runat="server" Font-Size="20px" ForeColor="#663300" 
                    Text="Label"></asp:Label>
            </td>
        </tr>       
        <tr>
            <td align="right" class="style6" colspan="3">
                
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style10">
                
                <asp:Label ID="Label5" runat="server" Font-Size="24px" ForeColor="Blue" 
                    Text="Year:"></asp:Label>
                
            </td>
            <td align="left" colspan="2" valign="bottom">
                <asp:Label ID="Label12" runat="server" Font-Size="20px" ForeColor="#663300" 
                    Text="Label"></asp:Label>
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="right" class="style10">
                
                <asp:Label ID="Label6" runat="server" Font-Size="24px" ForeColor="Blue" 
                    Text="Details:"></asp:Label>
            </td>
            <td align="left" colspan="2" valign="bottom">
                <asp:Label ID="Label13" runat="server" Font-Size="14px" ForeColor="#663300" 
                    Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style10">
                
                <asp:Label ID="Label7" runat="server" Font-Size="24px" ForeColor="Blue" 
                    Text="Author Details:"></asp:Label>
                
            </td>
            <td align="left" colspan="2" valign="bottom">
                &nbsp;&nbsp;
                <asp:Label ID="Label14" runat="server" Font-Size="14px" ForeColor="#663300" 
                    Text="Label"></asp:Label>
            </td>
        </tr>
        <tr >
            <td align="center" colspan="3" class="helptext2" >
                Quantity : 
            
                        &nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
               
                &nbsp;&nbsp;
                &nbsp;
                
                            
            </td>
        </tr>
        <tr>
            <td align="center" class="style9" colspan="3">
                
                &nbsp;&nbsp;
&nbsp;&nbsp;<br />
&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="38px" 
                    ImageUrl="~/Images/Addcart.gif" Width="201px" 
                    onclick="ImageButton1_Click" />
                
            </td>
        </tr>
        <tr>
            <td align="right" class="style10">
                
            </td>
            <td colspan="2">
                &nbsp;&nbsp;<br />
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
&nbsp;</td>
        </tr>        
        </table>
</asp:Content>

