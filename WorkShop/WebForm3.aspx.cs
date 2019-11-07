using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WorkShop
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCargar_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(Properties.Settings.Default.conexion);
            SqlCommand com = new SqlCommand("pa_cat", con);
            com.CommandType = CommandType.StoredProcedure;
            DataSet ds = new DataSet();
            SqlDataAdapter adap = new SqlDataAdapter(com);
            adap.Fill(ds, "Categoria");
            ddlDatos.DataSource = ds;
            ddlDatos.DataValueField = "CodCat";
            ddlDatos.DataTextField = "NomCat";
            ddlDatos.DataBind();
            con.Close();

            SqlConnection conex = new SqlConnection(Properties.Settings.Default.conexion);
            SqlCommand coman = new SqlCommand("pa_produ", conex);
            coman.CommandType = CommandType.StoredProcedure;
            DataSet data = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter(coman);
            adapter.Fill(data, "Producto");
            dgDatos.DataSource = data;
            dgDatos.DataBind();
            conex.Close();
        }
    }
}