using Icab.Entity;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;

namespace Icab.Handler
{
    /// <summary>
    /// Summary description for GetInfoLocations
    /// </summary>
    public class GetInfoLocations : IHttpHandler, System.Web.SessionState.IRequiresSessionState 
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            try {
                if (context.Session["username"] != null)
                {
                    var ciid = context.Request.Form["ciid"].Trim();
                    InfoRequestObject request = new InfoRequestObject();
                    JavaScriptSerializer json_serializer = new JavaScriptSerializer();
                    request.key = "vtvcab_app";
                    request.device_type = "1";
                    request.token = "DFcywi1S1EihQw1O3ovyQIMmytp4LKEx";
                    request.device_info = "1";
                    request.data = new dataInfoLocations();
                    request.data.CIID = ciid;
                    var routes_list = json_serializer.Serialize(request);
                    HttpWebRequest requestApi = WebRequest.Create("http://103.233.48.13:8888/api/IcabWebsite/GetInfoLocations") as HttpWebRequest;
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
                    ResponseLocationsObject res = new ResponseLocationsObject();
                    res = JsonConvert.DeserializeObject<ResponseLocationsObject>(result);
                    string ret = Newtonsoft.Json.JsonConvert.SerializeObject(res.data);
                    context.Response.Write(ret);
                }
                else
                {
                    context.Response.Redirect("~/noaccess.aspx");
                }
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