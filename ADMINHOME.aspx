<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="ADMINHOME.aspx.cs" Inherits="SEEDLINK.ADMINHOME" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <br />
<br />
    <br />
    <br />
<H2> WELCOME ADMIN!.....</H2>
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
</asp:Content>
