using System;
using System.Linq;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace webservice_homework_2.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class DateController : Controller
    {
        [HttpGet("GetDays")]
        public int GetDays(DateTime initialDate, DateTime finalDate)
        {
            return (int)(finalDate - initialDate).TotalDays;
        }

        [HttpGet("GetWeeks")]
        public int GetWeeks(DateTime initialDate, DateTime finalDate)
        {
            return (int)(finalDate - initialDate).TotalDays / 7;
        }

        [HttpGet("GetMonths")]
        public int GetMonths(DateTime initialDate, DateTime finalDate)
        {
            return (int)(finalDate.Subtract(initialDate).Days / (365.25 / 12));
        }
    }
}
