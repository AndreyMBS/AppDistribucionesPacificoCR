using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppDistribucionesPacificoCR.cr.fi.bccr.gee;

namespace AppDistribucionesPacificoCR
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        public string strRolObtenido;
        string strUsuarioLogueado;

        private wsindicadoreseconomicos wsindicadoreseconomicos = null;
        private DataSet datos=null;

        
        protected void Page_Load(object sender, EventArgs e)
        {
            this.obtenerTipoCambio();
            //Ponerle try-catch.

            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                this.buttonRegistrarse.Visible = false;

                if (!(Session["userName"] == null))
                {
                    strUsuarioLogueado = Session["userName"].ToString();

                    strRolObtenido = ConsultarSesion(strUsuarioLogueado);

                    if (strRolObtenido == "C")
                    {
                        this.dropDownAnadir.Visible = false;
                    }
                    else if (strRolObtenido == "A")
                    {
                        this.dropDownAnadir.Visible = true;
                        this.dropItemRegistroAdministrador.Visible = false;
                    }
                    else if (strRolObtenido == "AF")
                    {
                        this.dropDownAnadir.Visible = true;
                        this.dropItemRegistroAdministrador.Visible = true;
                    }
                }
                if(Session["userName"] == null)
                {
                        Session.Clear();
                        Session.Abandon();
                        FormsAuthentication.SignOut();
                        Response.Write("<script lenguage='JavaScript'>alert('Está entrando') </script>");
                }
            }
            
        }//Fin de PageLoad.

        public string ConsultarSesion(string strUsuarioLogueado)
        {
            string strconn = "Data Source=DESKTOP-M9C2RDI\\SQLEXPRESS;Initial Catalog=Proyecto;Persist Security Info=True;User ID=userProyecto;Password=ucr2020";
            SqlConnection con = new SqlConnection(strconn);
            con.Open();
            //----------------------------------------------//
            string query = "SELECT rol FROM TblUsuario WHERE nombreUsuario = @strUsuarioLogueado";
            SqlCommand command = new SqlCommand(query, con);
            command.Parameters.AddWithValue("@strUsuarioLogueado", strUsuarioLogueado);
            //----------------------------------------------//
            string rolObtenido = Convert.ToString(command.ExecuteScalar());
            return rolObtenido;
        }//Fin de ConsultarSesion.

        private void obtenerTipoCambio()
        {
            try
            {
                this.wsindicadoreseconomicos = new wsindicadoreseconomicos();

                this.datos = this.wsindicadoreseconomicos.ObtenerIndicadoresEconomicos("318",
                    DateTime.Now.ToString("dd/MM/yyyy"), DateTime.Now.ToString("dd/MM/yyyy"),
                    "Andrey Mena Brenes", "N", "andrey.menabr@hotmail.com", "RI2TLTCTRB");

                Session["TipoCambio"] = Decimal.Parse(this.datos.Tables[0].Rows[0][2].ToString());

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }//Fin de método para obtenerTipoCambio.



    }
}