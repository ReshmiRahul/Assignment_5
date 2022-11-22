<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="faculty_confirmation.aspx.cs" Inherits="Masterpage_Assignment.faculty_confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="285px" OnRowDeleting="GridView1_RowDeleting" Width="681px">
    <Columns>
        <asp:BoundField DataField="name" HeaderText="Name" />
        <asp:BoundField DataField="email" HeaderText="Email" />
        <asp:BoundField DataField="gender" HeaderText="Gender" />
        <asp:CommandField DeleteText="Confirm" HeaderText="Status" ShowDeleteButton="True" />
    </Columns>
</asp:GridView>
</asp:Content>
