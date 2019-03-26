﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class classCountry:Classconexion
    {

    String nametable = "country";
    protected int id_country, lada;
    protected string countryName;

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
            if (fila["countryName"].ToString() == valor)
            {
                //Se procedera a obtener el ID de la lada
                lada = int.Parse(fila["lada"].ToString());

            }
        }
        //retornara el ID de la lada
        return lada;


    }
    //Metodo que recibe un string verificando si la ciudad seleccionada se encuentra en
    //la base de datos.
    public int getIdCountry(String valor)
    {//Se conecta a la tabla espefica con el metodo de conectar de la clase classConexion.
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
            if (fila["countryName"].ToString() == valor)
            {
                //Se procedera a obtener el ID de la ciudad
                id_country = int.Parse(fila["ID_country"].ToString());

            }
        }
        //retornara el ID de la ciudad
        return id_country;


    }

}
