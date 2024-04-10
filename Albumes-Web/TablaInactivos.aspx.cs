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
    public partial class TablaInactivos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            List<Articulo> listaInactivos = negocio.listarInactivos();
            dgvIactivos.DataSource = listaInactivos;
            dgvIactivos.DataBind();
        }

        protected void dgvIactivos_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = dgvIactivos.SelectedDataKey.Value.ToString();
            Response.Redirect("FormArticulo.aspx?id=" + id, false);
        }
    }
}