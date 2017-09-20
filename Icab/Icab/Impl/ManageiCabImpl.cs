using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Icab.Service;
using System.Configuration;
using Oracle.DataAccess.Client;
using System.Data;
using System.Web.Script.Serialization;
using System.Net;
using System.Text;
using System.IO;
using Icab.Entity;
using System.Security.Cryptography;

namespace Icab.Impl
{
    public class ManageiCabImpl:IManageiCab
    {
        public string OraconnectString = ConfigurationSettings.AppSettings["CRM_CONNECTIONSTRING"].ToString();
        public string count_user()
        {
            OracleConnection Oraconn = new OracleConnection(OraconnectString);
            try
            {
                Oraconn.Open();
            }
            catch { }
            try
            {
                OracleCommand cmd = new OracleCommand();
                cmd.Connection = Oraconn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "VTVCABAPP.VTVCABAPP_COUNT_USERS";
                cmd.Parameters.Add("CURSOR_", OracleDbType.RefCursor, ParameterDirection.Output);
                OracleDataAdapter da = new OracleDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    Oraconn.Close();
                    return null;
                }
                string ret = ds.Tables[0].Rows[0][0].ToString();
                Oraconn.Close();
                return ret;
            }
            catch (Exception ex) { }
            Oraconn.Close();
            return null;
        }
        public bool CheckAuthen(string username, string password)
        {
            var urlApi = ConfigurationManager.AppSettings["CRM.APIV4R8.URL.PostToken"].ToString();
            var tokenrequest = new Data();
            tokenrequest.username = username;
            tokenrequest.unit = ConfigurationManager.AppSettings["CRM.APIV4R8.Unit"].ToString();
            tokenrequest.password = password;
            tokenrequest.organisation = ConfigurationManager.AppSettings["CRM.APIV4R8.Organisation"].ToString();
            var serializer = new JavaScriptSerializer();
            var data = serializer.Serialize(tokenrequest);
            var objToken = ServiceFactory.ManageiCab.HttpWebRequestCallApi(urlApi, data, "POST", true);
            var retval = serializer.Deserialize<RootObject>(objToken);
            if (retval.status.code.ToUpper().Equals("OK"))
            {
                return true;
            }
            return false;
        }
        public string HttpWebRequestCallApi(string apiPath, string sdata, string method = "GET", bool isSentJson = false)
        {
            var fullPathGet = "";
            if ((apiPath.Contains("/crmapi/rest/v2/") || apiPath.Contains("/VTVCabAPI/rest/v2/")) && method.Equals("GET"))
            {
                fullPathGet = sdata;
            }
            else
            {
                fullPathGet = apiPath + sdata;
            }

            if (isSentJson)
            {
                var httpWReq = (HttpWebRequest)WebRequest.Create(apiPath);
                var data = UTF8Encoding.UTF8.GetBytes(sdata);
                httpWReq.Method = method.ToUpper().Equals("POST") ? "POST" : "GET";
                httpWReq.ContentType = "application/json";
                httpWReq.ContentLength = data.Length;

                using (var stream = httpWReq.GetRequestStream())
                {
                    stream.Write(data, 0, data.Length);
                }
                var response = (HttpWebResponse)httpWReq.GetResponse();
                var encoding = Encoding.GetEncoding("utf-8");
                var responseString = new StreamReader(response.GetResponseStream(), encoding).ReadToEnd();
                //Logger.InfoStep(responseString, "", true);
                response.Close();
                return responseString;
            }

            if (isSentJson || !method.ToUpper().Equals("GET")) return ""; // Logic ???
            var _httpWReq = (HttpWebRequest)WebRequest.Create(fullPathGet);
            _httpWReq.Method = method.ToUpper().Equals("POST") ? "POST" : "GET";
            _httpWReq.ContentType = "application/json";
            var _response = (HttpWebResponse)_httpWReq.GetResponse();
            var _encoding = Encoding.GetEncoding("utf-8");
            var _ojbResult = new StreamReader(_response.GetResponseStream(), _encoding).ReadToEnd();
            _response.Close();
            return _ojbResult;
        }
        public string GetMd5Hash(MD5 md5Hash, string input)
        {

            // Convert the input string to a byte array and compute the hash.
            byte[] data = md5Hash.ComputeHash(Encoding.UTF8.GetBytes(input));

            // Create a new Stringbuilder to collect the bytes
            // and create a string.
            StringBuilder sBuilder = new StringBuilder();

            // Loop through each byte of the hashed data 
            // and format each one as a hexadecimal string.
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }

            // Return the hexadecimal string.
            return sBuilder.ToString();
        }
        public List<UserGroup> checkAccount(string userName, string userPassword)
        {
            List<UserGroup> lst_user = new List<UserGroup>();
            OracleConnection Oraconn = new OracleConnection(OraconnectString);
            try
            {
                Oraconn.Open();
            }
            catch { }
            DataSet ds = new DataSet();
            try
            {
                OracleCommand cmd = new OracleCommand();
                cmd.Connection = Oraconn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "VTVCABAPP.VTVCABAPP_CHECK_ACCOUNT";
                cmd.Parameters.Add("sUSERNAME", OracleDbType.NVarchar2).Value = userName;
                cmd.Parameters.Add("sPASS", OracleDbType.NVarchar2).Value = userPassword;
                //cmd.Parameters.Add("sAPPID", OracleDbType.NVarchar2).Value = "4C020C0BE63E7405E0531415680A8066";
                cmd.Parameters.Add("CURSOR_", OracleDbType.RefCursor, ParameterDirection.Output);
                OracleDataAdapter da = new OracleDataAdapter();
                da.SelectCommand = cmd;
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        UserGroup user = new UserGroup();
                        user.userID = dr["USERID"].ToString();
                        user.userBranchName = dr["USERFIELD1"].ToString();
                        user.userBranchID = dr["USERFIELD2"].ToString();
                        lst_user.Add(user);
                    }
                }
                Oraconn.Close();
                return lst_user;
            }
            catch { }
            Oraconn.Close();
            return lst_user;
        }
    }
}