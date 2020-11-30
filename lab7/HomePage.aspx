<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Project.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <title></title>
        <style type="text/css">
            body{
                background-image: url('/Resources/background.jpg');
            }
            .auto-style1 {
                height: 26px;
                width: 1099px;
            }
            .auto-style2 {
                width: 1099px;
            }
            .auto-style3 {
                width: 89%;
                max-width: 1140px;
                margin-left: auto;
                margin-right: auto;
                padding-left: 15px;
                padding-right: 15px;
            }
        </style>

</head>
<body>
    <form id="form1" runat="server">
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

                    <div style ="background-image: url('/Resources/background.jpg')">
        <main role="main"  class="inner cover">
            <br />
        <table style="width:100%;"background-image: url('/Resources/background.jpg')"">
            <tr>
                <td class="auto-style2">
            <h1 class="cover-heading">Welcome To Electronics Shop 🖥. </h1>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
            <p class="lead">Shop for All Kind of Electronics Please Login to use the website .</p>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                <a href="LoginPage.aspx" class="btn btn-lg btn-secondary">Login Here 🔐</a><div class="auto-style3">
   <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
       <br />
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/Resources/computer.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/Resources/tablet.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/Resources/laptop.jpg" class="d-block w-100" alt="...">
    </div>
      <br />
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
                    
                </td>
            </tr>
                        
        </table>
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

                
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

            </div>
    </form>
</body>
</html>
