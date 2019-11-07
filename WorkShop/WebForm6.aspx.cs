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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLeerCategoria_Click(object sender, EventArgs e)
        {
            string datos = File.ReadAllText(Server.MapPath("Categoria.json"));
            DataTable dt = (DataTable)JsonConvert.DeserializeObject(datos, typeof(DataTable));
            dgCategoria.DataSource = dt;
            dgCategoria.DataBind();
        }

        protected void btnLeerProducto_Click(object sender, EventArgs e)
        {
            string dato = File.ReadAllText(Server.MapPath("Producto.json"));
            DataTable tabla = (DataTable)JsonConvert.DeserializeObject(dato, typeof(DataTable));
            dgProducto.DataSource = tabla;
            dgProducto.DataBind();
        }
    }
}