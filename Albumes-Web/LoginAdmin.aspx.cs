using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;

namespace Albumes_Web
{
    public partial class LoginAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!((Usuario)Session["usuario"] != null && ((Usuario)Session["usuario"]).TipoUsuario == TipoUsuario.ADMIN))  
            {
                Session.Add("error", "Solo los administradores tienen permiso para ingresar a esta página.");
                Response.Redirect("Error.aspx", false);
            }
        }
    }
}