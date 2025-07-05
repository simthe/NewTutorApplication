using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using TutorStudentAppNomzaza.Classes;
using System.Data; 

namespace TutorStudentAppNomzaza
{
    public partial class ManageNews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddNews_Click(object sender, EventArgs e)
        {
            
        }

        protected void dgvNews_PreRender(object sender, EventArgs e)
        {
            NewsClass ses = new NewsClass();
            try
            {
                //ParkingHandler ph = new ParkingHandler();
                dgvNews.DataSource = ses.GetAllNewsAdmin();
                dgvNews.DataBind();

                if (dgvNews.Rows.Count > 0)
                {
                    //This replaces <td> with <th> and adds the scope attribute
                    dgvNews.UseAccessibleHeader = true;

                    //This will add the <thead> and <tbody> elements
                    dgvNews.HeaderRow.TableSection = TableRowSection.TableHeader;
                }
            }
            catch (Exception)
            {

            }
        }

        protected void btnNewNews_Click(object sender, EventArgs e)
        {
            pnlNewsAdmin.Visible = false;
            pnlSubAdd.Visible = true;
            btnAddNews.Text = "Add News";
        }

        protected void btnAddNews_Click1(object sender, EventArgs e)
        {
            if (btnAddNews.Text == "Update News")
            {
                NewsClass news = new NewsClass();
                news.NewsID = int.Parse(Session["newsID"].ToString());
                news.Status = ddlStatus.SelectedValue;
                news.UpdateNews(news);
                pnlNewsAdmin.Visible = true;
                pnlSubAdd.Visible = false;
            }
            else
            {

                txtDescription.Enabled = true;
                txtLink.Enabled = true;
                fuPhoto.Enabled = true;

                try
                {
                    byte[] photoBytes = null;

                    if (fuPhoto.HasFile)
                    {
                        using (BinaryReader br = new BinaryReader(fuPhoto.PostedFile.InputStream))
                        {
                            photoBytes = br.ReadBytes(fuPhoto.PostedFile.ContentLength);
                        }
                    }

                    NewsClass news = new NewsClass
                    {
                        Description = txtDescription.Text.Trim(),
                        Photo = photoBytes,
                        Link = txtLink.Text.Trim(),
                        Status = ddlStatus.SelectedValue
                    };

                    NewsClass dal = new NewsClass();
                    dal.AddNews(news);

                    lblSuccess.Text = "News added successfully.";
                    lblError.Text = "";
                    pnlNewsAdmin.Visible = true;
                    pnlSubAdd.Visible = false;
                }
                catch (Exception ex)
                {
                    lblSuccess.Text = "";
                    lblError.Text = "Error: " + ex.Message;
                }
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            NewsClass news = new NewsClass();
            Button btnNewsID = (Button)sender; 

            int newsID = int.Parse(btnNewsID.CommandArgument.ToString());
            Session["newsID"] = newsID;
            DataTable dt = news.GetNewsById(newsID);

            txtDescription.Text = dt.Rows[0]["Description"].ToString();
            txtLink.Text = dt.Rows[0]["Link"].ToString();

            pnlNewsAdmin.Visible = false;
            pnlSubAdd.Visible = true;
            txtDescription.Enabled = false;
            btnAddNews.Text = "Update News";
            txtLink.Enabled = false;
            fuPhoto.Enabled = false;
        }
    }
}