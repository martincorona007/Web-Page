using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
//Herencia a la clase Classconexion.
public class classpageRegistrationUserClient:Classconexion
{//Variables de los atrributos de la tabla usuario y ciudad
    String nametable = "country";
    protected int id_country, lada;
    protected string countryName;
    String nametable2 = "usuario";
    protected string nameUser, f_name, l_name, email, password, cellphone, date, gender;
    //Constructor parametrizado.
    public classpageRegistrationUserClient(string nameuser,string fname,string lname,string email,string password,string cellphone,string date,string gender, int id, string name, int la)
    {
        this.nameUser = nameuser;
        this.f_name = fname;
        this.l_name = lname;
        this.email = email;
        this.cellphone = cellphone;
        this.date = date;
        this.gender = gender;
        this.id_country = id;
        this.countryName = name;
        this.lada = la;
    }//Constructor no parametrizado.
    public classpageRegistrationUserClient()
    {
    }
    //Getters y Setter de los atributos de ciudad debido a que estan como protected 
    //para que nadien pueda acceder a ellos.
    public int ID_country
    {
        set { id_country = value; }
        get { return id_country; }
    }
    public string NameContry
    {
        set { countryName = value; }
        get { return countryName; }
    }
    public int Lada
    {
        set { lada = value; }
        get { return lada; }
    }
    //Getters y Setter de los atributos de usuario debido a que estan como protected 
    //para que nadien pueda acceder a ellos.
    public string NameUser
    {
        set { nameUser = value; }
        get { return nameUser; }
    }
    public string F_name
    {
        set { f_name = value; }
        get { return f_name; }
    }
    public string L_name
    {
        set { l_name = value; }
        get { return l_name; }
    }
    public string Email
    {
        set { email = value; }
        get { return email; }
    }
    public string Password
    {
        set { password = value; }
        get { return password;
 }
    }
    public string Cellphone
    {
        set { cellphone = value; }
        get { return cellphone; }
    }
    public string Date
    {
        set { date = value; }
        get { return date; }
    }
    public string Gender
    {
        set { gender = value; }
        get { return gender; }
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
        fila = Data.Tables[nametable2].NewRow();
        
        fila["nombre"] = NameUser;
        fila["p_apellido"] = F_name;
        fila["s_apellido"] = L_name;
        fila["correo"] = Email;
        fila["contrasenia"] = Password;
        fila["lada"] = Lada;
        fila["telefono"] = Cellphone;
        fila["fecha_registro"] = Date;
        fila["gender"] = Gender;
        fila["ID_country"] = ID_country;
        //Se agregaran los datos a la tabla de la base de datos.
        Data.Tables[nametable2].Rows.Add(fila);
        AdaptadorDatos.Update(Data, nametable2);
        
    }
}
