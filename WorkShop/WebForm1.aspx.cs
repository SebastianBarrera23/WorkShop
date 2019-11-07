using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WorkShop
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGenerar_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();

            ds.ReadXml(Server.MapPath("Categoria.xml"));
            ddlDatos.DataSource = ds;
            ddlDatos.DataValueField = "idCategoria";
            ddlDatos.DataTextField = "NomCat";
            ddlDatos.DataBind();

            DataSet data = new DataSet();
            data.ReadXml(Server.MapPath("Producto.xml"));
            dgDatos.DataSource = data;
            dgDatos.DataBind();
        }
    }
}