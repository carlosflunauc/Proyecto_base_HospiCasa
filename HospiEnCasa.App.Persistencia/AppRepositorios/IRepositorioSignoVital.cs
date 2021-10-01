using System.Collections.Generic;
using HospiEnCasa.App.Dominio;

namespace HospiEnCasa.App.Persistencia//.AppRepositorios
{
    public interface IRepositorioSignoVital
    {
         IEnumerable<SignoVital> GetAllSignosVitales();
         SignoVital AddSignoVital(SignoVital signoVital);
         SignoVital GetSignoVital(int IdSignoVital);
         Paciente AsignarPaciente(int IdSignoVital, int idPaciente);
    }
}