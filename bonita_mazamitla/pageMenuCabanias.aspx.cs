using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bonita_mazamitla
{
    public partial class pageAllCabanias : System.Web.UI.Page
    {
        string ID;
        //Almomento de cargar la pagina se obtiene el ID y el nombre de usuario
        //enviados por el web Form pageLogin.
        protected void Page_Load(object sender, EventArgs e)
        {
            ID = Request.QueryString["Id"];
           
        }

        //Selecciona el boton de la cabaña correspondiente y se envia al siguiente 
        //WebForm pageOptionPay el nombre de la cabaña y el ID del usuario. 
        protected void btnInspiracion_Click(object sender, EventArgs e)
        {
            Session["Value"] = "Inspiracion";
            
            Response.Redirect("~/pageOptionPay.aspx?Idd="+ ID);

        }
        //Selecciona el boton de la cabaña correspondiente y se envia al siguiente 
        //WebForm pageOptionPay el nombre de la cabaña y el ID del usuario. 
        protected void bntAnastacia_Click(object sender, EventArgs e)
        {
            Session["Value"] = "Anastasia";
            Response.Redirect("~/pageOptionPay.aspx?Idd=" + ID);
        }
        //Selecciona el boton de la cabaña correspondiente y se envia al siguiente 
        //WebForm pageOptionPay el nombre de la cabaña y el ID del usuario. 
        protected void btnRafela_Click(object sender, EventArgs e)
        {
            Session["Value"] = "Rafaela";
            Response.Redirect("~/pageOptionPay.aspx?Idd=" + ID);
        }
        //Selecciona el boton de la cabaña correspondiente y se envia al siguiente 
        //WebForm pageOptionPay el nombre de la cabaña y el ID del usuario. 
        protected void btn1_Click(object sender, EventArgs e)
        {
            Session["Value"] = "Matilda";
            Response.Redirect("~/pageOptionPay.aspx?Idd=" + ID);
        }
        //Selecciona el boton de la cabaña correspondiente y se envia al siguiente 
        //WebForm pageOptionPay el nombre de la cabaña y el ID del usuario. 
        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["Value"] = "Isadora";
            Response.Redirect("~/pageOptionPay.aspx?Idd=" + ID);
        }
    }
}