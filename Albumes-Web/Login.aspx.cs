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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Usuario usuario;
            UsuarioNegocio negocio = new UsuarioNegocio();
            try
            {
                usuario = new Usuario(txtUser.Text, txtPassword.Text, true);
                if (negocio.Loguear(usuario) == true)
                {
                    Session.Add("usuario", usuario);
                    Response.Redirect("LoginBienvenida.aspx", false);
                }
                else
                {
                    Session.Add("error", "Usuario o contraseña incorrectos... ");
                    Response.Redirect("Error.aspx", false);
                }
            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
                Response.Redirect("Error.aspx");
            }



        }
    }
}