using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bonita_mazamitla
{
    public partial class pageLogin : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            // txt1.Text =DateTime.Now.ToString("dd/MM/yyyy");
            
        }
        //Boton Login para poder acceder. 
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string namee;//Variable string para poder almacenar el nombre del cliente.
            //Se utilizara un try catch para poder saber exactamente cual es el error correspondiente.
            try
            {
                //Instancia de clase Login donde se obtendran los metodos necesarios para realizar
                //la operacion del login.
                classLogin emp = new classLogin(0, "", "","");
                //Dentro de esta condicional se utiliza el nombre de la instacia
                //y se manda a llamar al metodo login que realizara
                //si el usuario esta dentro de la base de datos.
                if (emp.login(txtemail.Text,txtPassword.Text))
                {
                   
                   lblID.Text = emp.Id_user.ToString(); //Se obtiene El ID del usuario del Setter y Getter.
                    namee = emp.Name.ToString();//Se obtiene el nombre del usuario del Setter y Getter.
                    //En esta linea de codigo realiza la operación de enviar al Web Form pageMenucabanias 
                    //el ID y el nombre del usuario.
                    Response.Redirect("~/pageMenuCabanias.aspx?Id="+lblID.Text+"&Name="+namee);
                    
                }
                else
                {
                    //Etiqueta en el cual mostrara en caso de ser lo contrario a la condición.
                    lblstate.Text = " Acceso denegado";
                }
            }
            catch
            {

            }
        }
        //Boton de Registro en caso de no estar registrado en la pagina
        //y se redirecciona al Web Form correspondiente de Registro.
        protected void btnSingUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/pageRegistrationUserClient.aspx");
        }
    }
}