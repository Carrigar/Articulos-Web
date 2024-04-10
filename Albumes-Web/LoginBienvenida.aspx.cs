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
    public partial class LoginBienvenida : System.Web.UI.Page
    {
        public bool IsAdmin { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] != null)
            {                
                if (((Usuario)Session["usuario"]).TipoUsuario == TipoUsuario.ADMIN)                
                    IsAdmin = true;                
            }
            else
            {
                Session.Add("error", "Debes iniciar sesion para continuar...");
                Response.Redirect("Error.aspx", false);
            }






        }

        protected void btnUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginUsuario.aspx");
        }

        protected void btnAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginAdmin.aspx");
        }
    }
}