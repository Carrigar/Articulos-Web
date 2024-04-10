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
    public partial class FormsEx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            MarcaNegocio marcaNegocio = new MarcaNegocio();

            if (!IsPostBack)
            {
                List<Articulo> listaArticulos = negocio.listarConSP();
                Session["listaArticulos"] = listaArticulos;

                ddlArticulo.DataSource = listaArticulos;
                ddlArticulo.DataBind();

                ddlMarca.DataSource = marcaNegocio.listar();
                ddlMarca.DataTextField = "Descripcion";
                ddlMarca.DataValueField = "Id";
                ddlMarca.DataBind();

            }
        }

        protected void ddlMarca_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(ddlMarca.SelectedValue);
            ddlArticulo.DataSource = ((List<Articulo>)Session["listaArticulos"]).FindAll(x => x.Marca.Id == id);
            ddlArticulo.DataBind();
        }
    }
}