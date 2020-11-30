<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.Master" AutoEventWireup="true" CodeBehind="addItem.aspx.cs" Inherits="lab7.addItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 235px;
        }
        .auto-style3 {
            width: 235px;
            text-align: left;
        }
        .auto-style4 {
            left: 239px;
            top: 139px;
        }
        .auto-style5 {
            left: 237px;
            top: 165px;
        }
        .auto-style6 {
            width: 235px;
            text-align: left;
            height: 30px;
        }
        .auto-style7 {
            text-align: left;
            height: 30px;
        }
        .auto-style8 {
            width: 235px;
            text-align: left;
            height: 136px;
        }
        .auto-style9 {
            text-align: left;
            height: 136px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Insert Item</h2>
<br />

    <table class="table" style="width: 100%;background-image: url('/Resources/background.png');">
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label2" runat="server" Text="🆔 Item ID"></asp:Label>
            &nbsp;</td>
            <td class="auto-style7">
                <asp:TextBox class="form-control" ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="🛒 Item Name"></asp:Label>
            &nbsp;</td>
            <td class="text-left">
                <asp:TextBox class="form-control" ID="TextBox2" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Text="💲 Item Price"></asp:Label>
            &nbsp;</td>
            <td class="text-left">
                <asp:TextBox class="form-control" ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Text="🔢 item Quantity"></asp:Label>
            &nbsp;</td>
            <td class="text-left">
                <asp:TextBox class="form-control" ID="TextBox4" runat="server"  TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Text="💰 Item Discount (50%)"></asp:Label>
            &nbsp;</td>
            <td class="text-left">
                <asp:RadioButton class="form-check-input" ID="RadioButton1" runat="server" CssClass="auto-style4" Text="Yes" GroupName="Discount" />
                <br />
                <asp:RadioButton class="form-check-input" ID="RadioButton2" runat="server" CssClass="auto-style5" Text="No" GroupName="Discount" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label7" runat="server" Text="💻 Item Catagory"></asp:Label>
            &nbsp;</td>
            <td class="auto-style9">
                <asp:ListBox ID="ListBox1" runat="server">
                    <asp:ListItem>Computer</asp:ListItem>
                    <asp:ListItem>Tablet</asp:ListItem>
                    <asp:ListItem>Laptop</asp:ListItem>
                </asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjecttConnectionString2 %>" SelectCommand="SELECT [category] FROM [product]" ProviderName="<%$ ConnectionStrings:ProjecttConnectionString2.ProviderName %>"></asp:SqlDataSource>
            </td>
        </tr>
         <tr>
            <td class="auto-style2">
                <br />
                <asp:Label  class="alert alert-success" role="alert" Visible="False" ID="Label1" runat="server" Text="Label"></asp:Label>
             </td>
            <td class="text-left">
                <br />
                <asp:Button ID="Button1" runat="server" class="btn btn-primary mb-2" Text="Save ✔" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>

</asp:Content>
