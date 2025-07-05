using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TutorStudentAppNomzaza.Classes;

namespace TutorStudentAppNomzaza
{
    public partial class SubjectAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtSave_Click(object sender, EventArgs e)
        {
            try
            {
                string subjectName = txtSubName.Text.Trim();
                string subjectDescription = txtSubDesc.Text.Trim();

                SubjectClass subject = new SubjectClass();

                // Call AddSubject to insert the data into the database
                subject.AddSubject(subjectName, subjectDescription);

                // Display success message
                lblSuccess.Text = "Subject added successfully!";
                pnlSubAdd.Visible = false;
                pnlSubDis.Visible = true;
            }
            catch (Exception ex)
            {
                // Handle errors
                lblError.Text = $"Error: {ex.Message}";
            }
        }

        protected void dgvSubjects_PreRender(object sender, EventArgs e)
        {
            SubjectClass st = new SubjectClass();
            try
            {
                //ParkingHandler ph = new ParkingHandler();
                dgvSubjects.DataSource = st.GetSubjects();
                dgvSubjects.DataBind();

                if (dgvSubjects.Rows.Count > 0)
                {
                    //This replaces <td> with <th> and adds the scope attribute
                    dgvSubjects.UseAccessibleHeader = true;

                    //This will add the <thead> and <tbody> elements
                    dgvSubjects.HeaderRow.TableSection = TableRowSection.TableHeader;
                }
            }
            catch (Exception)
            {

            }
        }

        protected void NewSubject_Click(object sender, EventArgs e)
        {
            pnlSubAdd.Visible = true;
            pnlSubDis.Visible = false;
        }
    }
}