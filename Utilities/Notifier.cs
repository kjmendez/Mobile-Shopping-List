using CommunityToolkit.Maui.Alerts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GroceryAPP.Utilities
{
    public static class Notifier
    {
        public static void ShowToast(string message)
        {
            var cancellationTokenSource = new CancellationTokenSource();
            Toast.Make(message).Show(cancellationTokenSource.Token);
        }
    }
}
