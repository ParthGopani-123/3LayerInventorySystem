<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="_3LayerInventorySystem.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <section class="page-title-section overlay" data-background="images/back.jpg">
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb">
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
        <h2 class="section-title">Your Total Orders Are Below</h2>
      </div>
    </div>
    <br /><br />

        <div>
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="order_no" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="order_no" HeaderText="order_no" ReadOnly="True" SortExpression="order_no" />
            <asp:BoundField DataField="purch_amt" HeaderText="purch_amt" SortExpression="purch_amt" />
            <asp:BoundField DataField="ord_date" HeaderText="ord_date" SortExpression="ord_date" />
            <asp:BoundField DataField="customer_id" HeaderText="customer_id" SortExpression="customer_id" />
            <asp:BoundField DataField="salesman_id" HeaderText="salesman_id" SortExpression="salesman_id" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryConnectionString %>" SelectCommand="SELECT * FROM [orders]" DeleteCommand="DELETE FROM [orders] WHERE [order_no] = @order_no" InsertCommand="INSERT INTO [orders] ([order_no], [purch_amt], [ord_date], [customer_id], [salesman_id]) VALUES (@order_no, @purch_amt, @ord_date, @customer_id, @salesman_id)" UpdateCommand="UPDATE [orders] SET [purch_amt] = @purch_amt, [ord_date] = @ord_date, [customer_id] = @customer_id, [salesman_id] = @salesman_id WHERE [order_no] = @order_no">
    <DeleteParameters>
        <asp:Parameter Name="order_no" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="order_no" Type="Int32" />
        <asp:Parameter Name="purch_amt" Type="Double" />
        <asp:Parameter DbType="Date" Name="ord_date" />
        <asp:Parameter Name="customer_id" Type="Int32" />
        <asp:Parameter Name="salesman_id" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="purch_amt" Type="Double" />
        <asp:Parameter DbType="Date" Name="ord_date" />
        <asp:Parameter Name="customer_id" Type="Int32" />
        <asp:Parameter Name="salesman_id" Type="Int32" />
        <asp:Parameter Name="order_no" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>
        </div>
   
  </div>
</section>

    <%--<h2>Orders</h2>
<br /><br />
     <h1><span class="badge badge-success btn-lg btn-block">Existing Orders</span></h1>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="order_no" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="order_no" HeaderText="order_no" ReadOnly="True" SortExpression="order_no" />
            <asp:BoundField DataField="purch_amt" HeaderText="purch_amt" SortExpression="purch_amt" />
            <asp:BoundField DataField="ord_date" HeaderText="ord_date" SortExpression="ord_date" />
            <asp:BoundField DataField="customer_id" HeaderText="customer_id" SortExpression="customer_id" />
            <asp:BoundField DataField="salesman_id" HeaderText="salesman_id" SortExpression="salesman_id" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryConnectionString %>" SelectCommand="SELECT * FROM [orders]" DeleteCommand="DELETE FROM [orders] WHERE [order_no] = @order_no" InsertCommand="INSERT INTO [orders] ([order_no], [purch_amt], [ord_date], [customer_id], [salesman_id]) VALUES (@order_no, @purch_amt, @ord_date, @customer_id, @salesman_id)" UpdateCommand="UPDATE [orders] SET [purch_amt] = @purch_amt, [ord_date] = @ord_date, [customer_id] = @customer_id, [salesman_id] = @salesman_id WHERE [order_no] = @order_no">
    <DeleteParameters>
        <asp:Parameter Name="order_no" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="order_no" Type="Int32" />
        <asp:Parameter Name="purch_amt" Type="Double" />
        <asp:Parameter DbType="Date" Name="ord_date" />
        <asp:Parameter Name="customer_id" Type="Int32" />
        <asp:Parameter Name="salesman_id" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="purch_amt" Type="Double" />
        <asp:Parameter DbType="Date" Name="ord_date" />
        <asp:Parameter Name="customer_id" Type="Int32" />
        <asp:Parameter Name="salesman_id" Type="Int32" />
        <asp:Parameter Name="order_no" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>--%>
</asp:Content>
