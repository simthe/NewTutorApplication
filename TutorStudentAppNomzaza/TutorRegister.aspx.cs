using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TutorStudentAppNomzaza.Classes;

namespace TutorStudentAppNomzaza
{
    public partial class TutorRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                string fullName = txtFirstName.Text.Trim();
                string lastName = txtLastName.Text.Trim(); 
                string email = txtEmail.Text.Trim();
                string phone = txtPhone.Text.Trim(); 
                string password = txtPassword.Text.Trim();
                string qualification = txtQualification.Text.Trim();

                // Initialize data access class
                TutorClass tutor = new TutorClass();

                // Add the tutor to the database
                tutor.AddTutor(fullName, lastName, email, phone, password, qualification);

                lblSuccess.Text = "Tutor added successfully!";
                pnlSubAdd.Visible = false;
                pnlSubDis.Visible = true;
            }
            catch (Exception ex)
            {
                lblError.Text = $"Error: {ex.Message}";
            }
        }

        protected void btnNewTutor_Click(object sender, EventArgs e)
        {
            
            pnlSubAdd.Visible = true;
            pnlSubDis.Visible = false;
        }

        protected void dgvTutor_PreRender(object sender, EventArgs e)
        {
            TutorClass tutor = new TutorClass();
            try
            {
                //ParkingHandler ph = new ParkingHandler();
                dgvTutor.DataSource = tutor.GetTutors();
                dgvTutor.DataBind();

                if (dgvTutor.Rows.Count > 0)
                {
                    //This replaces <td> with <th> and adds the scope attribute
                    dgvTutor.UseAccessibleHeader = true;

                    //This will add the <thead> and <tbody> elements
                    dgvTutor.HeaderRow.TableSection = TableRowSection.TableHeader;
                }
            }
            catch (Exception)
            {

            }
        }
    }
}