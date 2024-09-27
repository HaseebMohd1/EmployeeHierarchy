using EmployeeHierarchy.Data;
using EmployeeHierarchy.Models;

namespace EmployeeHierarchy.Services
{
    public class EmployeeService
    {
        private readonly EmployeeRepository _repository;

        public EmployeeService(EmployeeRepository employeeRepository)
        {
            _repository = employeeRepository;
        }

        public async Task<List<Employee>> BuildHierarchy()
        {
            var allEmployees = await _repository.GetEmployeesAsync();
            var employeeDict = allEmployees.ToDictionary(e => e.EmployeeId);


            foreach (var item in allEmployees)
            {
                if ( item.ManagerId != null && employeeDict.ContainsKey(item.ManagerId) )
                {
                    employeeDict[item.ManagerId].Subordinates.Add(item);
                }
            }

            // only return employees who don't have a manager (i.e., top-level employees)
            return allEmployees.Where(e => e.ManagerId == null).ToList();

        }


    }
}
