using System.ComponentModel.DataAnnotations.Schema;

namespace EmployeeHierarchy.Models;

public class Employee
{
    [Column("id")]
    public int Id { get; set; }

    [Column("name")]
    public string Name { get; set; } = string.Empty;

    [Column("employee_id")]
    public string EmployeeId { get; set; } = string.Empty;

    [Column("designation")]
    public string Designation { get; set; } = string.Empty;

    [Column("department")]
    public string Department { get; set; } = string.Empty;

    [Column("manager_id")]
    public string? ManagerId { get; set; }
    [NotMapped]
    public List<Employee> Subordinates { get; set; } = new();
}
