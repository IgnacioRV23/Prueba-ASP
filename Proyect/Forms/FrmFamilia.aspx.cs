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
            getFamily();
        }

        private void getFamily()
        {
            using (var context = new PruebaEntities1())
            {
                var data = context.IN05.ToList();
                gridFamily.DataSource = data;
                gridFamily.DataBind();
            }
        }

        private void limpiarFamilia()
        {
            txtFamiliaId.Text = "";
            txtNombreFamilia.Text = "";
            txtUsuarioIngreso.Text = "";
            txtEstado.Text = "";
        }

        protected void btnAgregarFamilia_Click(object sender, EventArgs e)
        {
            try
            {
                var IDFamilia = txtFamiliaId.Text;
                var nombreFamilia = txtNombreFamilia.Text;
                var usuarioIngreso = txtUsuarioIngreso.Text;
                var estado = txtEstado.Text;

                if (!IDFamilia.Equals("") || !nombreFamilia.Equals("")
                    || !usuarioIngreso.Equals("") || !estado.Equals(""))
                {
                    var IDFamiliaP = int.Parse(IDFamilia);
                    var estadoP = int.Parse(estado);
                    using (var context = new PruebaEntities1())
                    {
                        //context.insertFamily(IDFamiliaP, nombreFamilia, usuarioIngreso, estadoP);
                    }
                    lblFamilia.Text = "Resultado: Producto agregado.";
                    getFamily();
                    limpiarFamilia();
                }
                else
                {
                    lblFamilia.Text = "Resultado: Error, campos vacios";
                }
            }
            catch (Exception)
            {
                lblFamilia.Text = "Resultado: Error de sistema";
            }
        }
    }
}