using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;

namespace AppDistribucionesPacificoCR
{
    public partial class RegistroProveedor : System.Web.UI.Page
    {
        private Proveedor proveedor;

        private ProyectoEntities entidades;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.entidades = new ProyectoEntities();
        }

        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            this.proveedor = new Proveedor();

            try
            {
                this.proveedor.cedulaLegal = this.txtCedula.Text.Trim();
                this.proveedor.nombreCompleto = this.txtNombreCompleto.Text.Trim();
                this.proveedor.email = this.txtEmail.Text.Trim();
                this.proveedor.telefono = this.txtTelefono.Text.Trim();
                this.proveedor.direccionExacta = this.txtDireccion.Text.Trim();

                this.registrarProveedor(this.proveedor);

                Response.Redirect("Default.aspx");

            }
            catch (Exception ex)
            {
                throw ex;
            }
        } 

        private void registrarProveedor(Proveedor pro)
        {
            try
            {
                TblProveedor tblProveedor = new TblProveedor();

                tblProveedor.cedulaLegal = pro.cedulaLegal;
                tblProveedor.nombreCompleto = pro.nombreCompleto;
                tblProveedor.telefono = pro.telefono;
                tblProveedor.email = pro.email;
                tblProveedor.direccionExacta = pro.direccionExacta;

                this.entidades.TblProveedor.Add(tblProveedor);

                this.entidades.SaveChanges();

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }//Cierre de método registrarProveedor.


    }
}