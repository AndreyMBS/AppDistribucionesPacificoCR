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
    public partial class RegistroProducto1 : System.Web.UI.Page
    {
        private ProyectoEntities entidades;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.entidades = new ProyectoEntities();

            if (!IsPostBack)
            {
                //IniciarLlenadoDropDown();
            }
        }//Fin de Page_Load.

        private void IniciarLlenadoDropDown()
        {
            DropProveedor.DataSource = Consultar("SELECT nombre FROM tblProveedor");
            DropProveedor.DataTextField = "nombre";
            DropProveedor.DataValueField = "nombre";
            DropProveedor.DataBind();

            DropProveedor.Items.Insert(0, new ListItem("[Seleccione un proveedor]", "0"));
        }//Fin de método IniciarLlenadoDropDown.

        public DataSet Consultar(string strSQL)
        {
            string strconn = "data source=YOSHI\\SQLEXPRESS;initial catalog=Proyecto;persist security info=True;user id=userProyecto;password=ucr2020";
            SqlConection con = new SqlConnection(strconn);
            con.Open();
            SqlCommand cmd = new SqlCommand(strSQL, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }//Fin de método

    }//Fin de RegistroProducto1 partial class.
}//Fin de namespace.