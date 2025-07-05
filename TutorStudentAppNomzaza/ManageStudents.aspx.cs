using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TutorStudentAppNomzaza.Classes;

namespace TutorStudentAppNomzaza
{
    public partial class ManageStudents : System.Web.UI.Page
    {

        StudentClass st = new StudentClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dgvAllStudents_PreRender(object sender, EventArgs e)
        {
            try
            {
                //ParkingHandler ph = new ParkingHandler();
                dgvAllStudents.DataSource = st.GetStudents();
                dgvAllStudents.DataBind();

                if (dgvAllStudents.Rows.Count > 0)
                {
                    //This replaces <td> with <th> and adds the scope attribute
                    dgvAllStudents.UseAccessibleHeader = true;

                    //This will add the <thead> and <tbody> elements
                    dgvAllStudents.HeaderRow.TableSection = TableRowSection.TableHeader;
                }
            }
            catch (Exception)
            {

            }
        }

        protected void imgSignOut_Click(object sender, EventArgs e)
        {

        }
    }
}