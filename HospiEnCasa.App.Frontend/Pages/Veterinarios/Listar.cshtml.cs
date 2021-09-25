using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using HospiEnCasa.App.Dominio;
using HospiEnCasa.App.Persistencia.AppRepositorios;

namespace HospiEnCasa.App.Frontend.Pages
{
    public class ListarModel : PageModel
    {
        private readonly IRepositorioSaludos repositorioSaludos;

        private IEnumerable<Saludo> Saludos {get; set;}

        [BindProperty(SupportsGet =true)]
        public string FiltroBusqueda {get; set;}

        public ListarModel(IRepositorioSaludos repositorioSaludos)
        {
            this.repositorioSaludos= repositorioSaludos;
        }
        public void OnGet(string filtroBusqueda)
        {
            FiltroBusqueda=filtroBusqueda;
            Saludos=repositorioSaludos.GetSaludoPorFiltro(filtroBusqueda);
        }
    }
}
