using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    class Order
    {
        private int _orderNo;
        private float _purchAmount;
        private DateTime _orderDate;
        private int _customerId;
        private int _salesmanId;

        // Getter and setter for property 
        public int OrderNo 
        {
            get
            {
                return _orderNo;
            }
            set
            {
                _orderNo = value;
            }
        }

        public float PurchAmount
        {
            get
            {
                return _purchAmount;
            }
            set
            {
                _purchAmount = value;
            }
        }

        public DateTime OrderDate
        {
            get
            {
                return _orderDate;
            }
            set
            {
                _orderDate = value;
            }
        }

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

        public int SalesmanId
        {
            get
            {
                return _salesmanId;
            }
            set
            {
                _salesmanId = value;

            }
        
        }



    }
}
