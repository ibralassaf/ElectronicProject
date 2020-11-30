<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.Master" AutoEventWireup="true" CodeBehind="UserRole.aspx.cs" Inherits="Project.UserRole" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>User Role Change Page</h2>
                <asp:Label ID="Label1" runat="server" Text="👤 User :"></asp:Label>
            &nbsp;
                <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
                </asp:DropDownList>
                <br />
    <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjecttConnectionString2 %>" SelectCommand="SELECT [name] FROM [userAccount]"></asp:SqlDataSource>
                <asp:Label ID="Label2" runat="server" Text="👥 Role :"></asp:Label>
            &nbsp;
                <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                    <asp:ListItem>admin</asp:ListItem>
                    <asp:ListItem>customer</asp:ListItem>
                    <asp:ListItem>guest</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjecttConnectionString2 %>" SelectCommand="SELECT [role] FROM [userAccount]"></asp:SqlDataSource>
            <br />
    <br />
                <asp:Button ID="Button1" class="btn btn-primary mb-2" runat="server" Text="🛠 Change Role" OnClick="Button1_Click" />
            <br />
    <br />
                <asp:Label ID="Label3" class="alert alert-success" role="alert" Visible="False" runat="server" Text=""></asp:Label>
    <br />

    </asp:Content>
