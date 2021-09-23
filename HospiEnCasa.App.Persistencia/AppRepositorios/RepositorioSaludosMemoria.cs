using System.Collections.Generic;
using HospiEnCasa.App.Dominio;

namespace HospiEnCasa.App.Persistencia.AppRepositorios
{
    public class RepositorioSaludosMemoria : IRepositorioSaludos
    {
        List<Saludo> saludos;

        public RepositorioSaludosMemoria()
        {
            saludos= new List<Saludo>()
            {
                new Saludo{Id=11, EnEspanol"Buenos Dias",EnIngles="Good Morning",EnItaliano="Buon giorno"}
            }
        }
        public IEnumerable<Saludo> GewAll()
        {
            throw new System.NotImplementedException();
        }
    }
}