using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace TutorStudentAppNomzaza.Classes
{
    public class SessionClass
    {
        private string _connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

        public int SessionID { get; set; }
        public int TutorID { get; set; }
        public int SubjectID { get; set; }
        public string StartTime { get; set; }
        public string EndTime { get; set; }
        public string SessionLink { get; set; }

        public SessionClass(int subjectID, int tutorID, string startTime, string endTime)
        {
            SubjectID = subjectID;
            TutorID = tutorID;
            StartTime = startTime;
            EndTime = endTime;
        }

        public SessionClass() { }
        public void AddSession(int subjectID, int tutorID, string startTime, string endTime, string sessionLink)
        {
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = "sp_AddSession";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@SubjectID", subjectID);
                    command.Parameters.AddWithValue("@TutorID", tutorID);
                    command.Parameters.AddWithValue("@StartTime", startTime);
                    command.Parameters.AddWithValue("@EndTime", endTime);
                    command.Parameters.AddWithValue("@SessionLink", sessionLink);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }

        public DataTable GetSessions()
        {
            DataTable sessionsTable = new DataTable();
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = "sp_GetSessions";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    connection.Open();
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        adapter.Fill(sessionsTable);
                    }
                }
            }
            return sessionsTable;
        }
        public DataRow GetSessionById(int sessionID)
        {
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = "sp_GetSessionById";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@SessionID", sessionID);
                    connection.Open();
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        DataTable resultTable = new DataTable();
                        adapter.Fill(resultTable);
                        return resultTable.Rows.Count > 0 ? resultTable.Rows[0] : null;
                    }
                }
            }
        }

        public void UpdateSession(int sessionID, int subjectID, int tutorID, string startTime, string endTime, string sessionLink)
        {
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = "sp_UpdateSession";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@SessionID", sessionID);
                    command.Parameters.AddWithValue("@TutorID", tutorID);
                    command.Parameters.AddWithValue("@SubjectID", subjectID);
                    command.Parameters.AddWithValue("@StartTime", startTime);
                    command.Parameters.AddWithValue("@EndTime", endTime);
                    command.Parameters.AddWithValue("@SessionLink", sessionLink);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}