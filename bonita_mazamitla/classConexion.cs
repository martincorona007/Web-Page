using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public class Classconexion
{//attributos
    //En la clase Classconexion contendra los correspondientes requerimientos para conectarse a la base de datos SQL Server     
    protected SqlDataReader reader;// Administra objetos y simplifica el proceso de sincronización
    protected SqlDataAdapter AdaptadorDatos;// Representa un conjunto de comandos de datos y una conexión de base de datos
    protected DataSet data; // colección de datos habitualmente tabulada
    protected SqlConnection oconeccion = new SqlConnection();//instancia

    //Constructos sin parametros
    public Classconexion()
    {

    }
    //Metodo para poder realizar la conexión a SQL Server
    public void conectar(string tabla)
    {
        //Conector para localizar la base de datos
        string strConeccion = ConfigurationManager.ConnectionStrings["bonita_mazamitla.Properties.Settings.DB_mazamitlaConnectionString"].ConnectionString;
        //Almacena ala instancia el nombre de la localización de la base de datos
        oconeccion.ConnectionString = strConeccion;
        //Abre la base de datos
        oconeccion.Open();
        //Se selecciona todo lo que esta en la variable tabla que pasa como parametro
        AdaptadorDatos = new SqlDataAdapter("select *  from " + tabla, oconeccion);
        //Ejecuta todos lo camando a realizar
        SqlCommandBuilder ejecutarcomandos = new SqlCommandBuilder(AdaptadorDatos);
        //Se hace una instancia al metodo DataSet
        Data = new DataSet();
        //Se manda a llamar el SqlDataAdapter para poder conectarse
        AdaptadorDatos.Fill(Data, tabla);
        //Cierra la sentencia dinamica
        oconeccion.Close();


    }
    //Getter y Setter de DataSet debido a que esta como proctected
    //para poder realizar la manipulación de la conexión
    public DataSet Data
    {
        set { data = value; }
        get { return data; }
    }
    //Getter y Setter de DataReader debido a que esta como proctected
    //para poder administrar los objetos
    public SqlDataReader DataReader
    {
        set { reader = value; }
        get { return reader; }
    }
    
}
