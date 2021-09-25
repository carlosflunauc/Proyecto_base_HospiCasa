using System.Collections.Generic;
using HospiEnCasa.App.Dominio;

namespace HospiEnCasa.App.Persistencia.AppRepositorios
{
    public interface IRepositorioSaludos
    {
         IEnumerable<Saludo> GetAll();
         IEnumerable<Saludo> GetSaludoPorFiltro(string filtro);
         Saludo GetSaludoPorId(int saludoID);
         /*
         Saludo Update(Saludo saludoActualizado);
         Saludo Add(Saludo nuevoSaludo);
         */
         
    }
}