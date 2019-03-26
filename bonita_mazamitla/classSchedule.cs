using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class classSchedule:Classconexion
{

    String nametable = "cabanias";
    protected int id_cabania;

    public int ID_cabania
    {
        set { id_cabania = value; }
        get { return id_cabania; }
    }
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
            //Si el valor dado pertenece al nombre de la ciudad en la base de datos
            if (fila["nombre_cabania"].ToString() == valor)
            {
                //Se procedera a obtener el ID de la lada
                id_cabania = int.Parse(fila["ID_cabania"].ToString());

            }
        }
        //retornara el ID de la lada
        return id_cabania;


    }

}
