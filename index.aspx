<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ground Water Level Prediction</title>
    <link href="groundstyle.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1
        {
            font-size: x-large;
        }
        .auto-style2
        {
            height: 103px;
        }
        .auto-style3
        {
            height: 101px;
        }
        .auto-style4
        {
            height: 139px;
        }
        .auto-style5
        {
            height: 101px;
            width: 290px;
        }
        .auto-style6
        {
            height: 103px;
            width: 290px;
        }
        .auto-style7
        {
            height: 139px;
            width: 290px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        2<table style="width:100%;height:100px; background-color: #66CCFF; color: #333333; font-size: x-large; text-align: center;">
        <tr>
            <td style="font-size: xx-large">
                Ground Water Level Prediction
            </td>
        </tr>
    </table>
        <table style="width:100%;height:17px; background-color: #CCCCCC;">
            <tr>
                <td>

                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <center>
            <table style="height: 236px; width: 301px; margin-left: 0px;">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Text="Username" CssClass="auto-style1"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtusername" runat="server" CssClass="auto-style1"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label2" runat="server" Text="Password" CssClass="auto-style1"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" CssClass="auto-style1"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style7">
                       <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" Width="88px" CssClass="auto-style1"></asp:Button>
                    </td>
                    <td class="auto-style4">
                     <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" CssClass="auto-style1"></asp:Button>
                    </td>
                </tr>
            </table>
        </center>
    </div>
    </form>
</body>
</html>
