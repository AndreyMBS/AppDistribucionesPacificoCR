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
    public partial class RegistroProducto1 : System.Web.UI.Page
    {
        private Producto producto;
        private ProyectoEntities entidades;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.entidades = new ProyectoEntities();
        }//Fin de Page_Load.

        protected void btnRegistrarProducto_Click(object sender, EventArgs e)
        {
            this.producto = new Producto();

            this.producto.codBarra = this.txtCodigoBarra.Text.Trim();
            this.producto.cedulaLegal = this.DropProveedor.SelectedValue;
            this.producto.unidadMedida = this.DropUnidad.SelectedValue;
            this.producto.foto = this.producto.codBarra + "_" + this.fileUpload.FileName;
            this.producto.estado = "Disponible";
            this.producto.precioVenta = int.Parse(this.txtPrecio.Text);
            this.producto.idClasificacion = int.Parse(this.DropClasificacion.SelectedValue);

            if (this.fileUpload.HasFile)
            {
                this.subirFoto(this.producto.codBarra, this.fileUpload.PostedFile);
            }//Fin de if-FileUpload.

            this.registrarProducto(this.producto);

            Response.Redirect("Default.aspx");

        }//Fin de btnRegistrarProducto_Click.

        private void subirFoto(string pCed, HttpPostedFile archivo)
        {
            try
            {
                string ruta = Server.MapPath(".") + @"\CatalogoProductos\" + pCed + "_" + archivo.FileName;

                this.fileUpload.SaveAs(ruta);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        private void registrarProducto(Producto pro)
        {
            try 
            {
                TblProducto tblProducto = new TblProducto();

                tblProducto.codBarra = pro.codBarra;
                tblProducto.cedulaLegal = pro.cedulaLegal;
                tblProducto.unidadMedida = pro.unidadMedida;
                tblProducto.foto = pro.foto;
                tblProducto.estado = pro.estado;
                tblProducto.precioVenta = (decimal)pro.precioVenta;
                tblProducto.idClasificacion = pro.idClasificacion;

                this.entidades.TblProducto.Add(tblProducto);

                this.entidades.SaveChanges();
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }


    }
}