using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _001.App_Start;
using System.Security.Cryptography;
using System.Text;

namespace _001
{
    public partial class Login : System.Web.UI.Page
    {

        GestionDatos objGestion = new GestionDatos();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIniciar_Click(object sender, EventArgs e)
        {
            Usuario log = new Usuario();

            log.User = txtusuario.Text;
            log.clave = txtclave.Text;

            bool login = objGestion.Login(log);

            if (login)
            {
                Response.Redirect("Index.aspx");
            }
            else
            {
                lbpruebalogin.Text = objGestion.error;

            }
            

            
        }
    }
}