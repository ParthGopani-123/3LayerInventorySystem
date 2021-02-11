using System;
using Models;
using DataAccess;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class BusinessLayer
    {
        public int EnterNewSalesman(ModelSalesman salesman)
        {
            DBAccess addSalesman = new DBAccess();
            return addSalesman.InsertSalesman(salesman);
          
        }

        public int EnterNewCustomer(ModelCustomer customer)
        {
            DBAccess addCustomer = new DBAccess();
            return addCustomer.InsertCustomer(customer);          
        }

        public void AddNewConatct(ContactUs newContact)
        {
            DBAccess addContact = new DBAccess();
            addContact.AddNewContact(newContact);
        }
    }
}
