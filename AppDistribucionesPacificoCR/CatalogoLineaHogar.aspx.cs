using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppDistribucionesPacificoCR
{
    public partial class CatalogoLineaHogar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregarCarrito_Click(object sender, EventArgs e)
        {
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Response.Write("<script language='javascript'>window.alert('Para agregar un elemento al carrito debe estar logueado o registrado.');window.location='Login.aspx';</script>");
            }
        }
    }
}