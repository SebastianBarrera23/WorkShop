using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace WorkShop
{
    public class Conexion
    {
        private static SqlConnection con;

        private Conexion()
        {

        }

        public static SqlConnection obtenerConexion()
        {
            con = new SqlConnection(Properties.Settings.Default.conexion);
            return con;
        }
    }
}