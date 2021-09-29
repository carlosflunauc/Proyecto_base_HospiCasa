using Microsoft.EntityFrameworkCore;
using HospiEnCasa.App.Dominio;

namespace HospiEnCasa.App.Persistencia
{
    public class AppContext : DbContext
    {
        public DbSet<Persona> Personas { get; set; }
        public DbSet<Paciente> Pacientes { get; set; }
        public DbSet<Medico> Medicos { get; set; }
        public DbSet<Enfermera> Enfermeras { get; set; }
        public DbSet<FamiliarDesignado> FamiliaresDesignados { get; set; }
        public DbSet<SignoVital> SignosVitales { get; set; }
        public DbSet<Historia> Historias { get; set; }
        public DbSet<SugerenciaCuidado> SugerenciasCuidado { get; set; }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder
 //.UseSqlServer("Initial Catalog=HospiEnCasaData; Data Source=192.168.1.72:1433\HOMELUNA; Integrated Security=true");
 .UseSqlServer("Initial Catalog=HospiGrupo6; Data Source=HOMELUNA; Integrated Security=true");
               //.UseSqlServer("Data Source = (localdb)\\HOMELUNA; Initial Catalog =HospiEncasatData");            
             }
        }

    }
}