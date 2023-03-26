<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn(1).aspx.cs" Inherits="SEEDLINK.SignIn_1_" %>

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
            <!--- signin--->
            <section class="vh-100">
                
                <div class="container">
  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-6 text-black">
          <br />
                <br />
                 <br />


          <img src="images/blank.png"  width="200"; height="180"/>

        <div class="d-flex align-items-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">

            <div style="width: 23rem;">

                <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Log in</h3>

                <div class="form-outline mb-4">
                    
                    <label class="form-label" for="form2Example18">USERNAME</label>
                    <asp:TextBox ID="txtUsername" CssClass="control-label" runat="server" Height="32px" Width="221px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" CssClass="text-danger" ErrorMessage="please enter Username" ForeColor="Red" ControlToValidate="txtUsername" ></asp:RequiredFieldValidator>
                </div>

                <div class="form-outline mb-4">
                   
                    <label class="form-label" for="form2Example28">Password</label>
                     <asp:TextBox ID="txtPassword" CssClass="control-label" runat="server" Height="32px" Width="221px" TextMode="Password" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" CssClass="text-danger" ErrorMessage="please enter valid password" ForeColor="Red" ControlToValidate="txtPassword" ></asp:RequiredFieldValidator>
                </div>

                <div class="pt-1 mb-4">
                    <asp:Button ID="btnLogin" runat="server" CssClass="btn-btn-success" Text="Login" OnClick="btnLogin_Click"  />
                </div>

                <asp:CheckBox ID="CheckBox1" runat="server" />
                <asp:Label ID="Label2" CssClass="control-label" runat="server" Text="Remember me"></asp:Label>

                <p class="small mb-5 pb-lg-2"><a class="text-muted" href="#!">Forgot password?</a></p>
                <p>Don't have an account? <a href="Signup.aspx" class="link-info">Register here</a></p>

                <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>

            </div>

        </div>

      </div>
      <div class="col-sm-6 px-0 d-none d-sm-block">
        <img src="images/photo-1525498128493-380d1990a112.jpg" alt="Login image" " style="object-fit: cover; object-position: left; width:600px; height:700px "/>
      </div>
    </div>
  </div>
                    </div>
</section>
           
            <!--- signin ends--->
        </div>
    </form>
</body>
</html>
