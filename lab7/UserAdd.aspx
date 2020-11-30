<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.Master" AutoEventWireup="true" CodeBehind="UserAdd.aspx.cs" Inherits="Project.UserAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 26px;
            width: 494px;
        }
        .auto-style3 {
            width: 494px;
        }
        .auto-style4 {
            height: 26px;
            text-align: left;
            width: 359px;
        }
        .auto-style6 {
            width: 359px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table style="width:100%;">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Username :"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
                <br />
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Username*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Password*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="Role :"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                    <asp:ListItem>admin</asp:ListItem>
                    <asp:ListItem>customer</asp:ListItem>
                    <asp:ListItem>guest</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Text="Label" class="alert alert-success" role="alert" Visible="False"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Add" Width="134px" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
