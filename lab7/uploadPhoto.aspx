<%@ Page Title="" Language="C#" MasterPageFile="~/customerMaster.Master" AutoEventWireup="true" CodeBehind="uploadPhoto.aspx.cs" Inherits="lab7.uploadPhoto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 1rem;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="auto-style1">
          <h2>Upload Photo Page</h2>
          <br />
          <label>
          <br />
          Photo Upload</label>
          <div class="text-left">
          <asp:FileUpload class="form-control-file" ID="FileUpload1" runat="server" />
          

          </div>
          

          <br />
          

          <br />
          

          <asp:Button ID="Button1" runat="server" class="btn btn-primary mb-2" Text="Upload" OnClick="Button1_Click" />
          <br />
          <br />
          <asp:Label ID="Label1" runat="server"  class="alert alert-success" role="alert" Visible="False"></asp:Label>
  </div>
</asp:Content>
