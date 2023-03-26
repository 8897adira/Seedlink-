<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="ADDCATEGORY.aspx.cs" Inherits="SEEDLINK.ADDCATEGORY" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <br />
    <br />
    <div class="container">
        <div class="form-horizontal">
           
            <h2> ADD CATEGORY</h2>

            <div class="form-control">
                <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="CATEGORY NAME"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtcategory"  CssClass="form-control" runat="server"></asp:TextBox>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorcategoryname" runat="server" CssClass="text-danger" ErrorMessage= "  ENTER CATEGORY NAME  " ControlToValidate="txtcategory"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-2">
                    <div class="col-md-6">
                        <asp:Button ID="btnCategory" runat="server" Text="Add" CssClass="btn-success" OnClick="btnCategory_Click" />
                    </div>
                </div>
            </div>
        </div>

         <h1> CATEGORIES </h1>
        <hr />
        
        <div class="panel-default">
            <div class="panel-heading">ALL CATEGORIES</div>


            <asp:Repeater ID="rptrcategory" runat="server">

                <HeaderTemplate>
                   <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>CATEGORIES</th>
                                <th>EDIT</th>
                            </tr>
                        </thead>
                        
                </HeaderTemplate>

                <ItemTemplate>
                    <tbody>
                    <tr>
                        <th><%# Eval("CatID") %></th>
                        <td><%# Eval("CatName") %></td>

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
