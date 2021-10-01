using System.Collections.Generic;
using HospiEnCasa.App.Dominio;

namespace HospiEnCasa.App.Persistencia//.AppRepositorios
{
    public class RepositorioMedico : IRepositorioMedico
    {
        private readonly AppContext _appContext = new AppContext();

        Medico IRepositorioMedico.AddMedico(Medico medico)
        {
            var medicoAdicionado = _appContext.Medicos.Add(medico);
            _appContext.SaveChanges();

            return medicoAdicionado.Entity;
        }
        void IRepositorioMedico.DeleteMedico(int idMedico)
        {
            var medicoEncontrado = _appContext.Medicos.Find(idMedico);
            if (medicoEncontrado == null)
                return;
            _appContext.Medicos.Remove(medicoEncontrado);
            _appContext.SaveChanges();
            
        }
        IEnumerable<Medico> IRepositorioMedico.GetAllMedicos()
        {
            return _appContext.Medicos;
        }
        Medico IRepositorioMedico.GetMedico(int idMedico)
        {
            return _appContext.Medicos.Find(idMedico);
        }
        Medico IRepositorioMedico.UpdateMedico(Medico medico)
        {
            var medicoEncontrado = _appContext.Medicos.Find(medico.Id);
            if (medicoEncontrado != null)
            {
                medicoEncontrado.Nombre=medico.Nombre;
                medicoEncontrado.Apellidos=medico.Apellidos;
                medicoEncontrado.NumeroTelefono=medico.NumeroTelefono;
                medicoEncontrado.Genero=medico.Genero;
                medicoEncontrado.Especialidad=medico.Especialidad;
                medicoEncontrado.Codigo=medico.Codigo;
                medicoEncontrado.RegistroRethus=medico.RegistroRethus;
                _appContext.SaveChanges();
            }
            return medicoEncontrado;
        }
    }
}