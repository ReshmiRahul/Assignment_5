<%@ Page Title="" Language="C#" MasterPageFile="~/Guestmaster.Master" AutoEventWireup="true" CodeBehind="Guest_login.aspx.cs" Inherits="Masterpage_Assignment.Guest_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 56%;
            height: 352px;
        }
        .auto-style5 {
            width: 268px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4" align="center">
        <tr>
            <td class="auto-style5">LOGIN<br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <br />
                Username</td>
            <td>
                <br />
                <asp:TextBox ID="user" runat="server" Height="27px" Width="264px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Password<br />
            </td>
            <td>
                <asp:TextBox ID="pass" runat="server" Height="27px" Width="264px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <br />
                <asp:Button ID="Button2" runat="server" Text="Login" Height="36px" Width="193px" OnClick="Button2_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
