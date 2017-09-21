using Icab.Entity;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Icab
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = "";
            #region download
            //FormsAuthentication.RedirectFromLoginPage("quochung4", true);
            //Response.Redirect("/Tailieu/Tai_lieu_icab.zip"); 

            //string path = ("~/TaiLieu/Tai_lieu_iCab.zip");
            //string name = Path.GetFileName(path);
            //string ext = Path.GetExtension(path);
            //string type = "";
            //if (ext != null)
            //{
            //    switch (ext.ToLower())
            //    {
            //        case ".zip":
            //            type = "application/zip";
            //            break;
            //        case ".htm":
            //        case ".html":
            //            type = "text/HTML";
            //            break;

            //        case ".txt":
            //            type = "text/plain";
            //            break;

            //        case ".GIF":
            //            type = "image/GIF";
            //            break;

            //        case ".pdf":
            //            type = "Application/pdf";
            //            break;

            //        case ".doc":
            //        case ".rtf":
            //            type = "Application/msword";
            //            break;
            //    }
            //}

            //Response.AppendHeader("content-disposition", "attachment; filename=" + name);

            //if (type != "")
            //    Response.ContentType = type;
            //Response.WriteFile(path);
            //Response.End(); 
            
            #endregion
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }

        protected void btn_Sendemail_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                lblMessage.Text = "";
                var username = txtUsername.Text.Trim();
                var password = txtPassword.Text.Trim();
                RequestObject request = new RequestObject();
                JavaScriptSerializer json_serializer = new JavaScriptSerializer();
                request.key = "vtvcab_app";
                request.device_type = "1";
                request.token = "DFcywi1S1EihQw1O3ovyQIMmytp4LKEx";
                request.device_info = "1";
                Data data = new Data();
                data.username = username;
                data.password = password;
                request.data = data;
                var a = "";
                var routes_list = json_serializer.Serialize(request);
                HttpWebRequest requestApi = WebRequest.Create("http://103.233.48.13:8888/api/IcabWebsite/Login") as HttpWebRequest;
                requestApi.Method = "POST";
                requestApi.ContentType = "application/json";
                byte[] byteData = UTF8Encoding.UTF8.GetBytes(routes_list);
                requestApi.ContentLength = byteData.Length;

                using (Stream postStream = requestApi.GetRequestStream())
                {
                    postStream.Write(byteData, 0, byteData.Length);
                }

                WebResponse response = null;
                response = requestApi.GetResponse();
                Stream stream = response.GetResponseStream();
                Encoding encoding = System.Text.Encoding.GetEncoding("utf-8");
                StreamReader streamReader = new StreamReader(stream, encoding);
                string result = streamReader.ReadToEnd();
                ResponseObject res = new ResponseObject();
                res = JsonConvert.DeserializeObject<ResponseObject>(result);
                string ret = Newtonsoft.Json.JsonConvert.SerializeObject(res.data);
                if (!String.IsNullOrEmpty(res.data) && ret != "-1")
                {
                    Session["username"] = txtUsername.Text;
                    var url = txtUrl.Text;
                    Response.Redirect(url);
                }
                else
                {
                    lblMessage.Text = "Thất bại";
                }
            }
            else
            {
                //download();
            }
        }

        protected void btnDownload1_Click(object sender, EventArgs e)
        {

        }
        public void download()
        {
            string path = ("~/TaiLieu/Tai_lieu_iCab.zip");
            string name = Path.GetFileName(path);
            string ext = Path.GetExtension(path);
            string type = "";
            if (ext != null)
            {
                switch (ext.ToLower())
                {
                    case ".zip":
                        type = "application/zip";
                        break;
                    case ".htm":
                    case ".html":
                        type = "text/HTML";
                        break;

                    case ".txt":
                        type = "text/plain";
                        break;

                    case ".GIF":
                        type = "image/GIF";
                        break;

                    case ".pdf":
                        type = "Application/pdf";
                        break;

                    case ".doc":
                    case ".rtf":
                        type = "Application/msword";
                        break;
                }
            }
            Response.AppendHeader("content-disposition", "attachment; filename=" + name);
            if (type != "")
                Response.ContentType = type;
            Response.WriteFile(path);
            Response.End();
        }
    }
}