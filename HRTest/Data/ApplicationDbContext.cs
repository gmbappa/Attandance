using HRTest.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace HRTest.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }
      
        public DbSet<MaxPunch> MaxPunch { get; set; }
        public DbSet<Employee> Employee { get; set; }
        public DbSet<EmployeePunch> EmployeePunches { get; set; }         
    }
}
