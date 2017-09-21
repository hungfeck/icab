using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace Icab.Handler
{
    /// <summary>
    /// Summary description for Download
    /// </summary>
    public class Download : IHttpHandler, System.Web.SessionState.IRequiresSessionState 
    {

        public void ProcessRequest(HttpContext context)
        {
            try 
            {
                if(context.Session["username"] != null)
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
                    context.Response.AppendHeader("content-disposition", "attachment; filename=" + name);
                    if (type != "")
                        context.Response.ContentType = type;
                    context.Response.WriteFile(path);
                    context.Response.End();
                }
                else
                {
                    context.Response.Redirect("~/noaccess.aspx");
                }
            }
            catch (Exception ex)
            {
                
            }
            context.Response.Write("1");
            
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
        public void download()
        {
            
        }
    }
}