using System.Collections.Generic;
using HospiEnCasa.App.Dominio;

namespace HospiEnCasa.App.Persistencia.AppRepositorios
{
    public interface IRepositorioSaludos
    {
         IEnumerable<Saludo> GetAll();
         
    }
}