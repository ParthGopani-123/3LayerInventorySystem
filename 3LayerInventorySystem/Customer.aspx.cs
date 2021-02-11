using System;
using Models;
using DataAccess;
using BusinessLogic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3LayerInventorySystem
{
    public partial class Customer : System.Web.UI.Page
    {      
        protected void Page_Load(object sender, EventArgs e)
        {
            FillDataToGridView();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int result = 0;
            ModelCustomer customer = new ModelCustomer
            {
             
                CustomerId = Convert.ToInt32(txtCustomerID.Text),
                CustomerName = txtCustomerName.Text,
                City = txtCity.Text,
                Grade = Convert.ToInt32(txtGrade.Text),
                SalesmanId = Convert.ToInt32(txtSalesmanID.Text)

            };

            BusinessLayer bl = new BusinessLayer();
            result = bl.EnterNewCustomer(customer);

            if(result>0)
            {
                txtCity.Text = "";
                txtCustomerID.Text = "";
                txtCustomerName.Text = "";
                txtGrade.Text = "";
                txtSalesmanID.Text = "";
                lblResult.Text = "Record Inserted Successfully";
            }
            else
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "Error: Something going wrong";
            }

            FillDataToGridView();
        }

        private void FillDataToGridView()
        {
            DataTable dataTable;
            DBAccess db = new DBAccess();
            dataTable = db.BindCustomerGridView();
            gvCustomer.DataSource = dataTable;
            gvCustomer.DataBind();

        }
    }
}