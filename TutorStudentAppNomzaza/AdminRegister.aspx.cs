using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TutorStudentAppNomzaza.Classes;

namespace TutorStudentAppNomzaza
{
    public partial class AdminRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {

                AdminClass admin = new AdminClass();


                // Retrieve values from textboxes
                string firstName = txtFirstName.Text.Trim();
                string lastName = txtLastName.Text.Trim();
                string email = txtEmail.Text.Trim();
                string password = txtPassword.Text.Trim();

                admin.AddAdmin(firstName, lastName, email, password);

                // Display success message
                lblMessage.Text = "Admin added successfully!";
                lblMessage.ForeColor = System.Drawing.Color.Green;

                // Clear input fields
                txtFirstName.Text = "";
                txtLastName.Text = "";
                txtEmail.Text = "";
                txtPassword.Text = "";
                pnlSubAdd.Visible = false;
                pnlSubDis.Visible = true;
            }
            catch (Exception ex)
            {
                // Display error message
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnAddAdmin_Click(object sender, EventArgs e)
        {
            pnlSubAdd.Visible = true;
            pnlSubDis.Visible = false;
        }

        protected void dgvAdmin_PreRender(object sender, EventArgs e)
        {
            AdminClass st = new AdminClass();
            try
            {
                //ParkingHandler ph = new ParkingHandler();
                dgvAdmin.DataSource = st.GetAdmins();
                dgvAdmin.DataBind();

                if (dgvAdmin.Rows.Count > 0)
                {
                    //This replaces <td> with <th> and adds the scope attribute
                    dgvAdmin.UseAccessibleHeader = true;

                    //This will add the <thead> and <tbody> elements
                    dgvAdmin.HeaderRow.TableSection = TableRowSection.TableHeader;
                }
            }
            catch (Exception)
            {

            }
        }
    }
}