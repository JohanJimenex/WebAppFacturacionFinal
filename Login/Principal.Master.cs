using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Sistema_Facturacion;

namespace WebAppFacturacion.Login
{
    public partial class Principal : System.Web.UI.MasterPage
    {
        // Conexión BD
        SqlConnection SqlCon = new SqlConnection();

        protected void ConsultarImagenes()
        {
            // Llamar imagen de la base de datos
            SqlCon = ConexionDB.getInstancia(); //quitamaos crear conexion por que ya lo tenemos en la clase conexionDB
            SqlCon.Open();

            //En la base de datos está mal escrito dice Emoresa
            SqlCommand cmd = new SqlCommand("SP_ConsultarImagen_Emoresa", SqlCon);
            cmd.CommandType = CommandType.StoredProcedure;

            DataTable ImagenesDB = new DataTable();
            ImagenesDB.Load(cmd.ExecuteReader());

            Repeater1.DataSource = ImagenesDB;
            Repeater1.DataBind();

            SqlCon.Close();
        }

        protected void Page_Load(object sender, EventArgs e) {
            LblIdentificacion.Text = (string)Session["Log_Nombre"] + (" ") + (string)Session["Log_Apellido"];
            ConsultarImagenes();
        }

    }
}