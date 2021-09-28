using System;
using System.Collections.Generic;
using HospiEnCasa.App.Dominio;
using HospiEnCasa.App.Persistencia;

namespace HospiEnCasa.App.Consola
{
    class Program
    {
        private static IRepositorioPaciente _repoPaciente = new RepositorioPaciente();
        private static IRepositorioMedico _repoMedico = new RepositorioMedico();
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
            //AddPaciente();
            BuscarPaciente(1);
            //EliminarPaciente(2);
            //MostrarPacientes();
            //AddMedico();
            //AsignarMedico();
        }
        private static void AddPaciente()
        {
            var paciente = new Paciente
            {
                Nombre = "Juanito",
                Apellidos = "Perez",
                NumeroTelefono = "3001645",
                Genero = Genero.Masculino,
                Direccion = "Calle 4 No 7-4",
                Longitud = 5.07062F,
                Latitud = -75.52290F,
                Ciudad = "Manizales",
                FechaNacimiento = new DateTime(1990, 04, 12)
            };
            _repoPaciente.AddPaciente(paciente);
        }
        private static void BuscarPaciente(int idPaciente)
        {
            var paciente = _repoPaciente.GetPaciente(idPaciente);
            Console.WriteLine(paciente.Medico.Nombre);
        }
        private static void EliminarPaciente(int idPaciente)
        {
            _repoPaciente.DeletePaciente(idPaciente);
            Console.WriteLine("paciente Eliminado");
        }
        private static void MostrarPacientes()
        {
            IEnumerable<Paciente> pacientes = _repoPaciente.GetAllPacientes();
            foreach (var paciente in pacientes)
            {
                Console.WriteLine(paciente.Nombre + " " + paciente.Apellidos);
            }
        }
        private static void AddMedico()
        {
            var medico = new Medico
            {
                Nombre = "Juliana",
                Apellidos = "Lopez",
                NumeroTelefono = "3001645",
                Genero = Genero.Femenino,
                Especialidad = "Internista",
                Codigo = "2535",
                RegistroRethus = "34567"
            };
            _repoMedico.AddMedico(medico);
        }

        private static void AsignarMedico()
        {
            var medico = _repoPaciente.AsignarMedico(1, 5);
            Console.WriteLine(medico.Nombre + " " + medico.Apellidos);
        }
    }
}
