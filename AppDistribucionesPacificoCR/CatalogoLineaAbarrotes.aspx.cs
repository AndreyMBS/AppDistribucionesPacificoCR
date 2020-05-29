using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;

namespace AppDistribucionesPacificoCR
{
    public partial class CatalogoLineaAbarrotes : System.Web.UI.Page
    {
        private ProyectoEntities entidades;
        public MasterPage masterPage;

        string strRolObtenido;
        protected void Page_Load(object sender, EventArgs a, DataListItemEventArgs e)
        {
            this.entidades = new ProyectoEntities();
            this.masterPage = new MasterPage();

            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string strUsuarioLogueado = Session["userName"].ToString();

                strRolObtenido = masterPage.ConsultarSesion(strUsuarioLogueado);
            }
        }

        protected void btnAgregarCarrito_Click(object sender, EventArgs e)
        {
            if (!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Response.Write("<script language='javascript'>window.alert('Para agregar un elemento al carrito debe estar logueado o registrado.');window.location='Login.aspx';</script>");
            }
        }//Fin de btnAgregarCarrito_Click.

        protected void lista_ItemCommand(object source, DataListCommandEventArgs e)
        {

        }
    }
}