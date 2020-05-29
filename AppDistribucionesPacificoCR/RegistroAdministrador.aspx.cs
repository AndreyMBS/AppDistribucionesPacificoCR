using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;

namespace AppDistribucionesPacificoCR
{
    public partial class RegistroAdministrador : System.Web.UI.Page
    {
        private Usuario usuario;
        private ProyectoEntities entidades;
        public MasterPage masterPage;

        string strRolObtenido;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.entidades = new ProyectoEntities();
            this.masterPage = new MasterPage();

            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                string strUsuarioLogueado = Session["userName"].ToString();
   
                strRolObtenido = masterPage.ConsultarSesion(strUsuarioLogueado);

                if(strRolObtenido == "C" || strRolObtenido == "A")
                {
                    Response.Write("<script language='javascript'>window.alert('Este usuario no cuenta con permisos de administración raíz.');window.location='Default.aspx';</script>");
                }//Fin de if para comprobar sesión. 
            }
            else
            {
                Response.Write("<script language='javascript'>window.alert('Usted no se encuentra logueado.');window.location='Default.aspx';</script>");
            }
        }

        protected void btnRegistrarAdministrador_Click(object sender, EventArgs e)
        {
            this.usuario = new Usuario();

            this.usuario.nombreUsuario = this.txtNombreUsuario.Text.Trim();
            this.usuario.pass = this.txtContrasenaUsuario.Text.Trim();

            registrarAdministrador(usuario);

            Response.Redirect("Default.aspx");
        }//Fin de accion del btn.

        private void registrarAdministrador(Usuario usu)
        {
            try
            {
                TblUsuario tblUsuario = new TblUsuario();

                tblUsuario.nombreUsuario = usu.nombreUsuario;
                tblUsuario.pass = usu.pass;
                tblUsuario.fechaRegistro = DateTime.Now;
                tblUsuario.rol = "A";

                this.entidades.TblUsuario.Add(tblUsuario);
                this.entidades.SaveChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }//Fin de registrarCliente.

        //public string ConsultarSesion(string strUsuarioLogueado)
        //{
            
        //    string strconn = "Data Source=DESKTOP-M9C2RDI\\SQLEXPRESS;Initial Catalog=Proyecto;Persist Security Info=True;User ID=userProyecto;Password=ucr2020";
        //    SqlConnection con = new SqlConnection(strconn);
        //    con.Open();
        //    //----------------------------------------------//
        //    string query = "SELECT rol FROM TblUsuario WHERE nombreUsuario = @strUsuarioLogueado";
        //    SqlCommand command = new SqlCommand(query, con);
        //    command.Parameters.AddWithValue("@strUsuarioLogueado", strUsuarioLogueado);
        //    //----------------------------------------------//
        //    string rolObtenido = Convert.ToString(command.ExecuteScalar());
        //    return rolObtenido;
        //}


    }//Fin de partial class.
}