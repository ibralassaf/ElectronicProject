<%@ Page Title="" Language="C#" MasterPageFile="~/customerMaster.Master" AutoEventWireup="true" CodeBehind="BuyItem.aspx.cs" Inherits="lab7.BuyItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1746px;
        }
        .auto-style2 {
            width: 2400px;
        }
        .auto-style3 {
            width: 1746px;
            height: 26px;
        }
        .auto-style4 {
            width: 2400px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="text-left">
        <table style="width:100%;">
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">
                    <h2>Buy Item Page</h2>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">

                    <br />
                   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                                            <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                                            </asp:Timer>
                                            <div>
                                                <asp:Label ID="Label8" runat="server" class="alert alert-info" role="alert" Text="Label" Visible="False"></asp:Label>
                                            </div>
                                            <br />

                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="944px">
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                    <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                                    <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                                                                        <asp:CommandField SelectText="Buy This Product " ShowSelectButton="True" >

                                    <ControlStyle ForeColor="#009900" />
                                    </asp:CommandField>

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
                        </ContentTemplate>
                    </asp:UpdatePanel>

                    <br />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjecttConnectionString2 %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
                    <br />
                    <br /></td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>

</asp:Content>
