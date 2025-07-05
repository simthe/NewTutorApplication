using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace TutorStudentAppNomzaza
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void SendEmailLegacy()
        {
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("mrnomzaza@qqtlearn.co.za");
            mail.To.Add("mdunyelwavuyolwethu@gmail.com");
            mail.Subject = "Test Email";
            mail.Body = "This is a test email sent using System.Net.Mail.";

            SmtpClient smtp = new SmtpClient("bloodlust.aserv.co.za", 465); // use correct SMTP port
            smtp.Credentials = new NetworkCredential("mrnomzaza@qqtlearn.co.za", "Blissbaby@55");
            smtp.EnableSsl = true;

            smtp.Send(mail);
        }
        protected void btnEmail_Click(object sender, EventArgs e)
        {
            SendEmailLegacy();
        }
    }
}