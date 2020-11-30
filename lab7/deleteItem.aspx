<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.Master" AutoEventWireup="true" CodeBehind="deleteItem.aspx.cs" Inherits="lab7.deleteItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
        width: 700px;
        text-align: center;
    }
    .auto-style5 {
        width: 404px;
        text-align: center;
    }
    .auto-style6 {
        width: 700px;
        text-align: center;
        height: 51px;
    }
    .auto-style7 {
        width: 404px;
        text-align: center;
        height: 51px;
    }
    .auto-style8 {
        height: 51px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Delete Item</h2>
    <table style="width:100%;">
        <tr>
            <td class="auto-style6">

            </td>
            <td class="auto-style7">

                <asp:Label ID="Label8" runat="server" Text="🆔 Item ID" Font-Size="Large"></asp:Label>
                                <div class="text-left">
                                <asp:TextBox class="form-control" ID="TextBox1" runat="server" ></asp:TextBox>
                </div>
            </td>
            <td class="auto-style8">

                </td>
        </tr>
        <tr>
            <td class="auto-style4">
                                &nbsp;</td>
            <td class="auto-style5">
                                <br />
                                <asp:Button ID="Button1" runat="server" class="btn btn-danger mb-2" Text="Delete ❌" OnClick="Button1_Click" Font-Size="Large" />
                                <br />
                                <br />
                <asp:Label  class="alert alert-success" role="alert" Visible="False" ID="Label1" runat="server" Text="Label"></asp:Label>

            </td>
            <td>
                                &nbsp;</td>
        </tr>
    </table>

</asp:Content>
