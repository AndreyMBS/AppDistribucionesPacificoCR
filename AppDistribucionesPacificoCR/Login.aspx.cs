using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace AppDistribucionesPacificoCR
{
    public partial class RegistroProducto : System.Web.UI.Page
    {

        private ProyectoEntities entidades;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.entidades = new ProyectoEntities();
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            try
            {
                //se utiliza el método validar perfil
                if (this.validarPerfil(this.txtUsuario.Text.Trim(), this.txtContrasena.Text.Trim()))
                {
                    //se crea la cookie de autenticacion sin recordar la sesión
                    FormsAuthentication.SetAuthCookie(this.txtUsuario.Text.Trim(), false);

                    //se redirreciona el usuario al formulario default
                    
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Response.Write("<script lenguage='JavaScript'>alert('Nombre de usuario o password incorrecto') </script>");
                }
            }
            catch (Exception ex)
            {

            }
        }//Fin de btnIngresar_Click.


        private bool validarPerfil(string nombreUsuario, string pw)
        {
            try
            {
                bool autorizado = false;

                TblUsuario tblUsuario = this.entidades.TblUsuario.FirstOrDefault(u => (u.nombreUsuario.Equals(nombreUsuario) & u.pass.Equals(pw)));

                if (tblUsuario != null)
                {
                    autorizado = true;
                }

                return autorizado;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}