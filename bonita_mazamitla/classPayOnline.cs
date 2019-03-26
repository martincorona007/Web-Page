using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
//Herencia a la clase Classconexion.
public class classPayOnline : Classconexion
{
    //Variables de los atrributos de la tabla usuario.
    protected int id_cabi;
    protected string id_user, id_cabania,n_ninos,n_adultos;
    protected string date1, datei, date2, tpay, cs_pay;
    string nametable = "cabanias";
    string nametable2 = "reservaciones";
    //Constructor parametrizado.
    public classPayOnline(string id_user,string id_cabania,string n_ninos,string n_adultos,string date1,string datei,string date2,string tpay,string cs_pay)
    {
        this.id_user = id_user;
        this.id_cabania = id_cabania;
        this.n_ninos = n_ninos;
        this.n_adultos = n_adultos;
        this.date1 = date1;
        this.datei = datei;
        this.date2 = date2;
        this.tpay = tpay;
        this.cs_pay = cs_pay;
    }//Constructor no parametrizado.
    public classPayOnline()
    {

    }
    //Getters y Setter de los atributos debido a que estan como protected 
    //para que nadien pueda acceder a ellos.
    public string ID_user
    {
        set { id_user = value; }
        get { return id_user; }
    }
    public string ID_cabania
    {
        set { id_cabania = value; }
        get { return id_cabania; }
    }
    public string N_ninos
    {
        set { n_ninos = value; }
        get { return n_ninos; }
    }
    public string N_adultos
    {
        set { n_adultos = value; }
        get { return n_adultos; }
    }
    public String Date1
    {
        set { date1 = value; }
        get { return date1; }
    }
    public String Datei
    {
        set { datei = value; }
        get { return datei; }
    }
    public String Date2
    {
        set { date2 = value; }
        get { return date2; }
    }
    public String Tpay
    {
        set { tpay = value; }
        get { return tpay; }
    }
    public String CS_pay
    {
        set { cs_pay = value; }
        get { return cs_pay; }
    }
    //Metodo que recibe un string verificando si la cabaña seleccionada se encuentra en
    //la base de datos.
    public int existe(String valor)
    {
        //Se conecta a la tabla espefica con el metodo de conectar de la clase classConexion.
        conectar(nametable);
        //Metodo de base de datos.
        DataRow fila;
        //Contar las filas de la tabla .
        int x = Data.Tables[nametable].Rows.Count - 1;
        //Hacer el recorrido a la tabla.
        for (int i = 0; i <= x; i++)
        {
            fila = Data.Tables[nametable].Rows[i];
            //Si el valor dado pertenece al nombre de la cabaña en la base de datos
            if (fila["nombre_cabania"].ToString() == valor)
            {
                //Se procedera a obtener el ID de la cabaña
                id_cabi = int.Parse(fila["ID_cabania"].ToString());
            
            }
        }
        //retornara el ID de la cabaña
        return id_cabi;


    }
    //Metodo para insertar los datos
    public void agregar()
    {
        //Se conecta a la tabla espefica con el metodo de conectar de la clase classConexion.
        conectar(nametable2);
        //Metodo de base de datos.
        DataRow fila;
        //Se almacenara en la base de datos acorde al nombre especifico
        //además se asignaran los datos.
        fila = Data.Tables[nametable2].NewRow();
        fila["ID_user"] = int.Parse(ID_user);
        fila["ID_cabania"] =int.Parse(ID_cabania);
        fila["fecha_registro"] = Date1;
        fila["fecha_inicio"] = Datei;
        fila["fecha_cierre"] = Date2;
        fila["tipo_pago"] = Tpay;
        fila["cuanto_se_pago"] = double.Parse(CS_pay);
        fila["cuantos_ninios"] = int.Parse(N_ninos);
        fila["cuantos_adultos"] = int.Parse(N_adultos);
        //Se agregaran los datos a la tabla de la base de datos.
        Data.Tables[nametable2].Rows.Add(fila);
        AdaptadorDatos.Update(Data, nametable2);
    }

}
