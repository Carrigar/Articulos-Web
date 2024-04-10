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
    public partial class FormEnlazado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CategoriaNegocio negocio = new CategoriaNegocio();

            if (!IsPostBack)
            {
                List<Categoria> listaCategoria = negocio.listar();

                ddlSelectCategoria.DataSource = listaCategoria;
                ddlSelectCategoria.DataTextField = "Descripcion";
                ddlSelectCategoria.DataValueField = "Id";
                ddlSelectCategoria.DataBind();
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            string id = txtIndex.Text;
            ddlSelectCategoria.SelectedIndex = ddlSelectCategoria.Items.IndexOf(ddlSelectCategoria.Items.FindByValue(id));
        }
    }
}