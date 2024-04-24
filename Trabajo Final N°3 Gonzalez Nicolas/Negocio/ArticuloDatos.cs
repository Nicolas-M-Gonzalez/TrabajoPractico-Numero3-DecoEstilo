using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominios;
using AccesoaDatosArticulo;

namespace Negocio
{
    public class ArticuloDatos
    {
        public List<Articulo> listarconsp()
        {
            List<Articulo> Lista = new List<Articulo>(); //genero la lista.

            AccesoaDatos datos = new AccesoaDatos(); //genero el objeto acceso a datos.

            try
            {
                //string consulta = "select numero,nombre, P.descripcion,urlimagen, E.Descripcion Tipo, D.Descripcion Debilidad, P.IdTipo, P.IdDebilidad, P.Id  from POKEMONS P,ELEMENTOS E, ELEMENTOS D where E.Id = P.IdTipo And D.Id = P.IdDebilidad and P.activo = 1";
                //le paso la consulta.
                //datos.setearconsulta(consulta);
                datos.setearconsultaconsp("ListaArticulo");
                datos.ejecutarlectura();

                while (datos.Lector.Read())
                {
                    //se va a fijar si hay una lectura; si la hay ? te posiciona en la primera fila.

                    Articulo aux = new Articulo();
                    //creamos el objeto y lo cargamos.

                    aux.Id = (int)datos.Lector["Id"];

                    aux.Codigo = (string)datos.Lector["Codigo"];
                    aux.Nombre = (string)datos.Lector["Nombre"];

                    if (!(datos.Lector["ImagenUrl"] is DBNull))
                        aux.Imagen = (string)datos.Lector["ImagenUrl"];

                    aux.Descripcion = (string)datos.Lector["Descripcion"];

                    aux.Marca = new Elemento();
                    //creamos el objeto tipo de tipo elemento.
                    aux.Marca.Id = (int)datos.Lector["IdMarca"];

                    aux.Marca.Descripcion = (string)datos.Lector["Marca"];
                    //le pedimos estos datos

                    aux.Categoria = new Elemento();
                    //creamos el objeto debilidad de tipo elemento.
                    aux.Categoria.Id = (int)datos.Lector["IdCategoria"];
                    aux.Categoria.Descripcion = (string)datos.Lector["Categoria"];



                    //le pedimos estos datos.

                    //carga los datos de la base de datos


                    Lista.Add(aux); //leo la lista y la guardo en el objeto lista.

                }


                datos.cerrarconexion();
                //cierro la conexion.
                return Lista;
                //devuelve una lista.



            }

            catch (Exception ex)
            {
                throw ex;
            }

        }

    }
}
    
