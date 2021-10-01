using System.Collections.Generic;
using HospiEnCasa.App.Dominio;

namespace HospiEnCasa.App.Persistencia

{
    public interface IRepositorioMedico
    {
         IEnumerable<Medico> GetAllMedicos();
         Medico AddMedico(Medico medico);
         Medico UpdateMedico(Medico medico);
         void DeleteMedico(int idMedico);
         Medico GetMedico(int idMedico); 
    }
}