using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Albumes_Web
{
    public partial class MiMaster : System.Web.UI.MasterPage
    {
        public bool userAcvtive = false;     
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (Session["usuario"] != null)
            {
                userAcvtive = true;
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["usuario"] = null;
            Response.Redirect("Default.aspx" ,false);
        }
    }
}