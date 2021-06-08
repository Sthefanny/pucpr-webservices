using System.Text.RegularExpressions;
using Microsoft.AspNetCore.Mvc;

namespace webservice_homework_2.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class MimifierController : ControllerBase
    {
        [HttpGet("Mimify")]
        public string Mimify(string text)
        {
            var regex = "[aeiouAEIOUáéíóúÁÉÍÓÚâêîôûÂÊÎÔÛ]";
           return Regex.Replace(text, regex, "i");
        }
    }
}
