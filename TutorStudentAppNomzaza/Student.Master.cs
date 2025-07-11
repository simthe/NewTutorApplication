﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TutorStudentAppNomzaza
{
    public partial class Student : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["email"] == null)
            {
                Response.Redirect("SignIn.aspx");
            }
        }

        protected void lnkSignOut_Click(object sender, EventArgs e)
        {
            Session["email"] = null;
            Session["password"] = null;
            Response.Redirect("Default.aspx");
        }
    }
}