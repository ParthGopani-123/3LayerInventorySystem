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
<!-- /contact -->


 <%--<h2>Add a new customer</h2>
 <div class="form-group row">
        <label for="customerNo" class="col-sm-2 col-form-label">Customer Id</label>
        <div class="col-sm-10">
            <asp:TextBox class="form-control" ID="txtCustomerID" runat="server" placeholder="id" ></asp:TextBox>
        </div>
    </div>
 
    <div class="form-group row">
        <label for="customerName" class="col-sm-2 col-form-label">Customer Name</label>
        <div class="col-sm-10">
            <asp:TextBox class="form-control" ID="txtCustomerName" runat="server" placeholder="customer name"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label for="city" class="col-sm-2 col-form-label">City</label>
        <div class="col-sm-10">

            <asp:TextBox class="form-control" ID="txtCity" runat="server" placeholder="city"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label for="grade" class="col-sm-2 col-form-label">Grade</label>
        <div class="col-sm-10">
            <asp:TextBox class="form-control" ID="txtGrade" runat="server" placeholder="Grade"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label for="SalesmanID" class="col-sm-2 col-form-label">Salesman ID</label>
        <div class="col-sm-10">
            <asp:TextBox class="form-control" ID="txtSalesmanID" runat="server" ></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <div class="col-sm-10">
            <asp:Button CssClass="btn btn-primary" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Enter Customer"></asp:Button>
            <br />
        </div>
    </div>

    <asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>
     <h1><span class="badge badge-success btn-lg btn-block">Existing Customers</span></h1>
    <asp:GridView ID="gvCustomer" runat="server"></asp:GridView>--%>


</asp:Content>
