<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="foodCourt.pages.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
   
    
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        </asp:UpdatePanel>
<asp:UpdatePanel ID="UpdatePanel2" runat="server">
     <ContentTemplate>
              
         </table>
         <p></p><p></p><p></p> 
         <table id="table1" runat="server" align="center">
              <tr>
                  <td id="td1" runat="server" style="font-weight: 700; color: #800000; font-family: Andalus"
                      class="style1">Category</td>
                  <td class="style1">&nbsp;&nbsp;&nbsp;
                      <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="true" OnSelectedIndexChanged="Category_Changed">
                      </asp:DropDownList>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </td>
                 
                  <td id="td2" runat="server" style="font-weight: 700; color: #800000; font-family: Andalus"
                      class="style1">Product:</td>
                  <td class="style1">&nbsp;&nbsp;&nbsp;
                    
                         <asp:DropDownList ID="ddlProduct" runat="server" AutoPostBack="true" OnSelectedIndexChanged="Product_Changed">
                         </asp:DropDownList>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;         
                     
                 </td>
                  
                  <td style="font-weight: 700; color: #800000; font-family: Andalus"
                      class="style1">&nbsp; Quantity:</td>
                  <td class="style1">
                    
                         <asp:DropDownList ID="ddlQuantity" runat="server" AutoPostBack="true" OnSelectedIndexChanged="Quantity_Changed">
                             <asp:ListItem>1</asp:ListItem>
                             <asp:ListItem>2</asp:ListItem>
                             <asp:ListItem>3</asp:ListItem>
                             <asp:ListItem></asp:ListItem>
                         </asp:DropDownList>
                         
                     
                 </td>
             </tr>
              <tr>
                  <td>
                      Price = <asp:Label ID="lblPrice" runat="server" Text=""></asp:Label>
                  </td>
                  <td>
                      SubTotal = <asp:Label ID="lblSubTotal" runat="server" Text=""></asp:Label>
                  </td>
                    <td>
                        
                  </td>
                  <td>
                      <asp:Button ID="btnAdd" runat="server" Text="Add to Cart" OnClick="btnAdd_Click1"/>
                  </td>
              </tr>
              <tr>
                  <td>
                      Enter Name: = <asp:TextBox ID="Textcname" runat="server"></asp:TextBox>
                  </td>
                  <td>
                      Enter Address: = <asp:TextBox ID="Textcaddress" runat="server"></asp:TextBox>
                  </td>
                  <td>
                      Enter Phone No.: = <asp:TextBox ID="Textphone" runat="server"></asp:TextBox>
                  </td>
                  <td>
                      Enter email: = <asp:TextBox ID="Textmail" runat="server"></asp:TextBox>
                  </td>
                  
              </tr>
              <tr>
                  <td>

                  </td>
                  <td>
                      Total = 
                  </td>
                  <td>
                      <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label>             
                  </td>
              </tr>
         </table>
        <p></p>
         

         <asp:GridView ID="gvCart" runat="server" AutoGenerateColumns="True" Align="center">
          </asp:GridView>

     </ContentTemplate>
</asp:UpdatePanel>


    
    </div>
        <p></p><p></p><p></p><p></p>
        <table align="center">
            <tr>
                <td>
                    Press here to clean complete cart
                </td>
                <td>
                    <asp:Button ID="btnclean" runat="server" Text="Confirm" align="center" OnClick="btnclean_Click"/>
                </td>
            </tr>
            
            <tr>
                <td>
                    Press here to confirm order
                </td>
                <td>
                    <asp:Button ID="btnconfirm" runat="server" Text="Confirm" align="center" OnClick="btnconfirm_Click"/>
                </td>
            </tr>
            <tr>
                
                <td>
                    Order message =
                </td>
                <td>
                    <asp:Label ID="lblorder" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Press here to exit Cart page 
                </td>
                <td>
                    <asp:Button ID="btnexit" runat="server" Text="Exit" align="center" OnClick="btnexit_Click"/>
                </td>
            </tr>
        </table>
    

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
    </form>
</body>
</html>

