using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Icab.Impl;
using System.Security.Cryptography;
using Icab.Entity;

namespace Icab.Service
{
    public interface IManageiCab
    {
        string count_user();
        string HttpWebRequestCallApi(string apiPath, string sdata, string method = "GET", bool isSentJson = false);
        bool CheckAuthen(string username, string password);
        string GetMd5Hash(MD5 md5Hash, string input);
        List<UserGroup> checkAccount(string userName, string userPassword);
    }
}
