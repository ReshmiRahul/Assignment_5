<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="student_confirmation.aspx.cs" Inherits="Masterpage_Assignment.student_confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="243px" OnRowDeleting="GridView1_RowDeleting" Width="502px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" DataKeyNames="lid">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <input type ="checkbox" runat="server" name="ch" value='<%Eval("lid")%>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="username" HeaderText="username" />
        <asp:BoundField DataField="status" HeaderText="status" />
        <asp:BoundField DataField="role" HeaderText="role" />
        <asp:CommandField DeleteText="Confirm" ShowDeleteButton="True" />
    </Columns>
</asp:GridView>
</asp:Content>
