using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TutorStudentAppNomzaza.Classes;

namespace TutorStudentAppNomzaza
{
    public partial class NewsUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NewsClass news = new NewsClass();
            dlNews.DataSource = news.GetAllNews();
            dlNews.DataBind(); 
        }
    }
}