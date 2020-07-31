<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Assignment1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 40%;
        }
        .auto-style2 {
            width: 292px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblcalculator" runat="server" Font-Bold="True" ForeColor="#FF3300" Text="Calculator"></asp:Label>
            <br />
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblsource" runat="server" Text="Source" Font-Bold="True" ForeColor="Blue"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="lbltarget" runat="server" Text="Target" Font-Bold="True" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:DropDownList ID="ddlinput" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlinput_SelectedIndexChanged">
                            <asp:ListItem>Please Choose One</asp:ListItem>
                            <asp:ListItem>Decimal</asp:ListItem>
                            <asp:ListItem>Binary</asp:ListItem>
                            <asp:ListItem>Octal</asp:ListItem>
                            <asp:ListItem>Hexadecimal</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="ddltarget" runat="server">
                            <asp:ListItem>Please Choose One</asp:ListItem>
                            <asp:ListItem>Decimal</asp:ListItem>
                            <asp:ListItem>Binary</asp:ListItem>
                            <asp:ListItem>Octal</asp:ListItem>
                            <asp:ListItem>Hexadecimal</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtinput" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="outputlbl" runat="server" Text="Output"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="instatelbl" runat="server" Font-Bold="True" ForeColor="Red" Text="Please Enter Your Input here"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="outstatlbl" runat="server" Font-Bold="True" ForeColor="Red" Text="Your Output Appears Here"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnconvert" runat="server" Text="Convert" OnClick="btnconvert_Click" />
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnclear" runat="server" Text="Clear" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
