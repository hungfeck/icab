﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Icab.Service;
using System.Security.Cryptography;
using Icab.Entity;
using System.Web.Script.Serialization;
using System.Net.Http;
using System.Net.Http.Headers;
using Icab.Service;
using System.Net;
using System.Text;
using System.IO;
using Newtonsoft.Json;

namespace Icab.Handler
{
    /// <summary>
    /// Summary description for Login
    /// </summary>
    public class Login : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            try 
            {
                context.Response.ContentType = "text/plain";
                var username = context.Request.Form["username"].Trim();
                var password = context.Request.Form["password"].Trim();
                RequestObject request = new RequestObject();
                JavaScriptSerializer json_serializer = new JavaScriptSerializer();
                request.key="vtvcab_app";
                request.device_type="1";
                request.token="DFcywi1S1EihQw1O3ovyQIMmytp4LKEx";
                request.device_info="1";
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
                context.Response.Write(ret);

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