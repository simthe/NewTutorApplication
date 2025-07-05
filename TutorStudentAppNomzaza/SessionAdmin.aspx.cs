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
    public partial class SessionAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetTutors();
                GetSubjects();
            }
        }
        public void GetTutors()
        {
            TutorClass tut = new TutorClass();
            cmbTutor.DataSource = tut.GetTutors();
            cmbTutor.DataTextField = "Name";
            cmbTutor.DataValueField = "TutorID";
            cmbTutor.DataBind();
        }
        public void GetSubjects()
        {
            SubjectClass sub = new SubjectClass();
            cmbSubject.DataSource = sub.GetSubjects();
            cmbSubject.DataTextField = "SubjectName";
            cmbSubject.DataValueField = "SubjectID";
            cmbSubject.DataBind();
        }

        protected void txtSave_Click(object sender, EventArgs e)
        {
            try
            {
                string startTime = txtStartTime.Text.Trim();
                string endTime = txtEndTime.Text.Trim();
                int subjectID = int.Parse(cmbSubject.SelectedValue.ToString());
                int tutorID = int.Parse(cmbTutor.SelectedValue.ToString());
                string sessionLink = txtSessionLink.Text.Trim();

                SessionClass ses = new SessionClass();


                // Call AddSubject to insert the data into the database
                ses.AddSession(subjectID, tutorID, startTime, endTime, sessionLink);

                // Display success message
                lblSuccess.Text = "Session added successfully!";
                pnlSubAdd.Visible = false;
                pnlSubDis.Visible = true;
            }
            catch (Exception ex)
            {
                // Handle errors
                lblError.Text = $"Error: {ex.Message}";
            }
        }

        protected void btnNewSession_Click(object sender, EventArgs e)
        {
            pnlSubAdd.Visible = true;
            pnlSubDis.Visible = false;
        }

        protected void dgvTutor_PreRender(object sender, EventArgs e)
        {
            SessionClass ses = new SessionClass();
            try
            {
                //ParkingHandler ph = new ParkingHandler();
                dgvTutor.DataSource = ses.GetSessions();
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