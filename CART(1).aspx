<%@ Page Title="" Language="C#" MasterPageFile="~/USER.Master" AutoEventWireup="true" CodeBehind="CART(1).aspx.cs" Inherits="SEEDLINK.CART_1_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <br />
    <br />
    <br />
    <br />
    <div class="col-md-9"  >
        <h4 class="proNameViewCart">MY CART</h4>
        <%-----show cart details starts------%>
        <div class="media" style="border:1px solid black;">
            <div class="media-left">
                <a href="#">
                    <img class="media-object" width="150" src="images/Moss%20Balls%20%20Sansievieria%20Hahnii.jpg" alt="...." />
                </a>
            </div>
            
            <div class="media-body">
                <h4 class="media-heading proNameViewCart">Sansievieria Hahnii</h4>
                <p class="proPriceDiscountView"> Drawf </p>
                <span class="proPriceView" >Rs.  650.00</span>
                 <span class="proOgPriceView">Rs.  750.00 </span>
                <p>
                    <asp:Button ID="btnRemove" CssClass="RemoveButton1" runat="server" Text="REMOVE"  />
                </p>


            </div>


        </div>

        <div class="media" style="border:1px solid black;">
            <div class="media-left">
                <a href="#">
                    <img class="media-object" width="150" src="images/FicuselasticaShrivereana.jpg" alt="...." />
                </a>
            </div>
            
            <div class="media-body">
                <h4 class="media-heading proNameViewCart">Ficus elastica Shrivereana</h4>
                <p class="proPriceDiscountView"> Medium </p>
                <span class="proPriceView" >Rs.  450.00</span>
                 <span class="proOgPriceView">Rs.  500.00 </span>
                <p>
                    <asp:Button ID="Button1" CssClass="RemoveButton1" runat="server" Text="REMOVE"  />
                </p>


            </div>


        </div>



         <%-----show cart details ends------%>

        </div>
        

    <div class="col-md-3">
        <%---------------%>
        <div>
            <h5>PRICE DETAILS</h5>
            <div>
                <label>Cart Total</label>
                <span class="pull-right priceGray">Rs.1250.00</span>
            </div>

            <div>
                <label>Cart Discount</label>
                <span class="pull-right priceGreen">Rs.100.00</span>
            </div>
        </div>

        <%---------------%>
        <div>
            
            <div class="proPriceView">
                <label>Cart Total</label>
                <span class="pull-right ">Rs.1100.00</span>
            </div>

            <div>
                <asp:Button ID="btnBuy"  CssClass="btnQuickBuy" runat="server" Text="BUY NOW"  />
                
            </div>

        </div>




    </div>
</asp:Content>
