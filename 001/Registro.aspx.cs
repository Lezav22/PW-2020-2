using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using _001.App_Start;

namespace _001
{
    public partial class Registro : System.Web.UI.Page
    {
        GestionDatos objGestion = new GestionDatos();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            Persona persona = new Persona();

            persona.nombre1 = txtnombre1.Text;
            persona.nombre2 = txtnombre2.Text;
            persona.apellido1 = txtapellido1.Text;
            persona.apellido2 = txtapellido2.Text;
            persona.identificacion = txtidentificacion.Text;
            persona.email = txtemail.Text;
            persona.clave = txtclave.Text;
            persona.usuario = txtidentificacion.Text;
            persona.tipo_id = 1;
            persona.estado = "A";
            

            bool agregado = objGestion.registro(persona);

            if (agregado)
            {
                lbprueba.Text = "AGREGADO";
                limpiar();

            }
            else
            {
                lbprueba.Text = objGestion.error;
            }

        }

        private void limpiar()
        {
            txtnombre1.Text = "";
            txtnombre1.Text = "";
            txtnombre2.Text = "";
            txtapellido1.Text = "";
            txtapellido2.Text = "";
            txtidentificacion.Text = "";
            txtemail.Text = "";
            txtclave.Text = "";
            txtidentificacion.Text = "";
        }
    }
}