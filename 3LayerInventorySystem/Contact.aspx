<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="_3LayerInventorySystem.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <!-- page title -->
<section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb">
          <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="@@page-link">Contact Us</a></li>
          <li class="list-inline-item text-white h3 font-secondary @@nasted"></li>
        </ul>
        <p class="text-lighten">Do you have other questions? Don't worry, there aren't any dumb questions. Just fill out the form below and we'll get back to you as soon as possible.</p>
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
        <h2 class="section-title">Contact Us</h2>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-7 mb-4 mb-lg-0">
        <div>
            <asp:TextBox class="form-control mb-3" ID="txtName" runat="server" placeholder="Your Name"></asp:TextBox>
            <asp:TextBox class="form-control mb-3" ID="txtMail" runat="server" placeholder="Your Email"></asp:TextBox>
            <asp:TextBox class="form-control mb-3" ID="txtSubject" runat="server" placeholder="Subject"></asp:TextBox>
            <asp:TextBox class="form-control mb-3" ID="txtMessage" TextMode="MultiLine" runat="server" placeholder="Your Message"></asp:TextBox>
                      
            <asp:Button CssClass="btn btn-primary" ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="SEND MESSAGE"></asp:Button>
        
        </div>
      </div>
      <div class="col-lg-5">
        <a href="tel:+1 5197618918" class="text-color h5 d-block">+1 519 761 8918</a>
        <a href="mailto:Pgopani3461@conestogac.on.ca" class="mb-5 text-color h5 d-block">Pgopani3461@conestogac.on.ca</a>
        <p>Waterloo<br>Canada</p>
      </div>
    </div>
  </div>
</section>
<!-- /contact -->

</asp:Content>
