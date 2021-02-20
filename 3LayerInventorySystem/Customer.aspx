<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="_3LayerInventorySystem.Customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">


    <section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb">
          <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="@@page-link">Insert a new customer here</a></li>
          <li class="list-inline-item text-white h3 font-secondary @@nasted"></li>
        </ul>
      </div>
    </div>
  </div>
</section>
<!-- /page title -->

    <!-- contact -->
<section class="section bg-gray">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <h2 class="section-title">Enter Customer</h2>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-7 mb-4 mb-lg-0">
        <div>
            <asp:TextBox class="form-control mb-3" ID="txtCustomerID" runat="server" placeholder="id" ></asp:TextBox>
            <asp:TextBox class="form-control mb-3" ID="txtCustomerName" runat="server" placeholder="customer name"></asp:TextBox>
            <asp:TextBox class="form-control mb-3" ID="txtCity" runat="server" placeholder="city"></asp:TextBox>
            <asp:TextBox class="form-control mb-3" ID="txtGrade" runat="server" placeholder="Grade"></asp:TextBox>
            <asp:TextBox class="form-control mb-3" ID="txtSalesmanID" runat="server" placeholder="salesman id" ></asp:TextBox>
                  
                      <asp:Button CssClass="btn btn-primary" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Enter Customer"></asp:Button>

        </div>
      </div>
     </div>
        <div class="col-lg-5">
             <asp:Label ID="lblResult" runat="server"></asp:Label>
        </div>

        <div>
            <h1><span class="badge badge-success btn-lg btn-block">Existing Customers</span></h1>
        </div>

        <div>
          <asp:GridView UseAccessibleHeader="true" CssClass="table table-condensed table-hover"  ID="gvCustomer" runat="server"></asp:GridView>
        </div>
   
  </div>
</section>


</asp:Content>
