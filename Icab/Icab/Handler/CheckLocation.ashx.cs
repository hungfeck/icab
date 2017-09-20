using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace Icab.Handler
{
    /// <summary>
    /// Summary description for CheckLocation
    /// </summary>
    public class CheckLocation : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            try
            {
                context.Response.ContentType = "text/plain";
                var username = context.Request.Form["username"].Trim();
                var lstUserLocation = ConfigurationManager.AppSettings[""];
            }
            catch (Exception ex)
            {

            }
            

            context.Response.Write("Hello World");
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