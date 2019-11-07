using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.IO;
using System.Net;
using System.Data;
using System.Data.SqlClient;

namespace WorkShop
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarCategoria();
                obtener();
            }
           
        }

        public void cargarCategoria()
        {
            SqlConnection con = new SqlConnection(Properties.Settings.Default.conexion);
            SqlCommand com = new SqlCommand("pa_cat", con);
            com.CommandType = CommandType.StoredProcedure;
            DataSet ds = new DataSet();
            SqlDataAdapter adap = new SqlDataAdapter(com);
            adap.Fill(ds, "Categoria");
            ddlCategoria.DataSource = ds;
            ddlCategoria.DataValueField = "CodCat";
            ddlCategoria.DataTextField = "NomCat";
            ddlCategoria.DataBind();
        }

        public DataSet cargarProducto(int id)
        {
            SqlConnection conex = new SqlConnection(Properties.Settings.Default.conexion);
            SqlCommand coman = new SqlCommand("pa_seleccionar", conex);
            coman.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adapter = new SqlDataAdapter(coman);
            SqlParameter param = new SqlParameter("@id", SqlDbType.Int);
            param.Value = id;
            coman.Parameters.Add(param);
            DataSet data = new DataSet();
            adapter.Fill(data, "Producto");
            return data;
        }

        public void obtener()
        {
            this.dgProducto.DataSource = cargarProducto(Convert.ToInt32(ddlCategoria.SelectedValue)).Tables[0].DefaultView;
            dgProducto.EmptyDataText = "NomProd";
            dgProducto.DataBind();
        }
    }
}