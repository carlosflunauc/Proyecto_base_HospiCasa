using System.Runtime.InteropServices;
using System.Collections.Generic;
using HospiEnCasa.App.Dominio;

namespace HospiEnCasa.App.Persistencia.AppRepositorios
{
    public class RepositorioSaludosMemoria : IRepositorioSaludos    
    {
        List<Saludo> saludos;

        public RepositorioSaludosMemoria()
        {
            saludos = new List<Saludo>()
            {
                new Saludo{Id=1,EnEspanol="Buenos Dias",EnIngles="Good Morning",EnItaliano="Bungiorno"},
                new Saludo{Id=2,EnEspanol="Buenas Tardes",EnIngles="Good Afternoon",EnItaliano="Buon Pomeriggio"},
                new Saludo{Id=3,EnEspanol="Buenas Noches",EnIngles="Good Evening",EnItaliano="Buona Notte"}
            };
        }
        public IEnumerable<Saludo> GetAll()
        {
            return saludos;
        }
        public Saludo GetSaludoPorId(int saludoId)
        {
            return saludos.SingleOrDefault(s=> s.Id==saludoID);
        }
        public IEnumerable<Saludo> GetSaludoPorFiltro(string filtro=null){
            var saludos = GetAll();
            if (saludos != null)
            {
                
            }
        }
    }
}