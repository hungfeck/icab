using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Icab.Entity
{
    public class User
    {

        public string username { get; set; }
        public string password { get; set; }
        public class RootObject
        {
            public Status status { get; set; }
            //public Data data { get; set; }
        }

    }
}