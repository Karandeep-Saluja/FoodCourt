<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="meatball.aspx.cs" Inherits="foodCourt.pages.meatball" %>

<!DOCTYPE html>
<html>
<head id="head9" runat="server">
<title>foodCOURT</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../assets/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="../assets/css/animate.css">
<link rel="stylesheet" type="text/css" href="../assets/css/slick.css">
<link rel="stylesheet" type="text/css" href="../assets/css/theme.css">
<link rel="stylesheet" type="text/css" href="../assets/css/style.css">
<link rel="stylesheet" href="../assets/css/style_table.css">
<!--[if lt IE 9]>
<script src="../assets/js/html5shiv.min.js"></script>
<script src="../assets/js/respond.min.js"></script>
<![endif]-->
</head>
<body>
<div id="preloader">
  <div id="status">&nbsp;</div>
</div>
<a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
<div class="container">
  <header id="header">
    <div class="row">
      <div class="col-lg-12 col-md-12">
       
        <div class="header_bottom">
          <div class="header_bottom_left"><a class="logo" href="../index.aspx">food<strong>COURT</strong> <span>Foods,Fun & Memories</span></a></div>
         
      </div>
    </div>
  </header>
  <div id="navarea">
    <nav class="navbar navbar-default" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        </div>
        
          <div id="Div1" class="navbar-collapse collapse">
          <ul class="nav navbar-nav custom_nav">
            <li class=""><a href="../index.aspx">Home</a></li>
            <li class="dropdown"> <a href="#" class="" data-toggle="dropdown" role="button" aria-expanded="false">Veg Dishes</a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="vegpizza.aspx">Pizza</a></li>
                <li><a href="vegburger.aspx">Burger</a></li>
                <li><a href="vegsandwitch.aspx">Sandwitch</a></li>
                <li><a href="idli.aspx">Idli</a></li>
              <li><a href="dosa.aspx">Dosa</a></li>
              </ul>
            </li>
            
             <li class="dropdown"> <a href="#" class="" data-toggle="dropdown" role="button" aria-expanded="false">Non-Veg Dishes</a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="pizza.aspx">Pizza</a></li>
                <li><a href="burger.aspx">Burger</a></li>
                <li><a href="sandwitch.aspx">Sandwitch</a></li>
                <li><a href="meatball.aspx">Meat Balls</a></li>
              <li><a href="bbq.aspx">Barbeque</a></li>
              </ul>
            </li>
            
            <li class="dropdown"> <a href="#" class="" data-toggle="dropdown" role="button" aria-expanded="false">Drinks & Desserts</a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="cold_drinks.aspx">Cold Drinks</a></li>
                <li><a href="amulcool.aspx">Amul-Cool</a></li>
                <li><a href="appetizers.aspx">Appetizers</a></li>
                <li><a href="icecream.aspx">Ice-Cream</a></li>
                <li><a href="beer.aspx">Beer</a></li>
              <li><a href="wine.aspx">Wine</a></li>
              </ul>
            </li>
            
            <li><a href="pages/contact.aspx">Contact</a></li>
            
          </ul>
        </div>

      </div>
    </nav>
  </div>
  <p>&nbsp;</p>
  <div>
    <h4>             </h4>
</div>
  </br>
</div>
<asp:PlaceHolder ID="PlaceHolder_meatball" runat="server"></asp:PlaceHolder>
  
  
  
</div>
<footer id="footer">
  <div class="footer_top">
    <div class="container">
      <div class="row">
        
        <div class="col-lg-4 col-md-4 col-sm-4">
          <div class="single_footer_top wow fadeInRight">
            <h2>About Us</h2>
            <p>foodCOURT was founded by Jeff & Jen Martin, a dynamic brother and sister team. All of our delicious food are popped in small batches and seasoned by hand. foodCOURT hooray</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="footer_bottom">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
          <div class="footer_bottom_left">
            <p>Copyright &copy; 2045 <a href="../index.aspx">foodCOURT</a></p>
          </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
          <div class="footer_bottom_right">
            <p>Developed BY CS-Avengers</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</footer>
<script src="../assets/js/jquery.min.js"></script> 
<script src="../assets/js/bootstrap.min.js"></script> 
<script src="../assets/js/wow.min.js"></script> 
<script src="../assets/js/slick.min.js"></script> 
<script src="../assets/js/custom.js"></script>
</body>
</html>