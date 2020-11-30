using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace lab7
{
    public partial class SendEmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            var fromAddress = "xibra9141x@gmail.com";// Gmail Address from where you send the mail
            var toAddress = TextBox1.Text.ToString();
            const string fromPassword = "0534618001Ibrahemm!";//Password of your gmail address

            string body = TextBox2.Text;
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }
            smtp.Send(fromAddress, toAddress, TextBox3.Text, body);
            Label1.Visible = true;
            Label1.Text = "Messege sent to " + TextBox1.Text;
        }

    }
}
