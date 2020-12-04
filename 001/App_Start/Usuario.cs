using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace _001.App_Start
{
    public class Usuario
    {

        public string user;
        public string clave;

        public Usuario()
        {

        }

        public Usuario(string user, string clave)
        {
            this.user = user;
            this.clave = clave;
        }

        public string User
        {
            get { return user; }
            set { user = value; }

        }

        public string Clave
        {
            get { return clave; }
            set { clave = value; }

        }
    }
}