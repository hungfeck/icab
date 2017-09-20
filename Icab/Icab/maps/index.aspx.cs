using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Icab.Entity;
using Newtonsoft.Json;
using System.Web.Script.Serialization;
using System.Configuration;

namespace Icab.maps
{
    public partial class index : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/noaccess.aspx");
            }
            else
            {
                var username = Session["username"].ToString();
                var strUserLocation = ConfigurationManager.AppSettings["CheckUserLocation"].ToString();
                if (!strUserLocation.Contains(username))
                {
                    Response.Redirect("~/noaccess.aspx");
                }
            }
            
        }
    }
}