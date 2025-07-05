using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace TutorStudentAppNomzaza.Classes
{
    public class NewsClass
    {

        public int NewsID { get; set; }

        public string Description { get; set; }

        public byte[] Photo { get; set; } 

        public string Link { get; set; }

        public string Status { get; set; }
        string _connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
        public void AddNews(NewsClass news)
        {
            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("sp_AddNews", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Description", news.Description);
                cmd.Parameters.AddWithValue("@Photo", news.Photo ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@Link", news.Link);
                cmd.Parameters.AddWithValue("@Status", news.Status);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }
        public void UpdateNews(NewsClass news)
        {
            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("sp_UpdateNews", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@NewsID", news.NewsID);
                cmd.Parameters.AddWithValue("@Status", news.Status);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }
        public DataTable GetAllNews()
        {
            DataTable sessionsTable = new DataTable();
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = "sp_GetAllNews";
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
        public DataTable GetAllNewsAdmin()
        {
            DataTable sessionsTable = new DataTable();
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = "sp_GetAllNewsAdmin";
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
        public DataTable GetNewsById(int newsID)
        {
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = "sp_GetNewsById";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@NewsID", newsID);
                    connection.Open();
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        DataTable resultTable = new DataTable();
                        adapter.Fill(resultTable);
                        return resultTable;
                    }
                }
            }
        }
    }
}