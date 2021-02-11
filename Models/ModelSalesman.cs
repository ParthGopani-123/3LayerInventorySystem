using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class ModelSalesman
    {
        private int _salesmanId;
        private string _name;
        private string _city;
        private float _commision;

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

        public string Name
        {
            get
            {
                return _name;
            }
            set
            {
                _name = value;
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

        public float Commision
        {
            get
            {
                return _commision;
            }
            set
            {
                _commision = value;
            }
        }

    }
}
