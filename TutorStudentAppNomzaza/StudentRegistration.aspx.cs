using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TutorStudentAppNomzaza.Classes;

namespace TutorStudentAppNomzaza
{
    public partial class StudentRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetSubjects();
            }
        }
        public void GetSubjects()
        {
            SubjectClass sub = new SubjectClass(); 
            chkSubjects.DataSource = sub.GetSubjects();
            
            chkSubjects.DataTextField = "SubjectName";
            chkSubjects.DataValueField = "SubjectID";
            chkSubjects.DataBind();
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                // Create a new student object and populate its properties
                StudentClass student = new StudentClass
                {
                    FullName = txtFirstName.Text.Trim(),
                    Email = txtEmail.Text.Trim(),
                    Password = txtPassword.Text.Trim(),
                    GradeLevel = int.Parse(txtGradeLevel.Text.Trim()),
                    SchoolName = txtSchoolName.Text.Trim(),
                    GuardianContact = txtGuardianName.Text.Trim()
                };

                // Call the AddStudent method from the StudentDataAccess class
                student.AddStudent(
                    student.FullName,
                    student.Email,
                    student.Password,
                    student.GradeLevel,
                    student.SchoolName,
                    student.GuardianContact
                );

                // Display success message
                lblSuccess.Text = "Student added successfully!";
            }
            catch (Exception ex)
            {
                // Display error message
                lblError.Text = $"Error: {ex.Message}";
            }
        }
    }
}