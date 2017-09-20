using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Icab.Entity
{
    public class ResponseObject
    {
            public string code { get; set; }
            public string message { get; set; }
            public string data { get; set; }
    }
    public class Data
    {
        public string username { get; set; }
        public string password { get; set; }
        public string organisation { get; set; }
        public string unit { get; set; }
    }
    public class Status
    {
        public string message { get; set; }
        public string description { get; set; }
        public string code { get; set; }
    }
    public class Data1
    {
        public string token { get; set; }
    }
    public class RootObject
    {
        public Status status { get; set; }
        public Data1 data { get; set; }
    }
    public class UserGroup
    {
        public string userID { get; set; }
        public string userName { get; set; }
        public string userPassWord { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string dob { get; set; }
        public string isSuperUser { get; set; }
        public string email { get; set; }
        public string phone { get; set; }
        public string mobile { get; set; }
        public string displayName { get; set; }
        public string icon { get; set; }
        public string descriptions { get; set; }
        public string userDeleted { get; set; }
        public string createBy { get; set; }
        public string createDate { get; set; }
        public string userBranchName { get; set; }
        public string userBranchID { get; set; }
        public string updateBy { get; set; }
        public string updateDate { get; set; }
        public string appID { get; set; }
        public string appName { get; set; }
        public string userRoleID { get; set; }
        public string groupID { get; set; }
        public string groupName { get; set; }
        public string groupDeleted { get; set; }
        public string expiryDate { get; set; }
        public string effectiveDate { get; set; }
        public string userRoleDeleted { get; set; }
        public string userSaleCode { get; set; }
        public string saleTeamName { get; set; }

    }
    public class RequestObject
    {
        public string key { get; set; }
        public string device_info { get; set; }
        public string device_type { get; set; }
        public string token { get; set; }
        public Data data { get; set; }
    }
    public class dataInfoLocations
    {
        public string CIID;
    }
    public class InfoRequestObject
    {
        public string key { get; set; }
        public string device_info { get; set; }
        public string device_type { get; set; }
        public string token { get; set; }
        public dataInfoLocations data { get; set; }
    }
    public class ResponseLocationsObject
    {
        public string code { get; set; }
        public string message { get; set; }
        public List<Locations> data { get; set; }
    }
    public class Locations
    {
        public string CIFULLNAME { get; set; }
        public string LATITUDE { get; set; }
        public string LONGTIUDE { get; set; }
        public string LOFULLADDRESS { get; set; }
        public string CIID { get; set; }
        public string PHONENUMBER { get; set; }

    }
}