<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="_2tier.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 525px;
            height: 408px;
        }
        .auto-style2 {
            height: 109px;
        }
        .auto-style3 {
            width: 314px;
        }
        .auto-style4 {
            height: 109px;
            width: 314px;
        }
        .auto-style5 {
            height: 111px;
            width: 314px;
        }
        .auto-style6 {
            height: 111px;
        }
        .auto-style7 {
            width: 314px;
            height: 76px;
        }
        .auto-style8 {
            height: 76px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table align="center" class="auto-style1" border="1">
               
                <tr>
                    <td class="auto-style3" style="font-size: x-large; font-weight: bolder; color: #800000">
                        EMPLOYEE DETAILS
                    </td>
                </tr><tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label4" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style8">
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        Email</td>
                    <td class="auto-style6">
                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        Phone Number</td>
                    <td class="auto-style2">
                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

                    </td>
                </tr>
               
                <tr>
                    <td class="auto-style4">
                        Age</td>
                    <td class="auto-style2">
                                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>

                    </td>
                </tr>
               
            </table>
        </div>
    </form>
</body>
</html>
