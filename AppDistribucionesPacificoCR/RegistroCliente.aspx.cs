using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;

namespace AppDistribucionesPacificoCR
{
    public partial class RegistroCliente : System.Web.UI.Page
    {
        private Usuario usuario;
        private Cliente cliente;
        private ProyectoEntities entidades;
        public String conexion;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.entidades = new ProyectoEntities();
        }

        protected void btnRegistrarProducto_Click(object sender, EventArgs e)
        {
            this.cliente = new Cliente();
            this.usuario = new Usuario();

            this.cliente.cedula = this.txtCedula.Text.Trim();
            this.cliente.nombreCompleto = this.txtNombre.Text.Trim();
            this.cliente.telefono = this.txtTelefono.Text.Trim();
            this.cliente.email = this.txtEmail.Text.Trim();
            this.cliente.direccion = this.txtDireccion.Text.Trim();

            this.usuario.nombreUsuario = this.txtNombreUsuario.Text.Trim();
            this.usuario.pass = this.txtContrasenaUsuario.Text.Trim();

            registrarCliente(cliente, usuario);

            Response.Redirect("Default.aspx");
        }

        private void registrarCliente(Cliente cli, Usuario usu)
        {
            try
            {
                TblClientes tblClientes = new TblClientes();
                TblUsuario tblUsuario = new TblUsuario();

                tblUsuario.nombreUsuario = usu.nombreUsuario;
                tblUsuario.pass = usu.pass;
                tblUsuario.fechaRegistro = DateTime.Now;
                tblUsuario.rol = "C";

                this.entidades.TblUsuario.Add(tblUsuario);
                this.entidades.SaveChanges();
                //----------------------------------------------//
                tblClientes.nombreCompleto = cli.nombreCompleto;
                tblClientes.cedula = cli.cedula;
                tblClientes.telefono = cli.telefono;
                tblClientes.email = cli.email;
                tblClientes.direccion = cli.direccion;
                tblClientes.idUsuario = Consultar();

                this.entidades.TblClientes.Add(tblClientes);
                this.entidades.SaveChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }//Fin de registrarCliente.

        public int Consultar()
        {
            string strconn = "Data Source=DESKTOP-M9C2RDI\\SQLEXPRESS;Initial Catalog=Proyecto;Persist Security Info=True;User ID=userProyecto;Password=ucr2020";
            SqlConnection con = new SqlConnection(strconn);
            con.Open();
            //----------------------------------------------//
            string query = "SELECT MAX(idUsuario) FROM TblUsuario";
            SqlCommand command = new SqlCommand(query, con);
            //----------------------------------------------//
            int ultimoId = Convert.ToInt32(command.ExecuteScalar());
            return ultimoId;
        }
    }
}