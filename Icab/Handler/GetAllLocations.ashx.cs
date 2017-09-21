using Icab.Entity;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Threading.Tasks;

namespace Icab.Handler
{
    /// <summary>
    /// Summary description for GetAllLocations
    /// </summary>
    public class GetAllLocations : IHttpHandler, System.Web.SessionState.IRequiresSessionState 
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            try {
                if (context.Session["username"] != null)
                {
                    HttpClient client = new HttpClient();
                    client.BaseAddress = new Uri("http://103.233.48.13:8888");
                    //client.BaseAddress = new Uri("http://localhost:40503/");
                    client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                    HttpResponseMessage response = client.GetAsync("api/IcabWebsite/GetAllLocations").Result;
                    if (response.IsSuccessStatusCode)
                    {
                        var users = response.Content.ReadAsStringAsync();
                        JavaScriptSerializer json_serializer = new JavaScriptSerializer();
                        json_serializer.MaxJsonLength = Int32.MaxValue;
                        object routes_list = json_serializer.DeserializeObject(users.Result);
                        ResponseLocationsObject resp = json_serializer.Deserialize<ResponseLocationsObject>(users.Result);
                        string ret = Newtonsoft.Json.JsonConvert.SerializeObject(resp.data);
                        context.Response.Write(ret);
                    }
                    else
                    {
                        context.Response.Write("null");
                    }
                }
                else{
                    context.Response.Redirect("~/noaccess.aspx");
                }
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