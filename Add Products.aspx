<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="Add Products.aspx.cs" Inherits="SEEDLINK.Add_Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="container">
        <div class="form-horizontal">
            <h2> ADD PRODUCTS</h2>
            <hr />

            <div class="form-group">
                <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="Product Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtproductname" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label2" CssClass="col-md-2 control-label" runat="server" Text="Price"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtprice" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label3" CssClass="col-md-2 control-label" runat="server" Text="Selling Price"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtsellingprice" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label4" CssClass="col-md-2 control-label" runat="server" Text="Product type"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlproducttype" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label5" CssClass="col-md-2 control-label" runat="server" Text="Category"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlcategory" CssClass="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlcategory_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label6" CssClass="col-md-2 control-label" runat="server" Text="SubCategory"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlsubcategory" CssClass="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlsubcategory_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label7" CssClass="col-md-2 control-label" runat="server" Text="Size"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBoxList ID="cblSize" CssClass="form-control" RepeatDirection="Horizontal" runat="server"></asp:CheckBoxList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label17" CssClass="col-md-2 control-label" runat="server" Text="Quantity"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtquantity" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label8" CssClass="col-md-2 control-label" runat="server" Text="Description"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtdescription" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label9" CssClass="col-md-2 control-label" runat="server" Text="Product Details"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtpdetails" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label10" CssClass="col-md-2 control-label" runat="server" Text="Care to be taken"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtcare" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label11" CssClass="col-md-2 control-label" runat="server" Text="UPLOAD IMAGE"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuimg01" CssClass="form-control"  runat="server" />
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label12" CssClass="col-md-2 control-label" runat="server" Text="UPLOAD IMAGE"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuimg02" CssClass="form-control"  runat="server" />
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label13" CssClass="col-md-2 control-label" runat="server" Text="UPLOAD IMAGE"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuimg03" CssClass="form-control"  runat="server" />
                </div>
            </div>

             <div class="form-group">
                <asp:Label ID="Label14" CssClass="col-md-2 control-label" runat="server" Text="FREE DELIVERY"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="chfd" runat="server" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label15" CssClass="col-md-2 control-label" runat="server" Text=" Return Policy"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="chReturn" runat="server" />
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label16" CssClass="col-md-2 control-label" runat="server" Text="COD"></asp:Label>
                <div class="col-md-3">
                    <asp:CheckBox ID="chCOD" runat="server" />
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-2">
                    <div class="col-md-8">
                        <asp:Button ID="btnAdd" CssClass="btn btn-success" runat="server" Text="Add Product" OnClick="btnAdd_Click" />
                    </div>
                </div>
            </div>
             
















        </div>
    </div>
</asp:Content>
