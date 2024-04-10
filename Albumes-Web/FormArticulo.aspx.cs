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
    public partial class FormArticulo : System.Web.UI.Page
    {
        public bool confirmEliminar { get; set; }
        public bool confirmInactivar { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            txtId.Enabled = false;
            confirmEliminar = false;
            confirmInactivar = false;
            

            if (!IsPostBack)
            {
                MarcaNegocio marcaNegocio = new MarcaNegocio();
                List<Marca> listaMarca = marcaNegocio.listar();
                CategoriaNegocio categoriaNegocio = new CategoriaNegocio();
                List<Categoria> listaCategoria = categoriaNegocio.listar();

                btnEliminar.Visible = false;
                btnDesactivar.Visible = false;

                ddlMarca.DataSource = listaMarca;
                ddlMarca.DataTextField = "Descripcion";
                ddlMarca.DataValueField = "Id";
                ddlMarca.DataBind();

                ddlCategoria.DataSource = listaCategoria;
                ddlCategoria.DataTextField = "Descripcion";
                ddlCategoria.DataValueField = "Id";
                ddlCategoria.DataBind();

                imgArticulo.ImageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrQx5Hsv8m1MJOQnxx8jMEy64S2NKlq-Y62g_wVHKIGw&s";
            }

            string id = Request.QueryString["id"] != null ? Request.QueryString["id"] : "";
            if (id != "" && !IsPostBack)
            {

                ArticuloNegocio negocio = new ArticuloNegocio();
                Articulo current = (negocio.listar(id))[0];
                btnEliminar.Visible = true;
                btnDesactivar.Visible = true;

                txtId.Text = current.Id.ToString();
                txtCodigo.Text = current.Codigo;
                txtNombre.Text = current.Nombre;
                txtPrecio.Text = current.Precio.ToString();
                txtDescripcion.Text = current.Descripcion;
                ddlMarca.SelectedValue = current.Marca.Id.ToString();
                ddlCategoria.SelectedValue = current.Categoria.Id.ToString();
                txtUrlImg.Text = current.Urlimg;
                if (current.Codigo == "")
                {
                    txtCodigo.Text = "RESTAURADO";                    
                    btnDesactivar.Visible = false;
                }

                txtUrlImg_TextChanged(sender, e);
            }
        }

        protected void txtUrlImg_TextChanged(object sender, EventArgs e)
        {
            imgArticulo.ImageUrl = txtUrlImg.Text;
        }
        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                ArticuloNegocio negocio = new ArticuloNegocio();
                Articulo nuevo = new Articulo();

                nuevo.Codigo = txtCodigo.Text;
                nuevo.Nombre = txtNombre.Text;
                nuevo.Descripcion = txtDescripcion.Text;
                nuevo.Urlimg = txtUrlImg.Text;
                nuevo.Precio = decimal.Parse(txtPrecio.Text);
                nuevo.Marca = new Marca();
                nuevo.Marca.Id = int.Parse(ddlMarca.SelectedValue);
                nuevo.Categoria = new Categoria();
                nuevo.Categoria.Id = int.Parse(ddlCategoria.SelectedValue);

                if (Request.QueryString["id"] != null)
                {
                    nuevo.Id = int.Parse(txtId.Text);
                    negocio.modificarConSp(nuevo);
                    Response.Redirect("Tabla.aspx", false);
                }
                else
                {
                    negocio.agregarConSp(nuevo);
                    Response.Redirect("Tabla.aspx", false);
                }
            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
                throw;
            }

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            confirmEliminar = true;
        }

        protected void btnConfirmEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                ArticuloNegocio negocio = new ArticuloNegocio();
                if (chkConfirmEliminar.Checked)
                {
                    negocio.EliminarFisicoConSp(int.Parse(txtId.Text));
                    Response.Redirect("Tabla.aspx", false);
                }
            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
            }
        }

        protected void btnDesactivar_Click(object sender, EventArgs e)
        {
            confirmInactivar = true;
        }

        protected void btnConfirmBaja_Click(object sender, EventArgs e)
        {
            try
            {
                ArticuloNegocio negocio = new ArticuloNegocio();
                if (chkConfirmInactivar.Checked)
                {
                    negocio.eliminarLogico(int.Parse(txtId.Text));
                    Response.Redirect("Tabla.aspx", false);
                }
            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
            }
        }
    }
}
