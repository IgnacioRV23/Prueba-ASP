using System;
using System.Linq;
using System.Web.UI.WebControls;
using VentaProductos.Proyect.Model;

namespace VentaProductos.Proyect.Forms
{
    public partial class Formulario_web1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getProducts();
        }

        private void getProducts()
        {
            using (var context = new PruebaEntities1())
            {
                var data = context.IN04.ToList();
                gridProductos.DataSource = data;
                gridProductos.DataBind();
            }
        }

        private void limpiarProductos()
        {
            txtDescripcion.Text = "";
            txtPrecio.Text = "";
            txtSaldo.Text = "";
            txtFecha.Text = "";
            txtUsuario.Text = "";
            txtFamilia.Text = "";
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                var descripcion = txtDescripcion.Text;
                var precio = float.Parse(txtPrecio.Text);
                var saldo = int.Parse(txtSaldo.Text);
                var fecha = DateTime.Parse(txtFecha.Text);
                var usuario = txtUsuario.Text;
                var familia = int.Parse(txtFamilia.Text);

                using (var context = new PruebaEntities1())
                {
                    context.insertProducts(descripcion, precio, saldo, fecha, usuario, familia);
                }

                getProducts();
                limpiarProductos();
                lblError.Visible = false;
                lblExito.Visible = true;
            }
            catch (Exception)
            {
                lblError.Visible = true;
                lblExito.Visible = false;
            }
        }
    }
}