using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Producto
    {
        public string codBarra { set; get; }

        public string cedulaLegal { set; get; }

        public double descuento { set; get; }

        public string descripcion { set; get; }

        public string unidadMedida { set; get; }

        public string nombreProducto { set; get; }

        public string foto { set; get; }

        public string estado { set; get; }

        public double ImpuestoVenta { set; get; }

        public string exento { set; get; }

        public double precioCompra { set; get; }

        public double precioVenta { set; get; }

        public int idClasificacion { set; get; }

        public double totalImpuestos { set; get; }

        public double ImpuestoIVA { set; get; }

    }
}
