<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RegLogin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 576px;
        }
        .auto-style4 {
            width: 187px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Login"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="txtemail" runat="server" style="margin-left: 85px" Width="301px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Password" ></asp:Label>
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password" style="margin-left: 56px" Width="314px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btnlogin" runat="server" Text="Login" Width="246px" OnClick="btnlogin_Click" />
                    <asp:Button ID="btnreset" runat="server" Text="Reset" Width="269px" OnClick="btnreset_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="error" runat="server" Text="" ForeColor="Red"></asp:Label>

                </td>
            </tr>

        </table>
        <table>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="Don't have a Account? "></asp:Label>

                </td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Register</asp:LinkButton>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
