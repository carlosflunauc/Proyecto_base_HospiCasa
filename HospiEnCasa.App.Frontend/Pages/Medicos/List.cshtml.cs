using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace HospiEnCasa.App.Frontend.Pages
{
    public class ListModel : PageModel
    {
        private string[] medicos ={"Dr Pepito Perez","Dra Maria Felix","Dr Chapatin"};

        public List<string> ListaMedicos {get; set;}

        public void OnGet()
        {
            ListaMedicos = new List<string>();
            ListaMedicos.AddRange(medicos);
        }
    }
}
