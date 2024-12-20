using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace CaseStudyPO
{
    public class PostDataAccess
    {
        private readonly string connectionString = ConfigurationManager.ConnectionStrings["PostOfficeCasestudy"].ConnectionString;

        // Method to get all records from PostOffice
        public DataTable GetPostOfficeData()
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM PostOffice", conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
        }

        // Method to insert a new record into PostOffice
        public void InsertPostOfficeData(string firstName, string lastName, string address, string schemeName, decimal balance, int noOfYears, string mobile)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO PostOffice (Firstname, Lastname, Address, Schemename, Balance, NoOfYears, Mobile) " +
                               "VALUES (@Firstname, @Lastname, @Address, @Schemename, @Balance, @NoOfYears, @Mobile)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Firstname", firstName);
                cmd.Parameters.AddWithValue("@Lastname", lastName);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@Schemename", schemeName);
                cmd.Parameters.AddWithValue("@Balance", balance);
                cmd.Parameters.AddWithValue("@NoOfYears", noOfYears);
                cmd.Parameters.AddWithValue("@Mobile", mobile);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        // Method to update an existing record in PostOffice by Id
        public void UpdatePostOfficeData(int id, string firstName, string lastName, string address, string schemeName, decimal balance, int noOfYears, string mobile)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "UPDATE PostOffice SET Firstname = @Firstname, Lastname = @Lastname, Address = @Address, " +
                               "Schemename = @Schemename, Balance = @Balance, NoOfYears = @NoOfYears, Mobile = @Mobile WHERE Id = @Id";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.Parameters.AddWithValue("@Firstname", firstName);
                cmd.Parameters.AddWithValue("@Lastname", lastName);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@Schemename", schemeName);
                cmd.Parameters.AddWithValue("@Balance", balance);
                cmd.Parameters.AddWithValue("@NoOfYears", noOfYears);
                cmd.Parameters.AddWithValue("@Mobile", mobile);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        // Method to delete a record from PostOffice by Id
        public void DeletePostOfficeData(int id)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM PostOffice WHERE Id = @Id";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Id", id);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}
