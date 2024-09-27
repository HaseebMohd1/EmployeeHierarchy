using EmployeeHierarchy.Services;
using Microsoft.AspNetCore.Mvc;

namespace EmployeeHierarchy.Controllers
{
    public class EmployeeController : Controller
    {
        private readonly EmployeeService employeeService;

        public EmployeeController(EmployeeService employeeService)
        {
            this.employeeService = employeeService;
        }
        public async Task<IActionResult> Index()
        {
            var res = await this.employeeService.BuildHierarchy();
            return View(res);
        }
    }
}
