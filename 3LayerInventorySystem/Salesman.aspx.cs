using System;
using Models;
using BusinessLogic;
using System.Data;
using DataAccess;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3LayerInventorySystem
{
    public partial class Salesman : System.Web.UI.Page
    {       
        protected void Page_Load(object sender, EventArgs e)
        {
            FillDataToGridView();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int result = 0;

            // Enter data into the salesman model
            ModelSalesman salesman = new ModelSalesman
            {
                SalesmanId = Convert.ToInt32(txtID.Text),
                Name = txtSalesmanName.Text,
                City = txtCity.Text,
                Commision =  float.Parse(txtCommission.Text)
            };

            BusinessLayer bl = new BusinessLayer();
            result = bl.EnterNewSalesman(salesman);

            if(result>0)
            {
                lblResult.Text = "Record inserted successfully";
                txtCity.Text = string.Empty;
                txtCommission.Text = string.Empty;
                txtSalesmanName.Text = string.Empty;
                txtID.Text = string.Empty;
            }
            else
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = "ERROR: There is something going wrong";

            }

            FillDataToGridView();

        }

        // This is the method to fill the data gridView
        private void FillDataToGridView()
        {
            DataTable dataTable;
            DBAccess db = new DBAccess();
            dataTable = db.BindSalesmanGridView();
            gvSalesman.DataSource = dataTable;
            gvSalesman.DataBind();

        }
    }
}