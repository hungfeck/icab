using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Icab.Handler
{
    /// <summary>
    /// Summary description for CheckAlive
    /// </summary>
    public class CheckAlive : IHttpHandler, System.Web.SessionState.IRequiresSessionState 
    {

        public void ProcessRequest(HttpContext context)
        {
            try
            {
                context.Response.ContentType = "text/plain";
                var session = context.Session["username"].ToString();
                if (session == null)
                {
                    context.Response.Write("0");
                }
                else
                {
                    context.Response.Write("1");
                }
            }

            catch (Exception ex)
            {
                context.Response.Write("0");
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