<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="error.aspx.cs" Inherits="Project.error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="jumbotron">
    <div class="container">
      <div class="alert alert-danger" role="alert">
  You don't have access to this page ⛔
</div>

      <p><a class="btn btn-primary btn-lg" href="LoginPage.aspx" role="button">Back »</a></p>
    </div>
  </div>
        </div>
    </form>
</body>
</html>
