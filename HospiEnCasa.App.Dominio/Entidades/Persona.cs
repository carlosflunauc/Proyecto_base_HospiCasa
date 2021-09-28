using System.ComponentModel.DataAnnotations;
namespace HospiEnCasa.App.Dominio
{
    public class Persona
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Apellidos { get; set; }
       // [Display(Name = "Numero telefonico")]
        public string NumeroTelefono { get; set; }
        public Genero Genero { set; get; }

    }
}

