<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="SEEDLINK.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
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
            <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class=" navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>

                        </button>
                        <a class="navbar-brand" href="HOME.aspx"><span>
                            <img src="images/images.png" alt="SEEDLINK" height="30" /></span> SEEDLINK </a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="HOME.aspx">HOME</a></li>
                            <li><a href="#">ABOUT</a></li>
                            <li><a href="CONTACTUS.aspx">CONTACT US</a></li>
                            <li><a href="#">BLOG</a></li>

                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">PRODUCTS <b class="caret"></b></a>
                                <ul class="dropdown-menu">

                                    <li class="dropdown-header">PLANTS</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="ALLPLANTS.aspx">ALL PLANTS </a></li>
                                    <li><a href="FLOWERING PLANTS.aspx">FLOWERING PLANTS </a></li>
                                    <li><a href="INDOOR PLANTS.aspx">INDOOR PLANTS </a></li>
                                    <li><a href="AIR PURIFIER .aspx">AIR PURIFIERS PLANTS </a></li>

                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">BULBS AND SEEDS</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="'#">FLOWERING SEEDS </a></li>
                                    <li><a href="'#">VEGETABLE SEEDS </a></li>
                                    <li><a href="'#">HERB SEEDS </a></li>
                                    <li><a href="'#">FLOWERING BULBS </a></li>

                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">POTS AND PLANTERS</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="'#">CERAMIC POTS </a></li>
                                    <li><a href="'#">WOODEN POTS </a></li>
                                    <li><a href="'#">HANGING POTS </a></li>
                                    <li><a href="'#">METAL POTS </a></li>
                                    <li><a href="'#">GLASS POTS </a></li>






                                </ul>
                            </li>
                            <li><a href="REGISTRATION.aspx">REGISTRATION</a></li>


                        </ul>
                    </div>
                </div>

            </div>
                
<!--Signup page-->
            <div class="container">
            <div class="center-page">
                <label class="cpl-xs-11">USERNAME: </label>
                <div class="cpl-xs-11">
                <asp:TextBox ID="txtuname" runat="server" CssClass="form-control" placeholder="ENTER YOUR NAME"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" CssClass="text-danger" ErrorMessage="please enter Username" ForeColor="Red" ControlToValidate="txtuname"></asp:RequiredFieldValidator>
                    </div>

                 <label class="cpl-xs-11">PASSWORD: </label>
                <div class="cpl-xs-11">
                <asp:TextBox ID="txtpass" runat="server" CssClass="form-control" placeholder="ENTER YOUR PASSWORD" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" cssclass="text-danger" ErrorMessage="please enter password" ForeColor="Red" ControlToValidate="txtpass"></asp:RequiredFieldValidator>

                    </div>

                 <label class="cpl-xs-11">CONFIRM PASSWORD: </label>
                <div class="cpl-xs-11">
                <asp:TextBox ID="txtcpass" runat="server" CssClass="form-control" placeholder="CONFIRM YOUR PASSWORD" TextMode="Password"></asp:TextBox>
                    </div>

                

                 <label class="cpl-xs-11">EMAIL: </label>
                <div class="cpl-xs-11">
                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="ENTER YOUR EMAIL"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" CssClass="text-danger" ErrorMessage="please enter Email" ForeColor="Red" ControlToValidate="txtemail"></asp:RequiredFieldValidator>

                    </div>

                <label class="cpl-xs-11"></label>
                <div class="cpl-xs-11">
                    <asp:Button ID="SIGNUP" CssClass="btn btn-success"  runat="server" Text="SIGNUP" OnClick="SIGNUP_Click" />
                    
                    </div>
                <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>


                <p>Already have an account? <a href="SignIn(1).aspx" class="link-info">login here</a></p>

                <hr />

                </div>

                


            </div>

            <!-- END OF SIGNUP PAGE-->
        </div>
        </div>
    </form>
    <!----footer--->
            <footer>
                <div class="container">
                    <p class="pull-right"> <a href="HOME.aspx">BACK TO TOP</a></p>
                    <p> <a href="HOME.aspx">HOME</a>&middot;<a href="#">ABOUT</a>&middot;<a href="CONTACTUS.aspx">CONTACT US</a> </p>
                </div>
            </footer>
    <!--- FOOTER ENDS--->
</body>
</html>
