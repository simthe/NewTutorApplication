using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace TutorStudentAppNomzaza.Classes
{
    public class TutorClass
    {
        public int TutorID { get; set; }             
        public string FirstName { get; set; }    
        public string LastName { get; set; }
        public string Email { get; set; }             
        public string Password { get; set; }          
        public string Qualification { get; set; }
        public string PhoneNumber { get; set; }
        

        string _connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;


        public void AddTutor(string firstName, string lastName, string email, string phoneNumber, string password, string qualification)
        {
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                using (SqlCommand command = new SqlCommand("sp_AddTutor", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    // Add parameters
                    command.Parameters.AddWithValue("@FirstName", firstName);
                    command.Parameters.AddWithValue("@LastName", lastName);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                    command.Parameters.AddWithValue("@Password", password); // Use hashing for real-world applications
                    command.Parameters.AddWithValue("@Qualification", qualification);

                    // Execute query
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
        public DataTable GetTutorLogin(string email, string password)
        {
            DataTable subjectsTable = new DataTable();

            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                using (SqlCommand command = new SqlCommand("AuthenticateTutor", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Password", password);
                    command.CommandTimeout = 120; // 2 minutes
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    adapter.Fill(subjectsTable);
                }
            }

            return subjectsTable;
        }
        public DataTable GetTutors()
        {
            DataTable tutorsTable = new DataTable();

            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                using (SqlCommand command = new SqlCommand("sp_GetTutors", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    adapter.Fill(tutorsTable);
                }
            }

            return tutorsTable;
        }
    }
}