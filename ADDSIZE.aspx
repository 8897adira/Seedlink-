<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="ADDSIZE.aspx.cs" Inherits="SEEDLINK.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="container">
        <div class="form-horizontal">
           <br />
            <br />
            <br />

            <h2> ADD SUBCATEGORY</h2>


            <div class="form-group">

                <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="SIZE NAME"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtSize"  CssClass="form-control" runat="server"></asp:TextBox>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorsize" runat="server" CssClass="text-danger" ErrorMessage= "  ENTER SIZE  " ControlToValidate="txtSize"></asp:RequiredFieldValidator>
                </div>
                </div>
             <div class="form-group">
                <asp:Label ID="Label3" CssClass="col-md-2 control-label" runat="server" Text="PRODUCT TYPE"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlproductype" CssClass="form-control" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorproductype" runat="server" ErrorMessage="ENTER THE PRODUCT TYPE" ControlToValidate="ddlproductype"></asp:RequiredFieldValidator>
                </div>
                 </div>
            <div class="form-group">
                 <asp:Label ID="Label4" CssClass="col-md-2 control-label" runat="server" Text="CATEGORY"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlcategory" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlcategory_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorcategory" runat="server" ErrorMessage="ENTER THE CATEGORY" ControlToValidate="ddlcategory"></asp:RequiredFieldValidator>
                </div>
                 </div>
             <div class="form-group">
                <asp:Label ID="Label2" CssClass="col-md-2 control-label" runat="server" Text=" SUBCATEGORY"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlSubcategory" CssClass="form-control" runat="server" ></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorMainCatID" runat="server" ErrorMessage="ENTER THE SUBCATEGORY" ControlToValidate="ddlSubcategory"></asp:RequiredFieldValidator>
                </div>
            
            <br />
            <br />

                <br />


            
                
            </div>

            <div class="form-group">
                <div class="col-md-2">
                    <div class="col-md-6">
                        <asp:Button ID="btnSIze" runat="server" Text="Add" CssClass="btn-success" OnClick="btnSIze_Click" />
                    </div>
                </div>
            </div>
        
    </div>

        <h1> SIZE </h1>
        <hr />
        
        <div class="panel-default">
            <div class="panel-heading">ALL SIZES</div>


            <asp:Repeater ID="rptrSize" runat="server">

                <HeaderTemplate>
                   <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                 <th>SIZES</th>
                                <th>PRODUCT TYPE</th>
                                <th>CATEGORY</th>
                                <th>SUBCATEGORY</th>
                                <th>EDIT</th>
                            </tr>
                        </thead>
                        
                </HeaderTemplate>

                <ItemTemplate>
                    <tbody>
                    <tr>
                        <th><%# Eval("SizeID") %></th>
                        <td><%# Eval("SizeName") %></td>
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("CatName") %></td>
                        <td><%# Eval("SubCatName") %></td>
                        <td> EDIT </td>
                        </tr>
                         </tbody>
                </ItemTemplate>


                <FooterTemplate>
                    
                    </table>

                </FooterTemplate>

            </asp:Repeater>



        </div>





        </div>
</asp:Content>
