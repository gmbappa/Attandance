using HRTest.Models;

namespace HRTest.Repository
{
    public interface ITimeCardRepository
    {
        Task<List<AttandanceData>> GetAttandanceData(string EmployeeID, DateTime? Date);
        Task<List<Employee>> GetEmployeeData();
    }
}
