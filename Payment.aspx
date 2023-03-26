<%@ Page Title="" Language="C#" MasterPageFile="~/USER.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="SEEDLINK.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />

    
       <div class="row" style="padding-top:20px;">
           <div class="col-md-9">
               <div class="form-horizontal">
                   <h3>Delivery Address</h3>
                   <hr />
                   <div class="form-group">
                       <asp:Label ID="label1" runat="server" CssClass="controllabel" Text="Name"></asp:Label>
                       <asp:TextBox ID="txtName" CssClass="form-control"
                           runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator
                           ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server"
                           ErrorMessage="This field is Required!"
                           ControlToValidate="txtName"></asp:RequiredFieldValidator>
                   </div>
                   <div class="form-group">
                       <asp:Label ID="label2" runat="server" CssClass="controllabel" Text="Address"></asp:Label>
                       <asp:TextBox ID="txtAddress" TextMode="MultiLine"
                           CssClass="form-control" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                           CssClass="text-danger" runat="server" ErrorMessage="This field is Required!"
                           ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                   </div>
                   <div class="form-group">
                       <asp:Label ID="label3" runat="server" CssClass="controllabel" Text="Pincode"></asp:Label>
                       <asp:TextBox ID="txtPincode" CssClass="form-control"
                           runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                           CssClass="text-danger" runat="server" ErrorMessage="This field is Required!"
                           ControlToValidate="txtPincode"></asp:RequiredFieldValidator>
                   </div>
                   <div class="form-group">
                       <asp:Label ID="label4" runat="server" CssClass="controllabel" Text="Mobile Number"></asp:Label>
                       <asp:TextBox ID="txtmobileNumber" CssClass="form-control"
                           runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                           CssClass="text-danger" runat="server" ErrorMessage="This field is Required!"
                           ControlToValidate="txtmobileNumber"></asp:RequiredFieldValidator>
                   </div>

               </div>
           </div>
           <div class="col-md-3" runat="server" id="divPriceDetails">
               <div style="border-bottom: 1px solid #eaeaec;">
                   <h5 class="proNameViewCart">Price Details</h5>
                   <div>
                       <label>Cart Total</label>
                       <span class="float-right priceGray" id="spanCartTotal"
                           runat="server"> Rs.1250.00</span>
                   </div>
                   <div>
                       <label>Cart Discount</label>
                       <span class="float-right priceGreen" id="spanDiscount"
                           runat="server">Rs.100.00</span>

                   </div>
               </div>
               <div>
                   <div class="proPriceView"></div>
                   <label>Total</label>
                   <span class="float-right" id="spanTotal"
                       runat="server">Rs.1100.00</span>
               </div>
           </div>
 </div>
    <div class="col-md-12">
        <h3>Choose Payment Mode</h3>
        
        <ul class="nav-tabs">
            <li class="nav-item"><a class="nav-link-active" data-toggle="tab"
                href="#Wallets"> WALLETS </a> 

            </li> 
            <li class="nav-item"><a class="nav-link" data-toggle="tab"
                href="#cards"> CERDIT&DEBIT CARDS </a> 

            </li>
            <li class="nav-item"><a class="nav-link" data-toggle="tab"
                href="#COD">COD</a> 

            </li>
        </ul>
        <div class="tab-content">
            <div id="Wallets" class="teb-glyphicon-plane fade show active">
                <h3>Home</h3>
                <p>Some Content</p>
                <asp:Button ID="btnPaytm" OnClick="btnPaytm_Click" runat="server"
                    Text="Pay With Paytm" />
            </div>
            <div id="cards" class="teb-glyphicon-plane tab-pane-fade">
                <h3></h3>
                <p></p>
            </div>
            <div id="COD" class="teb-glyphicon-plane tab-pane-fade">
                <h3></h3>
                <p></p>
            </div>
        </div>
    </div>
</asp:Content>
