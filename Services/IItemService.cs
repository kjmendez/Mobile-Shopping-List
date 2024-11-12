using GroceryAPP.Models;

namespace GroceryAPP.Services
{
    public interface IItemService
    {
        Task<List<Item>> GetAsync();
        Task CreateOrUpdateAsync(Item item);
        Task DeleteAsync(Item item);
        Task DeleteAllAsync();
        Task UpdateAllToDefaultStoreAsync();
        Task UpdateAllUsingStoreAsync(string storeName);
    }
}
