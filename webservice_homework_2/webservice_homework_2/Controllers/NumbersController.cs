using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace webservice_homework_2.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class NumbersController : Controller
    {
        [HttpGet("GetAscendingOrder")]
        public string GetAscendingOrder(string numbersAsString)
        {
            string[] numbers = numbersAsString.Split(';');

            var result = numbers.OrderBy(i => i);

            return string.Join(";", result);
        }

        [HttpGet("GetDescendingOrder")]
        public string GetDescendingOrder(string numbersAsString)
        {
            string[] numbers = numbersAsString.Split(';');

            var result = numbers.OrderByDescending(i => i);

            return string.Join(";", result);
        }

        [HttpGet("GetEven")]
        public string GetEven(string numbersAsString)
        {
            string[] numbers = numbersAsString.Split(';');

            var OddEven = new List<int>();

            foreach (var i in numbers)
                OddEven.Add(int.Parse(i.ToString()));

            var even = new List<int>();

            foreach (int i in OddEven)
            {
                if (i % 2 == 0)
                    even.Add(i);
            }

            return string.Join(";", even);
        }
    }
}
