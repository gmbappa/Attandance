using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using HRTest.Repository;

namespace HRTest.Controllers
{
    public class AttandanceController : Controller
    {
       
        private readonly ITimeCardRepository _repository;

        public AttandanceController(ITimeCardRepository repository)
        {           
            _repository = repository;   
        }

        // GET: Employee
        public async Task<IActionResult> Index(string employeeId = null, DateTime? date = null)
        {           
            if (employeeId == null)
                employeeId = "101"; //Default employee ID
            if (date == null)
                date = date ?? DateTime.Parse("2025-03-07");// Default date

            var employees = await _repository.GetEmployeeData();

            ViewBag.SelectEmployeeList = new SelectList(employees, "EmployeeId", "Name");
            ViewBag.SelectedEmployeeId = employeeId; 
            ViewBag.SelectedDate = date?.ToString("yyyy-MM-dd"); 

            var result = await _repository.GetAttandanceData(employeeId, date);          

            return View(result);
        }


    }
}
