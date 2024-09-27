using EmployeeHierarchy.Models;
using Microsoft.EntityFrameworkCore;

namespace EmployeeHierarchy.Data;

public class ApplicationDbContext : DbContext
{
    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
    {
        
    }

    public DbSet<Employee> employees { get; set; }
}
