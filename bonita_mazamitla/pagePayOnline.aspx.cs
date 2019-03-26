using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bonita_mazamitla
{
    public partial class pagoEnLinea : System.Web.UI.Page

    {
        string value1,value2;//Variable para almacenar las fechas seleccionadas por el usuario.
        static string date1,date2,date3;
        static string ID,price,IDcabania;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Al momento de cargar la pagina se recibira el ID del usario del Web Form Anterior.
            ID= Request.QueryString["id_user"];
            //Al momento de cargar la pagina se recibira el ID del usario del Web Form Anterior.
           date1= txtFechaInicio.Text = Request.QueryString["fhr"];
            //Al momento de cargar la pagina se recibira el ID del usario del Web Form Anterior.
          date2= txtFechaCierre.Text = Request.QueryString["fecha2"];
            //Al momento de cargar la pagina se recibira el ID del usario del Web Form Anterior.
            price = Request.QueryString["csp"];
            //Creación de instancia a la clase classPayOnline.
            classPayOnline op = new classPayOnline();
            //Al haber crado de instancia se procede a utilizar el nombre para manda a llamar
            //el metodo existe para obtener el ID de la cabaña se leccionada por el usuario.
            IDcabania=op.existe(Session["Value"].ToString()).ToString();
        }

       //En este metodo se obtine la fecha seleccionada por el usuario
       //Una vez seleccionada cerrara el Calendar2 para una mejor visualización.
        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            date3= txtFName.Text = Calendar2.SelectedDate.ToShortDateString();
       
            Calendar2.Visible = false;//close the calendar
            //--------------------------------------------------------------------------------NEW
            if ((DateTime.Parse(date2) >= DateTime.Parse(date3)))
            {
                if ((DateTime.Parse(date1) <= DateTime.Parse(date3)))
                {
                    lblDATEInitial.Text = "";
                }
                else
                {
                    lblDATEInitial.Text = "Fecha debe ser entre fecha de registro y fecha cierre";
                    txtFName.Text = "";
                    DropDownList1.Text = "";
                    DropDownList2.Text = "";

                }

            }
            else
            {
                lblDATEInitial.Text = "Fecha debe ser entre fecha de registro y fecha cierre";
                txtFName.Text = "";
                DropDownList1.Text = "";
                DropDownList2.Text = "";
            }


        }
        //En este metodo hace que el calendario se active para poder visualizarlo.
        protected void btndateInittial_Click(object sender, EventArgs e)
        {
            Calendar2.Visible = true;
        }
        
        //Se selecciona la cantidad de menores y se alamcena en la variable value1. 
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            value1 = DropDownList1.SelectedValue;
        }
        //Se selecciona la cantidad de adultos y se alamcena en la variable value1. 
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            value2 = DropDownList2.SelectedValue;
        }
        //En este boton realiza la operación de reservar la cabaña.
        protected void btnReservar_Click(object sender, EventArgs e)
        {


            if (string.IsNullOrEmpty(txtFName.Text.Trim()) || string.IsNullOrWhiteSpace(txtFName.Text.Trim()))
            {
                lblDATEInitial.Text = "Ingresar el tipo de pago";
            }
            else if (string.IsNullOrEmpty(txttipoPago.Text.Trim()) || string.IsNullOrWhiteSpace(txttipoPago.Text.Trim()))
            {
                LabelTypePay.Text = "Ingresar el tipo de pago";
                

            }else if(string.IsNullOrEmpty(DropDownList1.Text.Trim()) || string.IsNullOrWhiteSpace(DropDownList1.Text.Trim()))
            {
                LabelMEnor.Text = "Seleccionar la cantidad de menores";
            }
            else if(string.IsNullOrEmpty(DropDownList2.Text.Trim()) || string.IsNullOrWhiteSpace(DropDownList2.Text.Trim())){
                LabelAdult.Text = "Seleccionar la cantidad de Adultos";
            }
            else
            {
                //Se realiza una instancia a la clase classPayOnline donde contendra 
                //los metodos necesarios para realiza la operación de reservar.
                classPayOnline clte = new classPayOnline("", "", "", "", "", "", "", "", "");
                //trim sirve para quitar espacios en blanco
                //Se utiliza el nombre de la instancia en el cual se mandara
                //a llamar a los Getters y Setters y se almacenara a cada 
                //atributo de la base de datos.
                clte.ID_user = Request.QueryString["id_user"];
                clte.ID_cabania = clte.existe(Session["Value"].ToString()).ToString();
                clte.Date1 = Request.QueryString["fhr"];
                clte.Datei = txtFName.Text;
                clte.Date2 = Request.QueryString["fecha2"];
                clte.Tpay = txttipoPago.Text;
                clte.CS_pay = Request.QueryString["csp"];
                clte.N_ninos = DropDownList1.SelectedValue;
                clte.N_adultos = DropDownList2.SelectedValue;
                //Se Manda a llamar al metodo agregar de la clase classPayOnline para agregar
                //los datos a la base de datos. 
                clte.agregar();
                //Un mensaje en caso de ser realizado exitosamente la reservación.
                lblDATEInitial.Text = "";
                LabelTypePay.Text = "";
                LabelMEnor.Text = "";
                LabelAdult.Text = "";
                lblstate.Text = "Reservación realizada con exito";
                
            }






        }
    }
}