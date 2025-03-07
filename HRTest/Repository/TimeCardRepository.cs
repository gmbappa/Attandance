using Dapper;
using HRTest.Data;
using HRTest.Models;


namespace HRTest.Repository
{
  
    public class TimeCardRepository : ITimeCardRepository
    {   
        private readonly IDataAccessHelper _dataAccessHelper;

        public TimeCardRepository(IDataAccessHelper dataAccessHelper)
        {
            _dataAccessHelper = dataAccessHelper;
        }
        public async Task<List<AttandanceData>> GetAttandanceData(string EmployeeID, DateTime? Date)
        {        
                DynamicParameters parameters = new();
                parameters.Add("EmployeeID", EmployeeID);
                parameters.Add("Date", Date); 
                var output = await _dataAccessHelper.QueryData<AttandanceData, dynamic>("SP_EmployeeTimeCard", parameters);           

            return output;
        }      
       
        public async Task<List<Employee>> GetEmployeeData()
        {
            return await _dataAccessHelper.QueryData<Employee, dynamic>("SP_GetEmployee", new { });
        }      

    }
}
