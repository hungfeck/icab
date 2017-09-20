using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Icab.Service;
using Icab.Entity;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web.Script.Serialization;

namespace Icab.Handler
{
    /// <summary>
    /// Summary description for CountUsers
    /// </summary>
    public class CountUsers : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            try {
                //var count_user = ServiceFactory.ManageiCab.count_user();
                HttpClient client = new HttpClient();
                client.BaseAddress = new Uri("http://103.233.48.13:8888");
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                HttpResponseMessage response = client.GetAsync("api/IcabWebsite/GetAllUsers").Result;
                if (response.IsSuccessStatusCode)
                {
                    var users = response.Content.ReadAsStringAsync();
                    JavaScriptSerializer json_serializer = new JavaScriptSerializer();
                    object routes_list = json_serializer.DeserializeObject(users.Result);
                    ResponseObject resp = json_serializer.Deserialize<ResponseObject>(users.Result);
                    if (resp.code == "1")
                    {
                        context.Response.Write(resp.data);
                    }
                    else
                    {
                        context.Response.Write("-1");
                    }
                }
                else
                {
                    context.Response.Write("-1");
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