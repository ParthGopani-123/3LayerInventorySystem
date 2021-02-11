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
        static string connectionString = ConfigurationManager.ConnectionStrings["InventoryConnectionString"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionString);

        public int InsertSalesman(ModelSalesman salesman)
        {
            try
            {
                string query = $"Insert Into Salesman (salesman_id, name, city, commision) Values ({salesman.SalesmanId}, '{salesman.Name}', '{salesman.City}', {salesman.Commision});";
                SqlCommand cmd = new SqlCommand(query, connection);
                connection.Open();
                int result = cmd.ExecuteNonQuery();
                connection.Close();
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
                connection.Open();
                string query = "select * from salesman";
                SqlCommand cmd = new SqlCommand(query, connection);
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
                connection.Close();
            }
        }

        public int InsertCustomer(ModelCustomer customer)
        {
            try
            {
                string query = $"INSERT INTO Customer (customer_id, cust_name, city, grade, salesman_id) VALUES ({customer.CustomerId},'{customer.CustomerName}','{customer.City}',{customer.Grade},{customer.SalesmanId});";
                SqlCommand cmd = new SqlCommand(query, connection);

                connection.Open();
                int result = cmd.ExecuteNonQuery();
                connection.Close();
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
                connection.Open();
                string query = "SELECT * FROM Customer";
                SqlCommand cmd = new SqlCommand(query, connection);
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
                connection.Close();
            }
        }

        public void AddNewContact(ContactUs newContact)
        {
            try
            {
                string query = $"INSERT INTO Contact (name, email, subject, message) VALUES ('{newContact.Name}','{newContact.Email}','{newContact.Subject}','{newContact.Message}');";
                SqlCommand cmd = new SqlCommand(query, connection);

                connection.Open();
                cmd.ExecuteNonQuery();
                connection.Close();
                cmd.Dispose();
                
            }
            catch (SqlException e)
            {
              
                throw new Exception(e.Message);
            }

        }
    }
}
