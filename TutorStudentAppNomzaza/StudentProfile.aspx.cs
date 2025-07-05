using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TutorStudentAppNomzaza.Classes;
using System.Data;

namespace TutorStudentAppNomzaza
{
    public partial class StudentProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetSessions();
                Display();
            }
        }
        public void Display()
        {
            StudentClass student = new StudentClass();
            DataTable dt = student.GetSubjectsLogin(Session["email"].ToString(), Session["password"].ToString());
            lblStudName.Text = dt.Rows[0]["FullName"].ToString();
            lblStudEmail.Text = dt.Rows[0]["Email"].ToString();
            lblSchool.Text = dt.Rows[0]["SchoolName"].ToString();
            lblGradeLevel.Text = dt.Rows[0]["GradeLevel"].ToString();
            lblGuardian.Text = dt.Rows[0]["GuardianContact"].ToString();
        }
        public void GetSessions()
        {
            SessionClass ses = new SessionClass();
            dlSessions.DataSource = ses.GetSessions();
            dlSessions.DataBind();
        }

        protected void btnSavePassword_Click(object sender, EventArgs e)
        {
            StudentClass student = new StudentClass();
            DataTable dt = student.GetSubjectsLogin(Session["email"].ToString(), Session["password"].ToString());

            string password = dt.Rows[0]["Password"].ToString();
            if (password == txtOldPassword.Text)
            {
                if (txtNewPassword.Text == txtConfirmPassword.Text)
                {
                    student.UpdateStudentPassword(Session["email"].ToString(), txtNewPassword.Text);
                    lblCorrectPassword.ForeColor = System.Drawing.Color.Green;
                    lblCorrectPassword.Visible = true;
                    lblCorrectPassword.Text = "Password changed!";
                }
                else
                {
                    lblCorrectPassword.ForeColor = System.Drawing.Color.Red;
                    lblCorrectPassword.Visible = true;
                    lblCorrectPassword.Text = "Passwords do not match!";
                }
            }
            else
            {
                lblCorrectPassword.ForeColor = System.Drawing.Color.Red;
                lblCorrectPassword.Visible = true;
                lblCorrectPassword.Text = "Old Password is incorrect!";
            }
        }
    }
}