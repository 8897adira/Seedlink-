<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN.Master" AutoEventWireup="true" CodeBehind="SUBCATEGORY.aspx.cs" Inherits="SEEDLINK.WebForm1" %>
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
                <asp:Label ID="Label2" CssClass="col-md-2 control-label" runat="server" Text="MAIN CATEGORYID"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlMainCatID" CssClass="form-control" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorMainCatID" runat="server" ErrorMessage="ENTER THE MAIN CATEGORYID" ControlToValidate="ddlMainCatID"></asp:RequiredFieldValidator>
                </div>
            
            <br />
            <br />

              <br />


            
                <asp:Label ID="Label1" CssClass="col-md-2 control-label" runat="server" Text="SUBCATEGORY NAME"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtSubcategory"  CssClass="form-control" runat="server"></asp:TextBox>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorsubcategoryname" runat="server" CssClass="text-danger" ErrorMessage= "  ENTER SUB CATEGORY NAME  " ControlToValidate="txtSubcategory"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-2">
                    <div class="col-md-6">
                        <asp:Button ID="btnSubcategory" runat="server" Text="Add" CssClass="btn-success" OnClick="btnSubcategory_Click" />
                    </div>
                </div>
            </div>
        </div>

         <h1> SUB CATEGORY </h1>
        <hr />
        
        <div class="panel-default">
            <div class="panel-heading">ALL SUB CATEGORY</div>


            <asp:Repeater ID="rptrSubcategory" runat="server">

                <HeaderTemplate>
                   <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>SUBPRODUCT TYPE</th>
                                <th>CATEGORY</th>
                                <th>EDIT</th>
                            </tr>
                        </thead>
                        
                </HeaderTemplate>

                <ItemTemplate>
                    <tbody>
                    <tr>
                        <th><%# Eval("SubCatID") %></th>
                        <td><%# Eval("SubCatName") %></td>
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
