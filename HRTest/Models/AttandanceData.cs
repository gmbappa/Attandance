namespace HRTest.Models
{
    public class AttandanceData
    {
        public string EmployeeId { get; set; } = string.Empty;
        public string Name { get; set; } = string.Empty;
        public string Date { get; set; } 
        public DateTime InTime { get; set; }
        public DateTime OutTime { get; set; }
        public int WorkingMinutes { get; set; }
        public int OutOfOfficeMinutes { get; set; }

    }
}
