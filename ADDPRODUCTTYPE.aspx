<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="ADDPRODUCTTYPE.aspx.cs" Inherits="SEEDLINK.ADDPRODUCTTYPE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <br />
    <br />
    <div class="container">
        <div class="form-horizontal">
           
            <h2> ADD PRODUCT TYPE</h2>

            <div class="form-control">
                <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="PRODUCT TYPE"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtproducttype"  CssClass="form-control" runat="server"></asp:TextBox>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorproducttype" runat="server" CssClass="text-danger" ErrorMessage= "  ENTER PRODUCT TYPE  " ControlToValidate="txtproducttype"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-2">
                    <div class="col-md-6">
                        <asp:Button ID="btnAddproducttype" runat="server" Text="Add" CssClass="btn-success" OnClick="btnAddproducttype_Click" />
                    </div>
                </div>
            </div>
        </div>






        <h1> PRODUCT TYPE </h1>
        <hr />
        
        <div class="panel-default">
            <div class="panel-heading">ALL PRODUCT TYPES</div>


            <asp:Repeater ID="rptrProducttype" runat="server">

                <HeaderTemplate>
                   <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>PRODUCT TYPE</th>
                                <th>EDIT</th>
                            </tr>
                        </thead>
                        
                </HeaderTemplate>

                <ItemTemplate>
                    <tbody>
                    <tr>
                        <th><%# Eval("producttypeID") %></th>
                        <td><%# Eval("Name") %></td>

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
