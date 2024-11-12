using SQLite;

namespace GroceryAPP.Services
{
    public interface IDatabaseProvider
    {
        Task<SQLiteAsyncConnection> GetConnection();
    }
}
