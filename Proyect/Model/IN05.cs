//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace VentaProductos.Proyect.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class IN05
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public IN05()
        {
            this.IN04 = new HashSet<IN04>();
        }
    
        public int IDFamilia { get; set; }
        public string NombreFamilia { get; set; }
        public string UsuarioIngreso { get; set; }
        public int Estado { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<IN04> IN04 { get; set; }
    }
}
