namespace HRTest.Models
{
    public class MaxPunch
    {
        public int Id { get; set; }
        public int MaxPunchRange { get; set; } = 5; // Default value

        public string? CreatedBy { get; set; }
        public DateTime CreatedDate { get; set; } = DateTime.Now;
        public string? UpdatedBy { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public bool IsDeleted { get; set; } = false;
    }
}
