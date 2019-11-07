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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dgProducto_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnBase_Click1(object sender, EventArgs e)
        {
            SqlConnection con = Conexion.obtenerConexion();
            SqlCommand com = new SqlCommand("pa_cat", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adap = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            adap.Fill(ds, "Categoria");
            dgBase.DataSource = ds;
            dgBase.DataBind();

            Session["categoria"] = JsonConvert.SerializeObject(ds);
        }

        protected void btnBase1_Click(object sender, EventArgs e)
        {
            SqlConnection conex = Conexion.obtenerConexion();
            SqlCommand comm = new SqlCommand("pa_produ", conex);
            comm.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adap = new SqlDataAdapter(comm);
            DataSet set = new DataSet();
            adap.Fill(set, "Producto");
            dgBase1.DataSource = set;
            dgBase1.DataBind();

            Session["producto"] = JsonConvert.SerializeObject(set);
        }

        protected void btnGenerarP_Click(object sender, EventArgs e)
        {
            File.WriteAllText(@"C:\Users\sebastian\Desktop\WorkShop\Productos.json", "[" + Session["Producto"].ToString() + "]");
            Response.Write("<script>alert('Json de producto, creado'</script>");
        }

        protected void btnGenerarC_Click(object sender, EventArgs e)
        {
            File.WriteAllText(@"C:\Users\sebastian\Desktop\WorkShop\Categorias.json", "[" + Session["categoria"].ToString() + "]");
            Response.Write("<script>alert('Json de categoría, creado'</script>");
        }
    }
}