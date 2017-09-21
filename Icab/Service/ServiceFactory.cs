using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Icab.Impl;

namespace Icab.Service
{
    public class ServiceFactory
    {
        private static IManageiCab _CountUsers;
        public static IManageiCab ManageiCab
        {
            get { return _CountUsers ?? (_CountUsers = new ManageiCabImpl()); }
        }
    }
}