using System;
using Models;
using BusinessLogic;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3LayerInventorySystem
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            ContactUs newContact = new ContactUs
            {
                Name = txtName.Text,
                Email = txtMail.Text,
                Message = txtMessage.Text,
                Subject = txtSubject.Text

            };

            BusinessLayer bl = new BusinessLayer();
            bl.AddNewConatct(newContact);

            txtMail.Text = "";
            txtMessage.Text = "";
            txtName.Text = "";
            txtSubject.Text = "";

        }
    }
}