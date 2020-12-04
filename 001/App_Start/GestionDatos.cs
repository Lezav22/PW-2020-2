using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Security.Cryptography;
using System.Text;

namespace _001.App_Start
{
    public class GestionDatos
    {

        public MySqlConnection conexion;
        public MySqlTransaction transaccion;
        public string error;


        public GestionDatos()
        {
            this.conexion = Conexion.getConexion();
        }

        public bool registro(Persona persona)
        {
            string clave2 = Encrypt.GetMD5(persona.clave);
            bool agregar = false;
            MySqlCommand comando = new MySqlCommand();
            comando.Connection = conexion;
            comando.CommandText = "insert into usuario values (null, @usuario, @clave, @nombre1, @nombre2, @apellido1, @apellido2,  @tipo_id, @correo, @identificacion, @estado)";
            comando.Parameters.AddWithValue("@nombre1", persona.nombre1);
            comando.Parameters.AddWithValue("@nombre2", persona.nombre2);
            comando.Parameters.AddWithValue("@apellido1", persona.apellido1);
            comando.Parameters.AddWithValue("@apellido2", persona.apellido2);
            comando.Parameters.AddWithValue("@correo", persona.email);
            comando.Parameters.AddWithValue("@usuario", persona.usuario);
            comando.Parameters.AddWithValue("@clave", clave2);
            comando.Parameters.AddWithValue("@identificacion", persona.identificacion);
            comando.Parameters.AddWithValue("@tipo_id", persona.tipo_id);
            comando.Parameters.AddWithValue("@estado",persona.estado);


            try
            {
                comando.ExecuteNonQuery();
                agregar = true;

            }
            catch (MySqlException ex)
            {
                this.error = ex.Message;
            }
            
            return agregar;
            
        }

        public  bool Login(Usuario usuario)
        {
            string clave2 = Encrypt.GetMD5(usuario.clave);
            bool inicio = false;
            MySqlCommand comando = new MySqlCommand();
            comando.Connection = conexion;
            comando.CommandText = "Select usuario from usuario where clave=@clave and usuario=@usuario";
            comando.Parameters.AddWithValue("@clave", clave2);
            comando.Parameters.AddWithValue("@usuario", usuario.user);
            //MySqlDataReader registro = comando.ExecuteReader();


            try
            {
                int count = Convert.ToInt32(comando.ExecuteScalar()); //devuelve la fila afectada
                
                if (count == 0)
                {
                    inicio = false;
                }
                else
                {
                    inicio = true;
                }

            }
            catch (MySqlException ex)
            {
                this.error = ex.Message;
            }

            return inicio;

        }



    }
}