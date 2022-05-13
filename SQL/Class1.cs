using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;

namespace SQL
{
    class conexionbd
    {
        string cadena = "Data Source=DESKTOP-T9873S7\\SQLEXPRESS;Initial Catalog=Pruebabd; Integrated Security =True";
        public SqlConnection conectarbd = new SqlConnection();

        public conexionbd() 
        {
            conectarbd.ConnectionString = cadena;
        }

        public void abrir() 
        {
            try
            {
                conectarbd.Open();
                Console.WriteLine("Conexión establecida");
            }
            catch (Exception ex) 
            {
                Console.WriteLine("Error al conectar la base de datos "+ ex.Message);
            }
        }

        public void cerrar() 
        {
            conectarbd.Close();
        }


    }
}
