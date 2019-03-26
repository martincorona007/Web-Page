using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bonita_mazamitla
{
    public partial class pageRegistrationUserClient : System.Web.UI.Page
    {
        int va;//variable para almacenar la lada.
        string date;//variable para almacenar la fecha actual.
        //Al momento de abrir la pagina se almacenara la fecha actual en la variable date.
        protected void Page_Load(object sender, EventArgs e)
        {    
            date = DateTime.Now.ToString("yyyy-MM-dd");//get The actual date.
        }
        //En este metodo del DropDonList se obtiene la lada acorde al paise seleccionado.
        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Se manda a llamar la clase classpageRegistrationUserClient para mandar a los metodos
            //correspondientes para registar el usuario.
            classCountry met = new classCountry();
            //Se utiliza el nombre de la instancia y se utiliza el metodo existe para buscar
            //en la tabla country la lada
            va = met.existe(DDLCountry.SelectedValue);
            //se muestra en la caja de texto la el resultado de la busqueda anterior
            TextBox6.Text = va.ToString();
        
        }
        //En este boton reservar se procede a registar el usuario en la base de datos.
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Se utuliza un try catch para verificar la captura de los datos.
            try {
            //Se manda a llamar la clase classpageRegistrationUserClient para mandar a los metodos
            //correspondientes para registar el usuario y almacenar en los Getters y Setters 
            //los datos obtenidos por el usuario.
             classpageRegistrationUserClient at = new classpageRegistrationUserClient("","","","","","","","",0,"",0);
                classCountry ats = new classCountry();
            at.NameUser = txtName.Text;
            at.F_name = txtFName.Text;
            at.L_name = txtLName.Text;
            at.Email = txtEmail.Text;
            at.Password = txtPasword.Text;
            at.Lada = int.Parse(TextBox6.Text);
            at.Cellphone = txtCellphone.Text;
            at.Date = date;
            at.Gender = DDLGenre.SelectedValue;
            at.ID_country = ats.getIdCountry(DDLCountry.SelectedValue);
            //Se manda a llamar el metodo agregar para agregar los datos a la base de datos.
            at.agregar();


            //Mostrara un mensaje en caso de ser exitoso la operación
            Response.Write("Registro exitosamente");
            //Se redirecciona al login 
            Response.Redirect("~/pageLogin.aspx");
            }
            catch
            {
                // Mostrara un mensaje en caso de no completar la operación
                Response.Write("Registro incompleto");
            }
            Response.Redirect("~/pageLogin.aspx");
        }

       
    }
}