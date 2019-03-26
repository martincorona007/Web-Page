using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace bonita_mazamitla
{
    public partial class window1 : System.Web.UI.Page
    {
        //Variables para poder realizar los calculos de costos
        //de las reservaciones.
        string diaS;
        int dia = 0;
        static string idUser;
        string date, date2, actualDate;
        static String startdate, enddate, nameCabania;
        static int IDcabania;
        static bool flag;
        //Setters y Getter para obtener y enviar los datos
        public string getSetDayString
        {
            get { return diaS; }
            set { diaS = value; }
        }
        public int getSetdayInt
        {
            get { return dia; }
            set { dia = value; }
        }

        //Al momento abrir la pagina se obtendra el ID del usuario y 
        //el nombre de la cabaña. 
        protected void Page_Load(object sender, EventArgs e)
        {
            classSchedule cl = new classSchedule();

            idUser = Request.QueryString["Iddd"];
            nameCabania = txtNameCabania.Text = Session["Value"].ToString();
            IDcabania = cl.existe(nameCabania);
            actualDate = DateTime.Now.ToString("yyyy-MM-dd");//get The actual date.




        }
        //En este boton abrira el calendario 1 del cual esta desabilitado
        //para no tenerlo a la vista antes de seleccionar la fecha.
        protected void btn1_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }
        //Selecciona la fecha inicial y la almacena en la variable date y 
        //desabilita el calendario 1 para no tenerlo a la vista despues de seleccionar
        //la fecha.
        //---------------------------------------------------------------------------------------
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

            startdate = date = txt1.Text = Calendar1.SelectedDate.ToShortDateString();
            //new
            if (DateTime.Parse(date) < DateTime.Parse(actualDate))
            {
                lbleSTATE2.Text = "La fecha debe ser  mayor al actual dia";
                txt1.Text = "";
                txt2.Text = "";
                txtPrice.Text = "";
                txtDays.Text = "";


            }
            else
            {
                lbleSTATE2.Text = "";
            }
            
            //Disponible();
            if (string.IsNullOrEmpty(txt2.Text.Trim()) || string.IsNullOrWhiteSpace(txt2.Text.Trim()))
            {
                lbleSTATE.Text = "";
                //flag = false;
            }
            else
            {
                Disponible();
                // flag = false;
            }
            Calendar1.Visible = false;

        }








        //---------------------------------------------------------------------------------------
        //En este boton abrira el calendario 2 del cual esta desabilitado
        //para no tenerlo a la vista antes de seleccionar la fecha.
        protected void btn2_Click(object sender, EventArgs e)
        {

            Calendar2.Visible = true;
        }

        protected void btnDifferent_Click(object sender, EventArgs e)
        {
            btn1.Enabled = true;
            btn2.Enabled = true;
            txt1.Text = "";
            txt2.Text = "";
            txtPrice.Text = "";
            txtDays.Text = "";
            lblSTATESCHEDULE.Text = "";
            flag = false;
        }


        //Selecciona la fecha inicial y la almacena en la variable date y 
        //desabilita el calendario 2 para no tenerlo a la vista despues de seleccionar
        //la fecha y realizara los calculos de costo para las cabañas.
        //--------------------------------------------------------------------------------------
        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            //Se obtine la fecha 2. 
            enddate = date2 = txt2.Text = Calendar2.SelectedDate.ToShortDateString();
            //new
            if (DateTime.Parse(date2) < DateTime.Parse(actualDate))
            {
                lbleSTATE.Text = "La fecha debe ser  mayor al actual dia";

                txt2.Text = "";
                txtPrice.Text = "";
                txtDays.Text = "";


            }
            else
            {
                if (string.IsNullOrEmpty(txt1.Text.Trim()) || string.IsNullOrWhiteSpace(txt1.Text.Trim()))
                {
                    lbleSTATE.Text = "Debes seleccionar fecha incio";
                    txt1.Text = "";
                    txt2.Text = "";
                    txtPrice.Text = "";
                    txtDays.Text = "";

                }
                else
                {
                    Disponible();

                    //flag = true;


                }

            }
            Calendar2.Visible = false;



        }
        //
        private void Disponible()
        {
            String mycon = "Data Source=DESKTOP-M270QPE;Initial Catalog=DB_mazamitla;Integrated Security=True";

            String myquery = "SELECT * FROM reservaciones WHERE ID_cabania='" + IDcabania + "' and ((fecha_registro between '" + startdate + "' and '" + enddate + "' ) or (fecha_cierre between '" + startdate + "' and '" + enddate + "' ) or (fecha_registro > '" + startdate + "' AND fecha_cierre < '" + enddate + "')OR (fecha_cierre > '" + startdate + "'AND fecha_registro < '" + enddate + "'));";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                delete();

                lblSTATESCHEDULE.Text = "No disponible";

                delete();
                
                /*foreach (DataRow dr in ds.Tables[0].Rows)
                {
                

                
               
                }
                if (ds.Tables[0].Rows.Count == 0)
                {
                   // delete();

                    //lblSTATESCHEDULE.Text = "YES";
                    lblSchedule.Text = "YES";

                   // delete();
                }*/
                
            }
            else if(ds.Tables[0].Rows.Count == 0)
            {
                //cuenta cada dia desde la fecha 1 hasta la fecha 2.
                getSetDayString = Calendar1.SelectedDate.Subtract(Calendar2.SelectedDate).TotalDays.ToString();
                //realiza un casting para obtener el numero de dias.
                getSetdayInt = Convert.ToInt32(getSetDayString);
                //Convierte la fecha en el formato que esta en SQL Server de lo contrario
                //no se almacenara la fecha.
                // txtchange.Text = Convert.ToDateTime(date2).ToString("yyyy-MM-dd");
                //Agrega un dia mas debido a que resta un dia despues de ser el casting.
                getSetdayInt -= 1;
                //Se remueve el operador menos que venia al principio despues de ser el casting.
                getSetdayInt *= -1;
                //Muestra el total de dias.
                txtDays.Text = getSetdayInt.ToString();
                //Calcula los dias por el precio de la cabaña.
                getSetdayInt = getSetdayInt * 850;
                //Muestra el precio total. 
                txtPrice.Text = getSetdayInt.ToString();
                //Cierra el calendario 2 para no visualizarlo despues de registrar la fecha.

                
                lblSTATESCHEDULE.Text = "Disponible";

                btn1.Enabled = false;
                btn2.Enabled = false;
                flag = true;
            }
            con.Close();
        }



        public void delete()
        {
            if (txt1.Text.Length > 0)
            {
                txt1.Text = "";
            }
            if (txt2.Text.Length > 0)
            {
                txt2.Text = "";
            }
            if (txtPrice.Text.Length > 0)
            {
                txtPrice.Text = "";
            }
            if (txtDays.Text.Length > 0)
            {
                txtDays.Text = "";
            }
            txt1.Text = "";
            txt2.Text = "";
            txtPrice.Text = "";
            txtDays.Text = "";
            flag = false;
        }





        //------------------------------------------------------------------------------------------
        //En este boton se mandan los datos al siguiente Web Form pagePayOnline para 
        //proceder con la reservación
        protected void btnReservar_Click(object sender, EventArgs e)
        {

            if (flag == false)
            {

            }
            else
            {
                Response.Redirect("pagePayOnline.aspx?fhr=" + txt1.Text + "&fecha2=" + txt2.Text + "&id_user=" + idUser + "&csp=" + txtPrice.Text);
                Response.Redirect("~/pagePayOnline.aspx");

            }



        }
    }
}