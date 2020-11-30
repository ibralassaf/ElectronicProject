<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.Master" AutoEventWireup="true" CodeBehind="UserControl.aspx.cs" Inherits="Project.UserControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 1411px;
    }
    .auto-style2 {
        width: 430px;
    }
    .auto-style4 {
        width: 835px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />

    <table style="width:100%;">
    <tr>
        <td class="auto-style2">
            &nbsp;👥 Select User :</td>
        <td class="auto-style4">
            <asp:DropDownList class="form-control" ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
            </asp:DropDownList>
            <br />
        </td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label1" runat="server" Text="👤 Username :"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjecttConnectionString2 %>" SelectCommand="SELECT [name] FROM [userAccount]"></asp:SqlDataSource>
            <br /></td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" Text="🔑 Password :"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
            <br /></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label3" runat="server" Text="🛠 Role :"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                <asp:ListItem>admin</asp:ListItem>
                <asp:ListItem>customer</asp:ListItem>
                <asp:ListItem>guest</asp:ListItem>
            </asp:DropDownList>
            <br /></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label4" runat="server" Text="Label" class="alert alert-success" role="alert" Visible="False"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Search 🔎" Width="134px" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Edit ⚙" Width="134px" OnClick="Button2_Click"  />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

</asp:Content>
