<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.Master" AutoEventWireup="true" CodeBehind="UserControlPanel.aspx.cs" Inherits="Project.User_Control" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 77px;
        }
        .auto-style2 {
            height: 77px;
            text-align: left;
            width: 460px;
        }
        .auto-style3 {
            height: 77px;
            width: 460px;
        }
        .auto-style4 {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <h2>User Control</h2>
    <table style="width:100%;">
        <tr>

            <td class="auto-style1">
                <asp:Button class="btn btn-info"  ID="Button1" runat="server" Text="Add User 👤" Height="56px" Width="265px" OnClick="Button1_Click" />
            </td>
            <td class="auto-style3">
                <asp:Button class="btn btn-info"  ID="Button2" runat="server" Text="Change User Information ℹ" Height="56px" Width="265px" OnClick="Button2_Click" />
            </td>
            <td class="auto-style1">
                <asp:Button class="btn btn-info"  ID="Button3" runat="server" Text="User Role 🔑" Height="56px" Width="265px" OnClick="Button3_Click" />
            </td>
        </tr>
        <tr>

            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                <div class="text-center">
                    <br />
                    <strong>General User Information</strong></div>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style4" DataKeyNames="name" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="458px">
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" SortExpression="name" />
                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                        <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjecttConnectionString2 %>" SelectCommand="SELECT [name], [password], [role] FROM [userAccount]"></asp:SqlDataSource>
            </td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>
