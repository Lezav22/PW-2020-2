using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace _001.App_Start
{
    public class Conexion
    {

        private static MySqlConnection objconexion;

        private static string error;

        public static MySqlConnection getConexion()
        {
            if (objconexion != null)

                return objconexion;
            objconexion = new MySqlConnection();
            objconexion.ConnectionString = "Server=localhost;UserId=root;Database=asesorias;Password=''";

            try
            {
                objconexion.Open();
                return objconexion;
            }
            catch (Exception e)
            {
                error = e.Message;
                return null;
            }
        }

        public static void cerrarConexion()
        {
            if (objconexion != null)
                objconexion.Close();
        }




    }
}