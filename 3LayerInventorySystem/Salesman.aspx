<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Salesman.aspx.cs" Inherits="_3LayerInventorySystem.Salesman" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

   <section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb">
          <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="@@page-link">Insert a new Salesman here</a></li>
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
        <h2 class="section-title">Enter Salesman</h2>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-7 mb-4 mb-lg-0">
        <div>
            <asp:TextBox class="form-control mb-3" ID="txtID" runat="server" placeholder="id" ></asp:TextBox>
            <asp:TextBox class="form-control mb-3" ID="txtSalesmanName" runat="server" placeholder="salesmanName"></asp:TextBox>
            <asp:TextBox class="form-control mb-3" ID="txtCity" runat="server" placeholder="city"></asp:TextBox>
           <asp:TextBox class="form-control mb-3" ID="txtCommission" runat="server" placeholder="Commission"></asp:TextBox>
                            
            <asp:Button CssClass="btn btn-primary" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Enter Salesman"></asp:Button>

        </div>
      </div>
     </div>
        <div class="col-lg-5">
             <asp:Label ID="lblResult" runat="server"></asp:Label>
        </div>

        <div>
            <h1><span class="badge badge-success btn-lg btn-block">Existing Salesman</span></h1>
        </div>

        <div>
          <asp:GridView UseAccessibleHeader="true" CssClass="table table-condensed table-hover"  ID="gvSalesman" runat="server"></asp:GridView>
        </div>
   
  </div>
</section>

     <%--<h2>Enter a New Salesman</h2>

    <div class="form-group row">
        <label for="salesmanNo" class="col-sm-2 col-form-label">Salesman Number</label>
        <div class="col-sm-10">
            <asp:TextBox class="form-control" ID="txtID" runat="server" placeholder="id" ></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label for="salesmanName" class="col-sm-2 col-form-label">Salesman Name</label>
        <div class="col-sm-10">
            <asp:TextBox class="form-control" ID="txtSalesmanName" runat="server" placeholder="salesmanName"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label for="city" class="col-sm-2 col-form-label">City</label>
        <div class="col-sm-10">

            <asp:TextBox class="form-control" ID="txtCity" runat="server" placeholder="city"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <label for="commission" class="col-sm-2 col-form-label">Commission</label>
        <div class="col-sm-10">
            <asp:TextBox class="form-control" ID="txtCommission" runat="server" placeholder="Commission"></asp:TextBox>
        </div>
    </div>
    <div class="form-group row">
        <div class="col-sm-10">
            <asp:Button CssClass="btn btn-primary" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Enter Salesman"></asp:Button>
        </div>
    </div>
    <asp:Label ID="lblResult" runat="server" ></asp:Label>
     <h1><span class="badge badge-success btn-lg btn-block">Existing Salesman</span></h1>
    <asp:GridView ID="gvSalesman" runat="server"></asp:GridView>--%>
</asp:Content>
