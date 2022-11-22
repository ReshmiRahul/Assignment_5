<%@ Page Title="" Language="C#" MasterPageFile="~/Guestmaster.Master" AutoEventWireup="true" CodeBehind="Faculty_Register.aspx.cs" Inherits="Masterpage_Assignment.Faculty_Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 79%;
            height: 610px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
            width: 270px;
        }
        .auto-style8 {
            width: 270px;
        }
        .auto-style9 {
            width: 270px;
            height: 40px;
        }
        .auto-style10 {
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4" align="center">
        <tr>
            <td class="auto-style8">&nbsp;REGISTRATION FORM<br />
                <br />
            
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
</td>
        </tr>
        <tr>
            <td class="auto-style8">Email</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Phone</td>
            <td>
                <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Gender</td>
            <td><asp:Label ID="Label18" runat="server" Text="Male"></asp:Label>
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="A" />
        <asp:Label ID="Label19" runat="server" Text="Female"></asp:Label>
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="A" />
        <asp:Label ID="Label20" runat="server" Text="Others"></asp:Label>
        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="A" />&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">Course Completed</td>
            <td>
                <asp:DropDownList ID="dwcourse" runat="server">
                    <asp:ListItem Value="None"></asp:ListItem>
                    <asp:ListItem Value="PHP"></asp:ListItem>
                    <asp:ListItem Value="SQL"></asp:ListItem>
                    <asp:ListItem Value="C#"></asp:ListItem>
                    <asp:ListItem Value="JAVA"></asp:ListItem>
                    <asp:ListItem Value="C"></asp:ListItem>
                    <asp:ListItem Value="CPP"></asp:ListItem>
                    <asp:ListItem Value="PYTHON"></asp:ListItem>
                    <asp:ListItem Value=".NET"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">DOB</td>
            <td> <asp:Label ID="Label11" runat="server" Text="Day"></asp:Label>
        &nbsp;
        <asp:DropDownList ID="ddday" runat="server">
        </asp:DropDownList>
        &nbsp;
         <asp:Label ID="Label12" runat="server" Text="Month"></asp:Label>
        &nbsp;
        <asp:DropDownList ID="ddmonth" runat="server">
            <asp:ListItem>JAN</asp:ListItem>
            <asp:ListItem>FEB</asp:ListItem>
            <asp:ListItem>MAR</asp:ListItem>
            <asp:ListItem>APR</asp:ListItem>
            <asp:ListItem>MAY</asp:ListItem>
            <asp:ListItem>JUN</asp:ListItem>
            <asp:ListItem>JUL</asp:ListItem>
            <asp:ListItem>AUG</asp:ListItem>
            <asp:ListItem>SEP</asp:ListItem>
            <asp:ListItem>OCT</asp:ListItem>
            <asp:ListItem>NOV</asp:ListItem>
            <asp:ListItem>DEC</asp:ListItem>
        </asp:DropDownList>
        &nbsp;
         <asp:Label ID="Label13" runat="server" Text="Year"></asp:Label>
        &nbsp;
        <asp:DropDownList ID="ddyear" runat="server">
        </asp:DropDownList></td>
        </tr>
       
        <tr>
            <td class="auto-style8">State</td>
            <td>    <asp:DropDownList ID="state" runat="server" AutoPostBack="True">
            <asp:ListItem>None</asp:ListItem>
            <asp:ListItem>Kerala</asp:ListItem>
            <asp:ListItem>Andrapradesh</asp:ListItem>
            <asp:ListItem>Kashmir</asp:ListItem>
            <asp:ListItem>Manipur</asp:ListItem>
            <asp:ListItem>Goa</asp:ListItem>
            <asp:ListItem>Maharashtra</asp:ListItem>
            <asp:ListItem>MP</asp:ListItem>
            <asp:ListItem>Gujarat</asp:ListItem>
            <asp:ListItem>Sikkim</asp:ListItem>
            <asp:ListItem>Tamilnadu</asp:ListItem>
        </asp:DropDownList></td>
        </tr>
        <tr>
            <td class="auto-style8">Username</td>
            <td> <asp:TextBox ID="user" runat="server"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Password</td>
            <td class="auto-style5">
                <asp:TextBox ID="pass" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Confirm Password</td>
            <td class="auto-style10">
                <asp:TextBox ID="confirm" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <br />
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
