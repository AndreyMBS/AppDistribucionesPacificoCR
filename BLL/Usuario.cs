using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Usuario
    {
        public int idUsuario { set; get; }

        public DateTime fechaRegistro { set ; get; }

        public String rol { set; get; }

        public String nombreUsuario { set ; get; }

        public String pass { set; get; }
    }
}
