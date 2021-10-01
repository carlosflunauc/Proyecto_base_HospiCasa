using System.Collections.Generic;
using HospiEnCasa.App.Dominio;

namespace HospiEnCasa.App.Persistencia//.AppRepositorios
{
    public class RepositorioSignoVital :IRepositorioSignoVital
    {
        private readonly AppContext _appContext = new AppContext();
        
        SignoVital IRepositorioSignoVital.AddSignoVital(SignoVital signoVital)
        {
            _appContext.SaveChanges();
             return signoVitalAdicionado.Entity;
        }
        IEnumerable<SignoVital> IRepositorioSignoVital.GetAllSignosVitales()
        {
            return _appContext.SignosVitales;
        }
        SignoVital IRepositorioSignoVital.GetSignoVital(int IdSignoVital)
        {
            return _appContext.SignosVitales.Find(IdSignoVital);
        }
        Paciente IRepositorioSignoVital.AsignarPaciente(int IdSignoVital, int idPaciente)
        {
            var signoVitalEncontrado = _appContext.Paciente.Find(idPaciente);
            if (pacienteEncontrado != null)
            {
                signoVitalEncontrado.Paciente=pacienteEncontrado;
                _appContext.SaveChanges();
            }
            return pacienteEncontrado;
        }
        return null;
    }


}