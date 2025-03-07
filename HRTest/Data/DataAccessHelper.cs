using Microsoft.Data.SqlClient;
using System.Data;
using Dapper;

namespace HRTest.Data
{
    public class DataAccessHelper : IDataAccessHelper
    {
        private readonly IConfiguration _config;

        public DataAccessHelper(IConfiguration config)
        {
            this._config = config;
        }

        public async Task<List<T>> QueryData<T, U>(string storedProcedure, U parameters)
        {
            using (IDbConnection connection = new SqlConnection(_config.GetConnectionString("MSSQL")))
            {
                var rows = await connection.QueryAsync<T>(storedProcedure, parameters, commandType: CommandType.StoredProcedure, commandTimeout: 180);
                return rows.ToList();
            }
        }

        public async Task<int> ExecuteData<T>(string storedProcedure, T parameters)
        {
            using (IDbConnection connection = new SqlConnection(_config.GetConnectionString("MSSQL")))
            {
                return await connection.ExecuteAsync(storedProcedure, parameters, commandType: CommandType.StoredProcedure);
            }
        }
    }
}
