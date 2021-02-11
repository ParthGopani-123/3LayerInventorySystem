using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class ModelCustomer
    {
        // Declaring cusromer details variables
        private int _customerId;
        private string _customerName;
        private string _city;
        private int _grade;
        private int _salesmanID;


        // Encapsulation 
        public int CustomerId
        {
            get
            {
                return _customerId;
            }
            set
            {
                _customerId = value;
            }
            
        }

        public string CustomerName
        {
            get
            {
                return _customerName;
            }
            set
            {
                _customerName = value;
            }

        }

        public string City
        {
            get
            {
                return _city;
            }
            set
            {
                _city = value;
            }

        }

        public int Grade
        {
            get
            {
                return _grade;
            }
            set
            {
                _grade = value;
            }

        }

        public int SalesmanId
        {
            get
            {
                return _salesmanID;
            }
            set
            {
                _salesmanID = value;
            }

        }


    }
}
