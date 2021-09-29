using System;
using HospiEnCasa.App.Dominio;
using HospiEnCasa.App.Persistencia;

namespace HospiEnCasa.App.Consola
{
    class Program
    {
        
        private static IRepositorioPaciente _repoPaciente= new RepositorioPaciente(new Persistencia.AppContext());
        static void Main(string[] args)
        {
            Console.WriteLine("Hello World EF!");
            //AddPaciente();
            BuscarPaciente(1);
            //AsignarMedico();
        }

        private static void AddPaciente()
        {
            var paciente = new Paciente
            {
                Nombre = "Carlos",
                Apellidos = "Luna",
                NumeroTelefono = "310396",
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
            Console.WriteLine(paciente.Nombre+" "+paciente.Apellidos+" "+paciente.FechaNacimiento);
        }

        private static void AsignarMedico()
        {
            var medico = _repoPaciente.AsignarMedico(1,2);
            Console.WriteLine(medico.Nombre+" "+medico.Apellidos);
        }
    }
}
