using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace Icab.Handler
{
    /// <summary>
    /// Summary description for CheckUserLocation
    /// </summary>
    public class CheckUserLocation : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            try
            {
                context.Response.ContentType = "text/plain";
                var username = context.Request.Form["username"].Trim();
                var strUserLocation = ConfigurationManager.AppSettings[""].ToString();
                var lstUserLocation = strUserLocation.Split(',');
                if (strUserLocation.Contains(username))
                {

                }
                
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