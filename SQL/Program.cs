using System;


namespace SQL
{
    class Program
    {
        static void Main(string[] args)
        {
            conexionbd conexion = new conexionbd();
            conexion.abrir();
            conexion.cerrar();


           
        }
    }
}
