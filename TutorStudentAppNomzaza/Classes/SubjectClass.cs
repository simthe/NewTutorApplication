using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TutorStudentAppNomzaza.Classes
{
    public class SubjectClass
    {
        public int SubjectID { get; set; }
        public string SubjectName { get; set; }
        public string SubjectDescription { get; set; }

        string _connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
        
        public void AddSubject(string subjectName, string subjectDescription)
        {
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                using (SqlCommand command = new SqlCommand("sp_AddSubject", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@SubjectName", subjectName);
                    command.Parameters.AddWithValue("@SubjectDescription", subjectDescription);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }

        public DataTable GetSubjects()
        {
            DataTable subjectsTable = new DataTable();

            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                using (SqlCommand command = new SqlCommand("sp_GetSubjects", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    adapter.Fill(subjectsTable);
                }
            }

            return subjectsTable;
        }
    }
}