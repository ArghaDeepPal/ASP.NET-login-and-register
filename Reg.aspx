<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="RegLogin.Reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 225px;
        }
        .auto-style2 {
            width: 225px;
            height: 39px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HiddenField ID="hfuserid" runat="server" />
    <table>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Registration Page" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label></td>
            <td>
                <asp:TextBox ID="name" runat="server" style="margin-left: 0px"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label></td>
            <td>
                <asp:TextBox ID="email" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label></td>
            <td>
                <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label5" runat="server" Text="Retype Password"></asp:Label></td>
            <td>
                <asp:TextBox ID="repassword" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label></td>
            <td>
                <asp:TextBox ID="address" runat="server" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label7" runat="server" Text="Date of Birth"></asp:Label></td>
            <td>
                <asp:TextBox ID="dob" runat="server"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label8" runat="server" Text="Gender"></asp:Label></td>
            <td>
               <asp:DropDownList ID="gender" runat="server">
                   <asp:ListItem>Male</asp:ListItem>
                   <asp:ListItem>Female</asp:ListItem>
                   <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                </td>
            
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label9" runat="server" Text="Phone Number"></asp:Label></td>
            <td><asp:TextBox ID="phone" runat="server"></asp:TextBox></td>
            
        </tr>
        
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" /></td>
            <td>
                <asp:Button ID="btnreset" runat="server" Text="Reset" OnClick="btnreset_Click" /></td>
        </tr>
         
        <tr>
            <td class="auto-style1">
                
            <asp:Label ID="success" runat="server" Text="" ForeColor="Green"></asp:Label></td>
            <td>
                
            <asp:Label ID="error" runat="server" Text="" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style1">
                
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Back to Login?</asp:LinkButton>
            </td>
        </tr>
    
    </div>
    </form>
         
        
    
    </body>
</html>
