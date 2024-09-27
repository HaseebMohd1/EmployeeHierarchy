using EmployeeHierarchy.Models;
using Microsoft.EntityFrameworkCore;

namespace EmployeeHierarchy.Data;

public class EmployeeRepository
{
    private readonly ApplicationDbContext _context;

    public EmployeeRepository(ApplicationDbContext applicationDbContext)
    {
        _context = applicationDbContext;
    }

    public async Task<List<Employee>> GetEmployeesAsync()
    {
        return await _context.employees.ToListAsync();
    }
}
