using System;
using System.Configuration;
using Models;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class DBAccess
    {
        private string _connectionString;
        private SqlConnection _connection;

        public DBAccess()
        {
            _connectionString = ConfigurationManager.ConnectionStrings["InventoryConnectionString"].ConnectionString;
            _connection = new SqlConnection(_connectionString);
        }

        public int InsertSalesman(ModelSalesman salesman)
        {
            _connectionString = ConfigurationManager.ConnectionStrings["InventoryConnectionString"].ConnectionString;
            _connection = new SqlConnection(_connectionString);

            try
            {
                string query = $"Insert Into Salesman (salesman_id, name, city, commision) Values ({salesman.SalesmanId}, '{salesman.Name}', '{salesman.City}', {salesman.Commision});";
                SqlCommand cmd = new SqlCommand(query, _connection);
                _connection.Open();
                int result = cmd.ExecuteNonQuery();
                _connection.Close();
                cmd.Dispose();
                return result;
            }
            catch (SqlException e)
            {
                return 0;
                throw new Exception(e.Message);
            }
            
        }

        // This method return DataTable for salesman for gridview
        public DataTable BindSalesmanGridView()
        {
            DataTable DT = new DataTable();

            try
            {
                _connection.Open();
                string query = "select * from salesman";
                SqlCommand cmd = new SqlCommand(query, _connection);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(DT);

                return DT;

            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "Error: ";
                msg += ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                _connection.Close();
            }
        }

        public int InsertCustomer(ModelCustomer customer)
        {
            try
            {
                string query = $"INSERT INTO Customer (customer_id, cust_name, city, grade, salesman_id) VALUES ({customer.CustomerId},'{customer.CustomerName}','{customer.City}',{customer.Grade},{customer.SalesmanId});";
                SqlCommand cmd = new SqlCommand(query, _connection);

                _connection.Open();
                int result = cmd.ExecuteNonQuery();
                _connection.Close();
                cmd.Dispose();
                return result;
            }
            catch(SqlException e)
            {                            
                return 0;
                throw new Exception(e.Message);
            }         
          
        }

        public DataTable BindCustomerGridView()
        {
            DataTable DT = new DataTable();

            try
            {
                _connection.Open();
                string query = "SELECT * FROM Customer";
                SqlCommand cmd = new SqlCommand(query, _connection);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(DT);

                return DT;

            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "Error: ";
                msg += ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                _connection.Close();
            }
        }

        public void AddNewContact(ContactUs newContact)
        {
            try
            {
                string query = $"INSERT INTO Contact (name, email, subject, message) VALUES ('{newContact.Name}','{newContact.Email}','{newContact.Subject}','{newContact.Message}');";
                SqlCommand cmd = new SqlCommand(query, _connection);

                _connection.Open();
                cmd.ExecuteNonQuery();
                _connection.Close();
                cmd.Dispose();
                
            }
            catch (SqlException e)
            {
              
                throw new Exception(e.Message);
            }

        }

    }
}
