using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
//Herencia a la clase Classconexion
public class classLogin:Classconexion
{
    //Variables de los atrributos de la tabla usuario.
    string tabla = "usuario";
    protected string correo,name, contra;
    protected int ID_user;
    //Consutructor parametrizado.
    public classLogin(int Id,string correo,string contra, string name)
    {
        this.ID_user = Id;
        this.correo = correo;
        this.contra = contra;
        this.name = name;
    }
    //Getters y Setter de los atributos debido a que estan como protected 
    //para que nadien pueda acceder a ellos.
    public int Id_user
    {
        set { ID_user = value; }
        get { return ID_user; }
    }
    public String Email
    {
        set { correo = value; }
        get { return correo; }
    }
    public String Password
    {
        set { contra = value; }
        get { return contra; }
    }
    public String Name
    {
        set { name = value; }
        get { return name; }
    }
    //Metodo login en el cual recibe dos strings uno para el correo
    // y otro para la contraseña y verificar si ambos estan en la base de datos.
    public bool login(string corre,string pass)
    {
        //Se conecta a la tabla espefica con el metodo de conectar de la clase classConexion.
        conectar(tabla);
        //Metodo de base de datos.
        DataRow fila;
        //Contar las filas de la tabla .
        int x = Data.Tables[tabla].Rows.Count - 1;
        //Hacer el recorrido a la tabla.
        for(int i = 0; i <= x; i++)
        {
            fila = Data.Tables[tabla].Rows[i];
            //Se busca en la tabla si los datos proporcionados son pertenecientes a la tabla.
            if (fila["correo"].ToString().Trim().ToLower() == corre.Trim().ToLower() && fila["contrasenia"].ToString().Trim() == pass.Trim())
            {
                //En caso de ser certa la condición
                //se almacenan los datos de la tabla 
                //en los atributos y regresa un true.
                ID_user = int.Parse(fila["ID_user"].ToString());
                correo = fila["correo"].ToString();
                contra = fila["contrasenia"].ToString();
                return true;
            }
        }
        //Retorna falso
        return false;
    }

}
