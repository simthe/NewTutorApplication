using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TutorStudentAppNomzaza.Classes
{
    public class StudentSubject
    {
        public int StudentID { get; set; }
        public int SubjectID { get; set; }
        string _connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

        public void InsertStudentSubjects(int studentId, List<int> subjectIds)
        {
            using (SqlConnection conn = new SqlConnection(_connectionString))
            {
                conn.Open();

                foreach (int subjectId in subjectIds)
                {
                    // Insert new association
                    SqlCommand insertCmd = new SqlCommand(
                        "INSERT INTO Student_Subject (StudentID, SubjectID) VALUES (@StudentID, @SubjectID)", conn);
                    insertCmd.Parameters.AddWithValue("@StudentID", studentId);
                    insertCmd.Parameters.AddWithValue("@SubjectID", subjectId);
                    insertCmd.ExecuteNonQuery();
                }
            }
        }
    }

}