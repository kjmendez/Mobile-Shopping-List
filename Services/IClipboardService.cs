using System.Collections.ObjectModel;
using GroceryAPP.Models;

namespace GroceryAPP.Services
{
    public interface IClipboardService
    {
        void InsertFromClipboardAsync(
            ObservableCollection<ConfigurableStore> stores,
            ObservableCollection<Item> items
        );

        void CopyToClipboard(
            ObservableCollection<Item> items,
            ObservableCollection<ConfigurableStore> stores
        );
    }
}
