<%@ Page Title="" Language="C#" MasterPageFile="~/customerMaster.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="lab7.products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
        width: 85px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="The Products"></asp:Label>
    <br />
    <br />
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" Width="1133px" AutoGenerateColumns="False" DataKeyNames="Id">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                        <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                        <asp:CheckBoxField DataField="WithDiscount" HeaderText="WithDiscount" SortExpression="WithDiscount" />
                        <asp:CheckBoxField DataField="NoDiscount" HeaderText="NoDiscount" SortExpression="NoDiscount" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjecttConnectionString2 %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>

    </table>
    <br />
    <br />
    <br />

</asp:Content>
