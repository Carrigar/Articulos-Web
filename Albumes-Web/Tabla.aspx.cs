using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;

namespace Albumes_Web
{
    public partial class Tabla : System.Web.UI.Page
    {
        public bool FiltroAvanzado { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            FiltroAvanzado = chkFiltroAvanzado.Checked;

            if (!IsPostBack)
            {
                ArticuloNegocio negocio = new ArticuloNegocio();
                List<Articulo> listaArt = negocio.listarConSP();
                Session["listaArt"] = listaArt;
                dgvArticulos.DataSource = Session["listaArt"];
                dgvArticulos.DataBind();

                ddlCriterio.Items.Add("Mayor a");
                ddlCriterio.Items.Add("Menor a");
                ddlCriterio.Items.Add("Igual a");
            }
        }

        protected void dgvArticulos_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = dgvArticulos.SelectedDataKey.Value.ToString();
            Response.Redirect("FormArticulo.aspx?id=" + id);
        }

        protected void txtFiltro_TextChanged(object sender, EventArgs e)
        {
            //string lista = Session["listaArt"].ToString();
            string filtro = txtFiltro.Text;
            List<Articulo> listaFiltro = ((List<Articulo>)Session["listaArt"]).FindAll(x => x.Nombre.ToUpper().Contains(filtro.ToUpper()));
            dgvArticulos.DataSource = listaFiltro;
            dgvArticulos.DataBind();
        }

        protected void chkFiltroAvanzado_CheckedChanged(object sender, EventArgs e)
        {
            txtFiltro.Enabled = !chkFiltroAvanzado.Checked;
        }

        protected void btnFiltro_Click(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();

            
            string campo = ddlCampo.SelectedItem.ToString();
            string criterio = ddlCriterio.SelectedItem.ToString();
            string filtro = txtFiltroAvanzado.Text;            
            dgvArticulos.DataSource = negocio.filtrar(campo, criterio, filtro);
            dgvArticulos.DataBind();


        }

        protected void ddlCampo_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlCriterio.Items.Clear();
            if (ddlCampo.Text == "Precio")
            {
                ddlCriterio.Items.Add("Mayor a");
                ddlCriterio.Items.Add("Menor a");
                ddlCriterio.Items.Add("Igual a");
            } else
            {
                ddlCriterio.Items.Add("Comienza con");
                ddlCriterio.Items.Add("Termina con");
                ddlCriterio.Items.Add("Contiene");
            }

        }
    }
}