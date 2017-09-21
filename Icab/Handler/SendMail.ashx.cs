using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Configuration;

namespace Icab.Handler
{
    /// <summary>
    /// Summary description for SendMail1
    /// </summary>
    public class SendMail1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            try
            {
                var name = context.Request.Form["name"].Trim();
                var phone = context.Request.Form["phone"].Trim();
                var content = context.Request.Form["content"].Trim();

                var port = WebConfigurationManager.AppSettings["email_Port"];
                var host = WebConfigurationManager.AppSettings["email_Host"];
                var email = WebConfigurationManager.AppSettings["email_name"];
                var password = WebConfigurationManager.AppSettings["email_password"];

                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                mail.To.Add("dev1@vtvcab.vn");
                mail.To.Add("khachuong@vtvcab.vn");
                mail.From = new MailAddress("quochung4@vtvcab.vn","iCab.vtvcab.vn", System.Text.Encoding.UTF8);
                mail.Subject = "Thư mới được gửi từ website iCab";
                mail.SubjectEncoding = System.Text.Encoding.UTF8;
                var message = string.Format("Bạn vừa nhận được email từ: {0}</br> Số điện thoại {1} </br> Nội dung: {2},", name, phone, content);
                mail.Body = message;
                mail.BodyEncoding = System.Text.Encoding.UTF8;
                mail.IsBodyHtml = true;
                //mail.Priority = MailPriority.High;

                SmtpClient client = new SmtpClient();
                client.Port = Int32.Parse(port);
                client.Host = host;
                client.Timeout = 10000;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential(email,password);

                client.Send(mail);
                context.Response.Write("1");
            }
            catch (Exception ex)
            {
                context.Response.Write(null);
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}