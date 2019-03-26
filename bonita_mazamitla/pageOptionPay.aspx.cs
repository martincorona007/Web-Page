using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bonita_mazamitla
{
    public partial class opcion : System.Web.UI.Page
    {
        //Al momento de cargar la pagina se recibira el ID del usuario.
        string idd;
        protected void Page_Load(object sender, EventArgs e)
        {
            idd= Request.QueryString["Idd"];
        }
        //En este apartado se le da la opción al usuario de pagar en linea
        //en este boton al momento de ser presionado
        //por el usuario se rediccionara hacia el Web Form de pagSchedule para proseder
        //con el pago.
      
        protected void btnPagarAhora_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("~/pageSchedule.aspx?Iddd=" + idd);

        }
        //En este apartado se le da la opción al usuario de pagar en el establecimiento
        //en este boton al momento de ser presionado
        //por el usuario se rediccionara hacia el Web Form de pagSchedule para proseder
        //con el pago.
        protected void btnEstablecimiento_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/pageSchedule.aspx");
        }
        
    }
}