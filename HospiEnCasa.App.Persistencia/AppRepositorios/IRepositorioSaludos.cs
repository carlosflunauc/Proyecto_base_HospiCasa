using System.Collections.Generic;
using HospiEnCasa.App.Dominio;

namespace HospiEnCasa.App.Persistencia.AppRepositorios
{
    public interface IRepositorioSaludos
    {
        IEnumerable<Saludo> GetAll();
        IEnumerable<Saludo> GetSaludosPorFiltro(string filtro);
        Saludo GetSaludoPorId(int SaludoID);
         /*Saludo Update(Saludo saludoActualizado);
         Saludo Add(Saludo nuevoSaludo); */
    }
}