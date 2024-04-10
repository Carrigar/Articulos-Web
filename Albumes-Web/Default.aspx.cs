using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace Albumes_Web
{
    public partial class Default : System.Web.UI.Page
    {
        public bool UserAcive = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] != null)
            {
                UserAcive = true;
            }
        }
    }
}