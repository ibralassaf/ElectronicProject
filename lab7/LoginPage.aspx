<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Project.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <title>Login Page</title>
      <style type="text/css">
        .auto-style1 {
            width: 100%;
            max-width: 1140px;
            text-align: center;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style2 {
            margin-bottom: 1rem;
            text-align: left;
        }
    </style>
</head>

    <body>
    <form id="form2" runat="server">
        <div>



            <div>
                <nav class="site-header sticky-top py-1">
                    <div class="container d-flex flex-column flex-md-row justify-content-between">
                        <a class="py-2" href="HomePage.aspx" aria-label="Home">
                            <!--this is for the logo icon -->
                            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-laptop" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <title>Home</title>
                                <path fill-rule="evenodd" d="M13.5 3h-11a.5.5 0 0 0-.5.5V11h12V3.5a.5.5 0 0 0-.5-.5zm-11-1A1.5 1.5 0 0 0 1 3.5V12h14V3.5A1.5 1.5 0 0 0 13.5 2h-11z" />
                                <path d="M0 12h16v.5a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 12.5V12z" />

                            </svg>
                        </a>

                    </div>
                </nav>

                <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">

                    <div >
        <main role="main" class="inner cover">
            <br />
       <div>
            <div class="auto-style1">
                 <img src="/Resources/login.png" class="img-fluid" alt="Responsive image">

      <form class="text-left">
  <div class="auto-style2">
    <label>👤 Username</label>
      <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
    <small id="usernote" class="form-text text-muted">
      <div class="text-left">
          <strong>Admin Account</strong> : admin 123 </br>
          <strong>Customer Account</strong> : customer 123</div>
      </small>
  &nbsp;</div>
  <div class="text-left">
    <label>🔐 Password</label>
      <asp:TextBox ID="TextBox2" class="form-control" runat="server" TextMode="Password"></asp:TextBox>

  </div>

          <div class="text-left">

          <br />

</form>
        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Login ✔" OnClick="Button1_Click" Font-Size="Large" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" class="alert alert-danger" role="alert" Visible="False"></asp:Label>
        </div>
</div>
        <br />
            <p class="lead">
                &nbsp;</p>
        </main>

        &nbsp;</div>

                </div>

                <footer class="container py-5">
                    <div class="row">
                        <div class="col-12 col-md">
                            <small class="d-block mb-3 text-muted">© 2020-2020</small>
                        </div>
                </footer>



            </div>
    </form>
</body>
</html>
