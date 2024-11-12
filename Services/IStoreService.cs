using GroceryAPP.Models;

namespace GroceryAPP.Services
{
    public interface IStoreService
    {
        const string DefaultStoreName = "Anywhere";
        Task<ConfigurableStore> GetDefaultStore();
        Task<List<ConfigurableStore>> GetAllAsync();
        Task CreateOrUpdateAsync(ConfigurableStore store);
        Task DeleteAsync(ConfigurableStore store);
        Task DeleteAllAsync();
    }
}
