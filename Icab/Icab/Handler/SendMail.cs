using System;
using System.Net.Mail;
using System.Web;

namespace Icab.Handler
{
    public class SendMail : IHttpHandler
    {
        /// <summary>
        /// You will need to configure this handler in the Web.config file of your 
        /// web and register it with IIS before being able to use it. For more information
        /// see the following link: http://go.microsoft.com/?linkid=8101007
        /// </summary>
        #region IHttpHandler Members

        public bool IsReusable
        {
            // Return false in case your Managed Handler cannot be reused for another request.
            // Usually this would be false in case you have some state information preserved per request.
            get { return true; }
        }

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            try
            {
                var name = context.Request.Form["name"].Trim();
                var phonenumber = context.Request.Form["phonenumber"].Trim();
                var content = context.Request.Form["content"].Trim();

                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                mail.To.Add("dev1@vtvcab.vn");
                mail.To.Add("khachuong@vtvcab.vn");
                mail.From = new MailAddress("quochung4@vtvcab.vn", "iCab.vtvcab.vn", System.Text.Encoding.UTF8);
                mail.Subject = "Thư mới được gửi từ website iCab";
                mail.SubjectEncoding = System.Text.Encoding.UTF8;
                var message = string.Format("Bạn vừa nhận được email từ: {0}</br> Số điện thoại {1} </br> Nội dung: {2},", name, phonenumber, content);
                mail.Body = message;
                mail.BodyEncoding = System.Text.Encoding.UTF8;
                mail.IsBodyHtml = true;
                mail.Priority = MailPriority.High;

                SmtpClient client = new SmtpClient();
                client.Port = 465;
                client.Host = "mail.vtvcab.vn";
                client.Timeout = 10000;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential("quochung4@vtvcab.vn", "legrottaclie");

                client.Send(mail);
                context.Response.Write("1");
            }
            catch (Exception ex)
            {
                context.Response.Write(null);
            }
        }

        #endregion
    }
}
