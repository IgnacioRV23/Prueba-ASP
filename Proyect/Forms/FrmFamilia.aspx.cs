using System;
using System.Linq;
using System.Web.UI.WebControls;
using VentaProductos.Proyect.Model;

namespace VentaProductos.Proyect.Forms
{
    public partial class Formulario_web11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getFamilia();
        }

        private void getFamilia()
        {
            using (var context = new PruebaEntities1())
            {
                var data = context.IN05.ToList();
                gridFamilia.DataSource = data;
                gridFamilia.DataBind();
            }
        }

        private void limpiarFamilia()
        {
            txtNombreFamilia.Text = "";
            txtUsuarioIngreso.Text = "";
            listEstado.SelectedIndex = 0;
        }

        protected void btnAgregarFamilia_Click(object sender, EventArgs e)
        {
            try
            {
                var nombreFamilia = txtNombreFamilia.Text;
                var usuarioIngreso = txtUsuarioIngreso.Text;
                var estado = int.Parse(listEstado.SelectedValue.ToString());


                using (var context = new PruebaEntities1())
                {
                    context.insertFamily(nombreFamilia, usuarioIngreso, estado);
                }

                getFamilia();
                limpiarFamilia();
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