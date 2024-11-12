using CommunityToolkit.Mvvm.ComponentModel;
using GroceryAPP.Utilities;

namespace GroceryAPP.Models
{
    public partial class Theme : ObservableObject
    {
        [ObservableProperty]
        private Settings.Theme _name;

        public override string ToString()
        {
            return Name.ToString();
        }
    }
}
