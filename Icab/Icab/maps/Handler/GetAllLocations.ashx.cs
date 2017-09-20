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

namespace Icab.maps.Handler
{
    /// <summary>
    /// Summary description for GetAllLocations
    /// </summary>
    public class GetAllLocations : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            try
            {
                RequestObject request = new RequestObject();
                JavaScriptSerializer json_serializer = new JavaScriptSerializer();
                request.key = "vtvcab_app";
                request.device_type = "1";
                request.token = "DFcywi1S1EihQw1O3ovyQIMmytp4LKEx";
                request.device_info = "1";
                Data data = new Data();
                request.data = data;
                var routes_list = json_serializer.Serialize(request);
                HttpWebRequest requestApi = WebRequest.Create("http://10.104.31.19:8888/api/IcabWebsite/GetAllLocations") as HttpWebRequest;
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
            catch (Exception ex)
            {

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