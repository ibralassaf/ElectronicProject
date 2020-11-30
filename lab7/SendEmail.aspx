<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.Master" AutoEventWireup="true" CodeBehind="SendEmail.aspx.cs" Inherits="lab7.SendEmail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 744px;
        }
        .auto-style2 {
            width: 1318px;
        }
        .auto-style3 {
            max-width: 100%;
            height: 241px;
            width: 470px;
        }
        .auto-style4 {
            width: 1318px;
            height: 51px;
        }
        .auto-style5 {
            width: 744px;
            height: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style2">
                                         <img src="/Resources/email.png" class="auto-style3" alt="Responsive image"></td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
        <label>Email address</label>
        <asp:TextBox class="form-control" placeholder="name@example.com" ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="You must enter a valid email address!*" ValidationExpression="^\S+@\S+\.\S+$" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                                                   <label>Subject</label>
                <asp:TextBox class="form-control" ID="TextBox3" runat="server" ></asp:TextBox>

                </td>

            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter the subject*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>

        </tr>
        <tr>
            <td class="auto-style2">
                       <label>Message</label>
                <asp:TextBox class="form-control" ID="TextBox2" runat="server" Rows="3" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style1">            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter the messege*" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <br />
             <asp:Button ID="Button1" runat="server" class="btn btn-primary mb-2" Text="Send" OnClick="Button1_Click" />
            </td>
            <td class="auto-style1">            <strong>            <asp:Label ID="Label1" runat="server"  class="alert alert-success" role="alert" Visible="False"></asp:Label>
                </strong>
</td>
        </tr>
    </table>


</asp:Content>
