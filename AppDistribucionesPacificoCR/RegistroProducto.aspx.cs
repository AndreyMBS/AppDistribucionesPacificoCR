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
        double calculoPrecioFinal;

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
            this.producto.nombreProducto = this.txtNombreProducto.Text.Trim();
            this.producto.descripcion = this.txtDescripcion.Text.Trim();
            this.producto.idClasificacion = int.Parse(this.DropClasificacion.SelectedValue);
            string exento = this.producto.exento = this.DropExento.SelectedValue;
            this.producto.ImpuestoIVA = 0;
            double calculoPrecioCompra = this.producto.precioCompra = Double.Parse(this.txtPrecioCompra.Text);
            this.producto.ImpuestoVenta = Double.Parse(this.txtImpuestoVenta.Text);

            if (exento=="No")
            {
                double impuestoIVA = (calculoPrecioCompra * 0.13);
                double impuestoVenta = (calculoPrecioCompra * (this.producto.ImpuestoVenta / 100));
                calculoPrecioFinal = calculoPrecioCompra + (impuestoVenta + impuestoIVA);

                this.producto.ImpuestoIVA = 0.13;
                this.producto.totalImpuestos = impuestoIVA + impuestoVenta;

            }//Fin de condición exento.
            else
            {
                this.producto.ImpuestoIVA = 0.0;
                this.producto.totalImpuestos = 0.0;
            }

            this.producto.precioVenta = calculoPrecioFinal;

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
                tblProducto.nombreProducto = pro.nombreProducto;
                tblProducto.descripcion = pro.descripcion;
                tblProducto.precioVenta = (decimal)pro.precioVenta;
                tblProducto.idClasificacion = pro.idClasificacion;
                tblProducto.exento = pro.exento;
                tblProducto.precioCompra = (decimal)pro.precioCompra;
                tblProducto.totalImpuestos = (decimal)pro.totalImpuestos;
                tblProducto.impuestoVenta = (decimal)pro.ImpuestoVenta;
                tblProducto.impuestoIVA = (decimal)pro.ImpuestoIVA;

                this.entidades.TblProducto.Add(tblProducto);
                this.entidades.SaveChanges();
            }//Fin de try.
            catch(Exception ex)
            {
                throw ex;
            }//Fin de catch.
        }
    }
}