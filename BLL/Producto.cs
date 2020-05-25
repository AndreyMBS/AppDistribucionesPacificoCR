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

        public string unidadMedida { set; get; }

        public string foto { set; get; }

        public string estado { set; get; }

        public double precioVenta { set; get; }

        public int idClasificacion { set; get; }

    }
}
