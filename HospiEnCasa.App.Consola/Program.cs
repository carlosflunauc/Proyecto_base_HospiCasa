using System;
using HospiEnCasa.App.Dominio;
using HospiEnCasa.App.Persistencia;
using System.Collections.Generic;

namespace HospiEnCasa.App.Consola
{
    class Program
    {
        private static IRepositorioPaciente _repoPaciente= new RepositorioPaciente(new Persistencia.AppContext());
        private static IRepositorioMedico _repoMedico = new RepositorioMedico();
        private static IRepositorioSignoVital _repoSignoVital= new RepositorioSignoVital();
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World EF!");
            //AddPaciente();
            //BuscarPaciente(1);
            //EliminarPaciente(1);
            //MostrarPacientes();
            //AsignarMedico();
            //AddMedico();
        }

        private static void AddPaciente()
        {
            var paciente = new Paciente
            {
                Nombre = "Pepito Antonio",
                Apellidos = "Perez Hurtado",
                NumeroTelefono = "300456",
                Genero = Genero.Masculino,
                Direccion = "Calle 5 No 6-7",
                Longitud = 5.07062F,
                Latitud = -75.52290F,
                Ciudad = "Manizales",
                FechaNacimiento = new DateTime(1985, 05, 19)
            };
            _repoPaciente.AddPaciente(paciente);
        }

        private static void BuscarPaciente(int idPaciente)
        {
            var paciente = _repoPaciente.GetPaciente(idPaciente);
            Console.WriteLine(paciente.Nombre+" "+paciente.Apellidos);
        }
        private static void EliminarPaciente(int idPaciente)
        {
            _repoPaciente.DeletePaciente(idPaciente);
            Console.WriteLine("Paciente Eliminado");
        }
        private static void MostrarPacientes()
        {
            IEnumerable<Paciente> pacientes =_repoPaciente.GetAllPacientes();
            foreach (var paciente in pacientes)
            {
                Console.WriteLine(paciente.Nombre+" "+paciente.Apellidos);
            }
        }
        private static void AddMedico()
        {
            var medico= new Medico
            {
                Nombre="Antonia",
                Apellidos="Perez",
                NumeroTelefono="3456789",
                Genero=Genero.Femenino,
                Especialidad="Ortopedista",
                Codigo="1234",
                RegistroRethus="9876"
            };
            _repoMedico.AddMedico(medico);
        }

        private static void AsignarMedico()
        {
            var medico = _repoPaciente.AsignarMedico(3,5);
            Console.WriteLine(medico.Nombre+" "+medico.Apellidos);
        }
        private static void AddSignoVital()
        {
            var signoVital = new signoVital
            {
                FechaHora = new DateTime(2021,10,01),
                Valor=36.5F,
                Signo = TipoSigno.TemperaturaCorporal
            };
            _repoSignoVital.AddSignoVital(signoVital);
        }
        private static void AsignarSignoVital()
        {
            var signoVital = _repoPaciente.AddSignoVital(3,1);
            Console.WriteLine(signoVital.Signo +" "+SignoVital.Valor);
        }
        private static void AsignarPaciente()
        {
            var paciente = _repoSignoVital.AsignarPaciente(3,4);
            Console.WriteLine(paciente.Nombre+" "+paciente.Apellidos);
        }
    }
}
