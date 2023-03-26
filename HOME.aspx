<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HOME.aspx.cs" Inherits="SEEDLINK.HOME" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title> SEEDLINK </title>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous">

    </script>
    <meta charset="utf-8" />
    <meta charset="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="custom.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class=" navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">    </span>
                            <span class="icon-bar"></span>
                             <span class="icon-bar"></span>
                             <span class="icon-bar"></span>

                        </button>
                        <a class="navbar-brand" href="HOME.aspx"><span><img src="images/images.png"  alt="SEEDLINK" height="30" /></span> SEEDLINK </a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">    
                        <li class="active"> <a href="HOME.aspx">HOME</a></li>   
                        <li><a href="#">ABOUT</a></li>
                        <li><a href="CONTACTUS.aspx">CONTACT US</a></li>
                        <li><a href="#">BLOG</a></li>
                        
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">PRODUCTS <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                
                                <li class="dropdown-header">PLANTS</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="Products.aspx"> ALL PLANTS </a></li>
                                <li><a href="FloweringPlants.aspx"> FLOWERING PLANTS </a></li>
                                <li><a href="INDOOR PLANTS.aspx"> INDOOR PLANTS </a></li>
                                <li><a href="AIR PURIFIER .aspx"> AIR PURIFIERS PLANTS </a></li>
                                
                                <li role="separator" class="divider"></li>
                                 <li class="dropdown-header">BULBS AND SEEDS</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="'#"> FLOWERING SEEDS </a></li>
                                <li><a href="'#"> VEGETABLE SEEDS </a></li>
                                <li><a href="'#"> HERB SEEDS </a></li>
                                <li><a href="'#"> FLOWERING BULBS </a></li>

                                <li role="separator" class="divider"></li>
                                 <li class="dropdown-header">POTS AND PLANTERS</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="'#"> CERAMIC POTS </a></li>
                                <li><a href="'#"> WOODEN POTS </a></li>
                                <li><a href="'#"> HANGING POTS </a></li>
                                <li><a href="'#"> METAL POTS </a></li>
                                <li><a href="'#"> GLASS POTS </a></li>

                                 
                               
                                
                                
                               
                            </ul>
                        </li>

                            
                            <li id ="btnSignUp" runat="server"><a href="Signup.aspx"> SignUp</a></li>
                            <li id ="btnSignIn" runat="server"><a href="SignIn(1).aspx"> SignIn</a></li>
                           <li>
                                
                            <asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn" runat="server" Text="SIGN OUT" OnClick="btnlogout_Click" />
                            </li>
                            

                            </ul>
                    </div>
                </div>

            </div>
 <!----image slider----->
            <div class="container">
    
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
          <a href="INDOOR PLANTS.aspx" >
        <img src="images/silders/slider 1.jpg" alt="INDOOR PLANTS" style="width:100%; height:451px"/>
          <div class="carousel-caption">
              <h3>INDOOR PLANTS</h3>
              <p>UPTO 50% OFF</p>
          </div>
              </a>
      </div>

      <div class="item">
          <a href="BOUQUETS.aspx" >
        <img src="images/silders/slider 2.jpg" alt="ROSES" style="width:100%; height:451px"/>
          <div class="carousel-caption">
              <h3>BOUQUET OF FLOWERS</h3>
              <p>STARTING AT 175/-</p>
          </div>
              </a>
      </div>
    
      <div class="item">
        <img src="images/silders/slider 3.jpg" alt="GIFTINGS" style="width:100%; height:451px"/>
          <div class="carousel-caption">
              <h3>GIFTING ITEMS</h3>
              <p>STARTING AT 100/-</p>
          </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

            <!---image slider end----->
 <!--- middle section--->
            <hr />
            <div class="container center ">
                <h1>SPECIAL PLANTS</h1>
                <div class="row">
                    <div class="col-lg-3">
                        <a href="AIR PURIFIER .aspx" >
                            <img src="images/ICONS/air_plants_1_280x.jpg"  alt="thumb" width="240"; height="240" />
                        </a>
                        </div>
                        <div class="col-lg-3">
                         <a href="BONSAI.aspx" >
                            <img src="images/ICONS/bonsai_9d1dc44a-7cf1-49d7-ae5c-28b254762485_280x.jpg"  alt="thumb" width="240"; height="240" />
                        </a>
                            </div>
                    <div class="col-lg-3">
                         <a href="#" >
                            <img src="images/ICONS/cactus_280x.jpg"  alt="thumb" width="240"; height="240" />
                        </a>
                    </div>
                    <div class="col-lg-3">
                         <a href="#" >
                            <img src="images/ICONS/lowmaintenance_280x.jpg"  alt="thumb" width="240"; height="240" />
                        </a>
                </div>
                    </div>
                </div>

                    <hr />

                    <div class="container center">
                        
                    <h1>GARDEN ESSENTIALS</h1>
                <div class="row">
                    <div class="col-lg-3">
                        <a href="#" >
                            <img src="images/ICONS/Fertilizer_280x.png"  alt="thumb" width="240"; height="240" />
                        </a>
                        </div>
                    <div class="col-lg-3">
                        <a href="#" >
                            <img src="images/ICONS/gardenaccessories_280x.jpg"  alt="thumb" width="240"; height="240" />
                        </a>
                        </div>
                    <div class="col-lg-3">
                        <a href="#" >
                           <img src="images/ICONS/tools_equipments_280x.jpg"   alt="thumb" width="240"; height="240" />
                        </a>
                        </div>
                    <div class="col-lg-3">
                        <a href="#" >
                           <img src="images/ICONS/potstand_280x.jpg"  alt="thumb" width="240"; height="240" />
                        </a>
                        </div>
                    </div>
                        </div>

                    <hr />
            <br />
                    <div class="container center">
                        
                    <h1>GARDEN DECOR</h1>
                <div class="row">
                    <div class="col-lg-3">
                        <a href="#" >
                             <img src="images/ICONS/birdscorner_280x.jpg"  alt="thumb" width="240"; height="240" />
                        </a>
                        </div>
                    <div class="col-lg-3">
                        <a href="#" >
                             <img src="images/ICONS/gardenart_280x.jpg"  alt="thumb" width="240"; height="240" />
                        </a>
                        </div>
                    <div class="col-lg-3">
                        <a href="#" >
                            <img src="images/ICONS/gardenlight_280x.jpg"  alt="thumb" width="240"; height="240" />
                        </a>
                        </div>
                    <div class="col-lg-3">
                        <a href="#" >
                            <img src="images/ICONS/pebbles_280x.jpg"  alt="thumb" width="240"; height="240" />
                        </a>
                        </div>



                    </div>
                </div>
            <!---- end od middle section--->

            <!----footer--->
            <footer>
                <div class="container">
                    <p class="pull-right"> <a href="HOME.aspx">BACK TO TOP</a></p>
                    <p> <a href="HOME.aspx">HOME</a>&middot;<a href="#">ABOUT</a>&middot;<a href="CONTACTUS.aspx">CONTACT US</a> </p>
                </div>
            </footer>

        </div>
    </form>
</body>
</html>
