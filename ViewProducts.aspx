<%@ Page Title="" Language="C#" MasterPageFile="~/USER.Master" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="SEEDLINK.ViewProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />

   
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="container">
                    
                
                    <div style="padding-top: 50px">
                        <!--- Success Alert 
                        <div id="divSuccess" runat="server" class="alert alert-success alert-dismissible fade in h4">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                            <strong>Success! </strong>Item successfully added to cart. <a href="Cart.aspx">View Cart</a>
                        </div>
                            ---->

                        <div class="col-md-5">
                            <div style="max-width: 480px; height: 390px" class="thumbnail" >
                                <!--- Pro View Img Slider ---->
                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                    <!-- Wrapper for slides -->
                                    <div class="carousel-inner" role="listbox">
                                        <asp:Repeater ID="rptrImage" runat="server">
                                            <ItemTemplate>
                                                <div class="item  <%# GetActiveImgClass(Container.ItemIndex) %>">
                                                    <img src="images/ProductImages/<%# Eval("PID") %>/<%# Eval("Name") %><%# Eval("Extention") %>" alt="<%# Eval("Name") %>"  />
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                    <!-- Controls -->
                                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev" style="background: none !important">
                                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next" style="background: none !important">
                                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>
                                <!--- Img Slider End Here ---->
                            </div>
                        </div>
                        <div class="col-md-5">
                            <asp:Repeater ID="rptrProductDetails" runat="server">
                                <ItemTemplate>
                                    <div class="divDet1">
                                        <h1 class="ProNameView "><%# Eval("PName") %></h1>
                                        <span class="proOgPriceView ">Rs.&nbsp <%# Eval("PPrice","{0:0.00}") %></span><span class="proPriceDiscountView">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp(Save Rs.&nbsp<%# string.Format("{0:0.00}",Convert.ToInt64(Eval("PPrice"))-Convert.ToInt64(Eval("PSelPrice"))) %>)</span>
                                        <p class="ProPriceView ">Rs.&nbsp <%# Eval("PSelPrice","{0:0.00}") %></p>
                                    </div>
                                    <div class="divDet1">
                                        <b>
                                            <asp:Button ID="Btnaddtocart" CssClass="btn-btn-success" runat="server" Text="Add to Cart" Enabled="true" Width="130" OnClick="Btnaddtocart_Click1" />
                                            </b>
                                    </div>
                                    <div class="divDet1">
                                        <h5 class="lblProDisc">DESCription:</h5>
                                        <p class="proDisc">
                                            <%# Eval("PDescription") %>
                                        </p>
                                    </div>
                                    <div>
                                        <p class="h3Font"><%# ((int)Eval("FreeDelivery")==1)? "Free Delivery.":"" %></p>
                                        <p class="h3Font"><%# ((int)Eval("ReturnPolicy")==1)? "7 Days Return.":"" %></p>
                                        <p class="h3Font"><%# ((int)Eval("COD")==1)? "Cash on Delivery.":"" %></p>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
   

    
</asp:Content>
