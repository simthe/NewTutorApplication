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
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            StudentClass student = new StudentClass();
            AdminClass admin = new AdminClass();
            TutorClass tutor = new TutorClass();
            int adminCount = 0, studentCount = 0, tutorCount = 0;
            Session["email"] = txtEmail.Text;
            Session["password"] = txtPassword.Text;
            adminCount = admin.GetAdminLogin(txtEmail.Text, txtPassword.Text).Rows.Count;
            studentCount = student.GetSubjectsLogin(txtEmail.Text, txtPassword.Text).Rows.Count;
            tutorCount = tutor.GetTutorLogin(txtEmail.Text, txtPassword.Text).Rows.Count;
            if (adminCount > 0)
            {
                Response.Redirect("AdminHome.aspx");
            }
            else if (studentCount > 0)
            {
                Response.Redirect("StudentHome.aspx");
            }
            else if (tutorCount > 0)
            {

            }
            else
            {
                lblIncorrect.Visible = true;
                lblIncorrect.Text = "Incorrect login details!";
            }
        }
    }
}