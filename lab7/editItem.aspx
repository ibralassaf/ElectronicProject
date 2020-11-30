<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.Master" AutoEventWireup="true" CodeBehind="editItem.aspx.cs" Inherits="lab7.editItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Edit Item</h2>
<br />
    <table class="table" style="width: 100%;background-image: url('/Resources/background.png');">
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label2" runat="server" Text="🆔 Item ID"></asp:Label>
            </td>
            <td class="text-left">
                <asp:TextBox class="form-control" ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="🛒 Item Name"></asp:Label>
            </td>
            <td class="text-left">
                <asp:TextBox class="form-control" ID="TextBox2" placeholder="Enter The Name First" runat="server" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Text="💲 Item Price"></asp:Label>
            </td>
            <td class="text-left">
                <asp:TextBox class="form-control" ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Text="🔢 item Quantity"></asp:Label>
            </td>
            <td class="text-left">
                <asp:TextBox class="form-control" ID="TextBox4" runat="server"  TextMode="Number"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Text="💰 Item Discount (50%)"></asp:Label>
            </td>
            <td class="text-left">
                <asp:RadioButton class="form-check-input" ID="RadioButton1" runat="server" CssClass="auto-style4" Text="Yes" GroupName="Discount" />
                <br />
                <asp:RadioButton class="form-check-input" ID="RadioButton2" runat="server" CssClass="auto-style5" Text="No" GroupName="Discount" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label7" runat="server" Text="🛒 Item Catagory"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="category" DataValueField="category"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjecttConnectionString2 %>" SelectCommand="SELECT [category] FROM [product]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <br />
                <asp:Label  class="alert alert-warning" role="alert" Visible="False" ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:Label  class="alert alert-success" role="alert" Visible="False" ID="Label8" runat="server" Text="Label"></asp:Label>

                <br />
            </td>
            <td class="text-left">
                <br />
                <asp:Button ID="Button1" runat="server" class="btn btn-warning mb-2" Text="Search 🔎" OnClick="Button1_Click" Font-Size="Large" />
&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" class="btn btn-dark mb-2" Text="Edit ⚙" OnClick="Button2_Click" Font-Size="Large"  />
            </td>
        </tr>
    </table>

</asp:Content>
