<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.Master" AutoEventWireup="true" CodeBehind="selectItem.aspx.cs" Inherits="lab7.selectItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 28px;
        }
        .auto-style2 {
            text-align: left;
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>&nbsp;<asp:Image ID="Image1" runat="server" Height="164px" ImageUrl="~/Resources/search.png" Width="171px" />
    </h2>
    <h2>Select Item</h2>
<br />
    <table class="table" style="width: 100%;">
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label2" runat="server" Text="🆔 Item ID" ForeColor="Black"></asp:Label>
            </td>
            <td class="text-left">
                <asp:TextBox class="form-control" ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text="🖥 Item Name" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox class="form-control" ID="TextBox2" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Text="💲 Item Price" ForeColor="Black"></asp:Label>
            </td>
            <td class="text-left">
                <asp:TextBox class="form-control" ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Text="🛒 item Quantity" ForeColor="Black"></asp:Label>
            </td>
            <td class="text-left">
                <asp:TextBox class="form-control" ID="TextBox4" runat="server"  TextMode="Number" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Text="💰 Item Discount (50%)" ForeColor="Black"></asp:Label>
            </td>
            <td class="text-left">
                <asp:RadioButton class="form-check-input" ID="RadioButton1" runat="server" CssClass="auto-style4" Text="Yes" GroupName="Discount" />
                <br />
                <asp:RadioButton class="form-check-input" ID="RadioButton2" runat="server" CssClass="auto-style5" Text="No" GroupName="Discount" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label7" runat="server" Text="💻 Item Catagory" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="category" DataValueField="category" Enabled="False"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjecttConnectionString2 %>" SelectCommand="SELECT [category] FROM [product]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <br />
                <asp:Label  class="alert alert-warning" role="alert" Visible="False" ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="text-left">
                <br />
                <asp:Button ID="Button1" runat="server" class="btn btn-warning mb-2" Text="Search 🔎" OnClick="Button1_Click" Font-Size="Large" />
            </td>
        </tr>
    </table>

</asp:Content>
