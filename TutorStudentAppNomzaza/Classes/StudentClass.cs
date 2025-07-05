using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace TutorStudentAppNomzaza.Classes
{
    public class StudentClass
    {
        //static string _connectionString = "";
        string _connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
        public string FullName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public int GradeLevel { get; set; }
        public string SchoolName { get; set; }
        public string GuardianContact { get; set; }

        public StudentClass(string fullName, string email, string password, int gradeLevel, string schoolName, string guardianContact)
        {
            FullName = fullName;
            Email = email;
            Password = password;
            GradeLevel = gradeLevel;
            SchoolName = schoolName;
            GuardianContact = guardianContact;
        }

        public StudentClass() { }
        public void AddStudent(string fullName, string email, string password, int gradeLevel, string schoolName, string guardianContact)
        {
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = "sp_AddStudent";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@FullName", fullName);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Password", password);
                    command.Parameters.AddWithValue("@GradeLevel", gradeLevel);
                    command.Parameters.AddWithValue("@SchoolName", schoolName);
                    command.Parameters.AddWithValue("@GuardianContact", guardianContact);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }

        // Method to Get All Students (excluding Password)
        public DataTable GetStudents()
        {
            DataTable studentsTable = new DataTable();

            using (SqlConnection connection = new SqlConnection(_connectionString))
            {

                string query = "sp_GetStudents";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    command.CommandType = CommandType.StoredProcedure;
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        adapter.Fill(studentsTable);
                    }
                }
            }

            return studentsTable;
        }
        public DataTable GetSubjectsLogin(string email, string password)
        {
            DataTable subjectsTable = new DataTable();

            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                using (SqlCommand command = new SqlCommand("AuthenticateUserAccount", connection))
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
        public DataRow GetStudentById(int studentId)
        {
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string procedureName = "sp_GetStudentById";
                using (SqlCommand command = new SqlCommand(procedureName, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@StudentId", studentId);

                    connection.Open();
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        DataTable resultTable = new DataTable();
                        adapter.Fill(resultTable);

                        if (resultTable.Rows.Count > 0)
                        {
                            return resultTable.Rows[0]; // Return the first row (single student)
                        }
                        else
                        {
                            return null; // Return null if no student is found
                        }
                    }
                }
            }
        }
        // Method to Update a Student's Details by Email
        public void UpdateStudent(string email, string fullName, int gradeLevel, string schoolName, string guardianContact)
        {
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = "sp_UpdateStudent";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@FullName", fullName);
                    command.Parameters.AddWithValue("@GradeLevel", gradeLevel);
                    command.Parameters.AddWithValue("@SchoolName", schoolName);
                    command.Parameters.AddWithValue("@GuardianContact", guardianContact);
                    command.Parameters.AddWithValue("@Email", email);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
        public void UpdateStudentPassword(string email, string password)
        {
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = "sp_ChangePassword";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@Password", password);
                    command.Parameters.AddWithValue("@Email", email);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}