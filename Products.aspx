<%@ Page Title="" Language="C#" MasterPageFile="~/USER.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="SEEDLINK.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <hr />
   <div class="container">
   <img src="images/Untitled.jpg" style="width:100%; height:300px" />

    <div class="row" style="padding-top:50px">
        <asp:Repeater ID="rptrProduct" runat="server">
            <ItemTemplate>
                <div class="col-sm-3 col-md-3">
                    <a href="ViewProducts.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">
                        <div class="thumbnail">
                            <img src="images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>"/>
                            
                            <div class="caption">
                                <div class="probrand"><%# Eval("BrandName") %></div>
                                <div class="proname"><%# Eval ("PName") %></div>
                                <div class="productprice"><span class="proOgPrice"><%# Eval("PPrice") %></span><%# Eval("PSelPrice") %></div>
                            </div>
                        </div>
                    </a>
                </div>
            </ItemTemplate>


        </asp:Repeater>
        
         </div>
       
      

       </div>
    
</asp:Content>
