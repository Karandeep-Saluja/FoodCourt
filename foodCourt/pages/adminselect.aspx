﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminselect.aspx.cs" Inherits="foodCourt.pages.adminselect" %>
<!DOCTYPE html>

<html>
    <head id="Head1" runat="server">
    <title>foodCOURT</title>
<meta charset = "utf-8" >
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
    <form id="form2" runat="server">
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
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav custom_nav">
            <li class=""><a href="../index.aspx">Home</a></li>
            </ul>
        </div>
      </div>
    </nav>
  </div>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
    </br>
</div>


<table class="table-fill" align="center">
    <tbody class="table-hover">
        <tr>
            <td class="text-left">&nbsp;
                </td>

        </tr>
        <tr>
                <td class="text-left">Name of table</td>
                <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
                <td class="text-left">Category of dish</td>
                <td>
                    <asp:TextBox ID="txtcat" runat="server"></asp:TextBox>
                </td>
        </tr>
        
        <tr>
                <td class="text-left">Name of dish</td>
                <td>
                    <asp:TextBox ID="txtdish" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
                <td class="text-left">Price</td>
                <td>
                    <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
                <td class="text-left">Picture</td>
                <td>
                    <asp:FileUpload ID="FileUpload" runat="server" />
                </td>
        </tr>
        <tr>
                <td class="text-left">Message</td>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    
                </td>
        </tr>
</tbody>
</table>>&nbsp;<p>&nbsp;</p>
<table class="table-fill" align="center">
    <tbody class="table-hover">
        <tr>
            <td class="text-left">&nbsp;
                </td>

</tr>
<tr>
<td class="text-left">Update</td>
    <td>
         <asp:Button ID="btnupdate" runat="server" Text="Click here" OnClick="btnupdate_Click" />
     </td>
</tr>
<tr>
<td class="text-left">Insert</td>
<td>
        <asp:Button ID="btninsert" runat="server" Text="Click here" OnClick="btninsert_Click" />
</td>
</tr>
<tr>
<td class="text-left">Delete</td>
<td>
    
    <asp:Button ID="btndelete" runat="server" Text="Click here" OnClick="btndelete_Click" />
    
</td>
</tr>
</tbody>
</table>

  
  
  
</div>
<footer id="footer">
  <div class="footer_top">
    <div class="container">
      <div class="row">
        
        <div class="col-lg-4 col-md-4 col-sm-4">
          <div class="single_footer_top wow fadeInRight">
            <h2>About Us</h2>
            <p>foodCOURT was founded by Jeff & Jen Martin, a dynamic brother and sister team. All of our delicious food are popped in small batches and seasoned by hand. oodCOURT hooray</p>
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
            <p>Copyright &copy; 2045 <a href="../index.html">foodCOURT</a></p>
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
    </form>
</body>
</html>
