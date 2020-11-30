<%@ Page Title="" Language="C#" MasterPageFile="~/customerMaster.Master" AutoEventWireup="true" CodeBehind="ViewAllItems.aspx.cs" Inherits="lab7.ViewAllItems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
            width: 664px;
        }
    .auto-style2 {
        width: 723px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="text-left">

    <table style="width:100%;">
        <tr>
            <td class="auto-style1">

            </td>
            <td class="auto-style2">

                <h2>View All The Items Page</h2>
            </td>
            <td class="auto-style8">

                </td>
        </tr>
        <tr>
            <td class="auto-style1">
                                &nbsp;</td>
            <td class="auto-style2">
                                <br />
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" Width="640px">
                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                                        <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                                        <asp:CheckBoxField DataField="WithDiscount" HeaderText="WithDiscount" SortExpression="WithDiscount" />
                                        <asp:CheckBoxField DataField="NoDiscount" HeaderText="NoDiscount" SortExpression="NoDiscount" />
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
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjecttConnectionString2 %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ComputerStoreConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
                                <br />
                                <br />

            </td>
            <td>
                                &nbsp;</td>
        </tr>
    </table>

</div>

</asp:Content>
