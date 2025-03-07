using Microsoft.EntityFrameworkCore.Metadata.Internal;

namespace HRTest.Models
{
    public class Employee
    {
        public int Id { get; set; }        
        public string EmployeeId { get; set; } = string.Empty; // Primary Key
        public string Name { get; set; } = string.Empty;

        public string? CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; } = DateTime.Now;
        public string? UpdatedBy { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public bool IsDeleted { get; set; } = false;
    }
}
