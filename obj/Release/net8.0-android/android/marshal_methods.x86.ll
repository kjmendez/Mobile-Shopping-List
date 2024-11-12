; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [130 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [260 x i32] [
	i32 42639949, ; 0: System.Threading.Thread => 0x28aa24d => 120
	i32 67008169, ; 1: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 2: Microsoft.Maui.Graphics.dll => 0x44bb714 => 52
	i32 117431740, ; 3: System.Runtime.InteropServices => 0x6ffddbc => 115
	i32 165246403, ; 4: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 62
	i32 182336117, ; 5: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 80
	i32 195452805, ; 6: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 7: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 8: System.ComponentModel => 0xc38ff48 => 93
	i32 246610117, ; 9: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 113
	i32 280992041, ; 10: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 11: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 12: Xamarin.AndroidX.Activity.dll => 0x13031348 => 58
	i32 336156722, ; 13: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 14: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 69
	i32 347068432, ; 15: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 56
	i32 356389973, ; 16: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 367780167, ; 17: System.IO.Pipes => 0x15ebe147 => 100
	i32 379916513, ; 18: System.Threading.Thread.dll => 0x16a510e1 => 120
	i32 385762202, ; 19: System.Memory.dll => 0x16fe439a => 103
	i32 395744057, ; 20: _Microsoft.Android.Resource.Designer => 0x17969339 => 34
	i32 435591531, ; 21: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 22: System.Collections => 0x1a61054f => 90
	i32 450948140, ; 23: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 68
	i32 456227837, ; 24: System.Web.HttpUtility.dll => 0x1b317bfd => 122
	i32 469710990, ; 25: System.dll => 0x1bff388e => 124
	i32 498788369, ; 26: System.ObjectModel => 0x1dbae811 => 110
	i32 500358224, ; 27: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 28: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 29: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 46
	i32 539058512, ; 30: Microsoft.Extensions.Logging => 0x20216150 => 43
	i32 563727039, ; 31: GroceryAPP.dll => 0x2199cabf => 86
	i32 592146354, ; 32: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 597488923, ; 33: CommunityToolkit.Maui => 0x239cf51b => 36
	i32 627609679, ; 34: Xamarin.AndroidX.CustomView => 0x2568904f => 66
	i32 627931235, ; 35: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 672442732, ; 36: System.Collections.Concurrent => 0x2814a96c => 87
	i32 688181140, ; 37: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 706645707, ; 38: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 39: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 40: System.Runtime.Loader.dll => 0x2b15ed29 => 116
	i32 748832960, ; 41: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 54
	i32 759454413, ; 42: System.Net.Requests => 0x2d445acd => 107
	i32 762598435, ; 43: System.IO.Pipes.dll => 0x2d745423 => 100
	i32 775507847, ; 44: System.IO.Compression => 0x2e394f87 => 99
	i32 777317022, ; 45: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 46: Microsoft.Extensions.Options => 0x2f0980eb => 45
	i32 823281589, ; 47: System.Private.Uri.dll => 0x311247b5 => 111
	i32 830298997, ; 48: System.IO.Compression.Brotli => 0x317d5b75 => 98
	i32 904024072, ; 49: System.ComponentModel.Primitives.dll => 0x35e25008 => 91
	i32 926902833, ; 50: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 967690846, ; 51: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 69
	i32 992768348, ; 52: System.Collections.dll => 0x3b2c715c => 90
	i32 1012816738, ; 53: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 79
	i32 1028951442, ; 54: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 42
	i32 1029334545, ; 55: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 56: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 59
	i32 1044663988, ; 57: System.Linq.Expressions.dll => 0x3e444eb4 => 101
	i32 1052210849, ; 58: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 71
	i32 1082857460, ; 59: System.ComponentModel.TypeConverter => 0x408b17f4 => 92
	i32 1084122840, ; 60: Xamarin.Kotlin.StdLib => 0x409e66d8 => 84
	i32 1098259244, ; 61: System => 0x41761b2c => 124
	i32 1118262833, ; 62: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1168523401, ; 63: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 64: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 76
	i32 1203215381, ; 65: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1208641965, ; 66: System.Diagnostics.Process => 0x480a69ad => 96
	i32 1214827643, ; 67: CommunityToolkit.Mvvm => 0x4868cc7b => 38
	i32 1234928153, ; 68: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1260983243, ; 69: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1292207520, ; 70: SQLitePCLRaw.core.dll => 0x4d0585a0 => 55
	i32 1293217323, ; 71: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 67
	i32 1324164729, ; 72: System.Linq => 0x4eed2679 => 102
	i32 1373134921, ; 73: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 74: Xamarin.AndroidX.SavedState => 0x52114ed3 => 79
	i32 1406073936, ; 75: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 63
	i32 1430672901, ; 76: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1461004990, ; 77: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 78: System.Collections.Immutable.dll => 0x5718a9ef => 88
	i32 1462112819, ; 79: System.IO.Compression.dll => 0x57261233 => 99
	i32 1469204771, ; 80: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 60
	i32 1470490898, ; 81: Microsoft.Extensions.Primitives => 0x57a5e912 => 46
	i32 1479771757, ; 82: System.Collections.Immutable => 0x5833866d => 88
	i32 1480492111, ; 83: System.IO.Compression.Brotli.dll => 0x583e844f => 98
	i32 1493001747, ; 84: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 85: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 86: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 119
	i32 1551623176, ; 87: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1622152042, ; 88: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 73
	i32 1624863272, ; 89: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 82
	i32 1634654947, ; 90: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 37
	i32 1636350590, ; 91: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 65
	i32 1639515021, ; 92: System.Net.Http.dll => 0x61b9038d => 104
	i32 1639986890, ; 93: System.Text.RegularExpressions => 0x61c036ca => 119
	i32 1657153582, ; 94: System.Runtime => 0x62c6282e => 117
	i32 1658251792, ; 95: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 83
	i32 1677501392, ; 96: System.Net.Primitives.dll => 0x63fca3d0 => 106
	i32 1679769178, ; 97: System.Security.Cryptography => 0x641f3e5a => 118
	i32 1711441057, ; 98: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 56
	i32 1729485958, ; 99: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 61
	i32 1736233607, ; 100: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 101: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1763938596, ; 102: System.Diagnostics.TraceSource.dll => 0x69239124 => 97
	i32 1766324549, ; 103: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 80
	i32 1770582343, ; 104: Microsoft.Extensions.Logging.dll => 0x6988f147 => 43
	i32 1780572499, ; 105: Mono.Android.Runtime.dll => 0x6a216153 => 128
	i32 1782862114, ; 106: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 107: Xamarin.AndroidX.Fragment => 0x6a96652d => 68
	i32 1793755602, ; 108: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 109: Xamarin.AndroidX.Loader => 0x6bcd3296 => 73
	i32 1813058853, ; 110: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 84
	i32 1813201214, ; 111: Xamarin.Google.Android.Material => 0x6c13413e => 83
	i32 1818569960, ; 112: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 77
	i32 1828688058, ; 113: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 44
	i32 1842015223, ; 114: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 115: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 116: System.Linq.Expressions => 0x6ec71a65 => 101
	i32 1875935024, ; 117: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1910275211, ; 118: System.Collections.NonGeneric.dll => 0x71dc7c8b => 89
	i32 1968388702, ; 119: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 39
	i32 1968499395, ; 120: AsyncAwaitBestPractices => 0x7554eac3 => 35
	i32 2003115576, ; 121: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2008881842, ; 122: GroceryAPP => 0x77bd1ab2 => 86
	i32 2019465201, ; 123: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 71
	i32 2025202353, ; 124: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 125: System.Private.Xml => 0x79eb68ee => 112
	i32 2055257422, ; 126: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 70
	i32 2066184531, ; 127: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 128: System.Diagnostics.TraceSource => 0x7b6f419e => 97
	i32 2079903147, ; 129: System.Runtime.dll => 0x7bf8cdab => 117
	i32 2090596640, ; 130: System.Numerics.Vectors => 0x7c9bf920 => 109
	i32 2103459038, ; 131: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 57
	i32 2127167465, ; 132: System.Console => 0x7ec9ffe9 => 94
	i32 2159891885, ; 133: Microsoft.Maui => 0x80bd55ad => 50
	i32 2169148018, ; 134: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 135: Microsoft.Extensions.Options.dll => 0x820d22b3 => 45
	i32 2192057212, ; 136: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 44
	i32 2193016926, ; 137: System.ObjectModel.dll => 0x82b6c85e => 110
	i32 2201107256, ; 138: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 85
	i32 2201231467, ; 139: System.Net.Http => 0x8334206b => 104
	i32 2207618523, ; 140: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 141: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 40
	i32 2270573516, ; 142: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 143: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 78
	i32 2295906218, ; 144: System.Net.Sockets => 0x88d8bfaa => 108
	i32 2298471582, ; 145: System.Net.Mail => 0x88ffe49e => 105
	i32 2303942373, ; 146: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 147: System.Private.CoreLib.dll => 0x896b7878 => 126
	i32 2340441535, ; 148: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 114
	i32 2353062107, ; 149: System.Net.Primitives => 0x8c40e0db => 106
	i32 2368005991, ; 150: System.Xml.ReaderWriter.dll => 0x8d24e767 => 123
	i32 2371007202, ; 151: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 39
	i32 2395872292, ; 152: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 153: System.Web.HttpUtility => 0x8f24faee => 122
	i32 2427813419, ; 154: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 155: System.Console.dll => 0x912896e5 => 94
	i32 2458678730, ; 156: System.Net.Sockets.dll => 0x928c75ca => 108
	i32 2465273461, ; 157: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 54
	i32 2471841756, ; 158: netstandard.dll => 0x93554fdc => 125
	i32 2475788418, ; 159: Java.Interop.dll => 0x93918882 => 127
	i32 2480646305, ; 160: Microsoft.Maui.Controls => 0x93dba8a1 => 48
	i32 2538310050, ; 161: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 113
	i32 2550873716, ; 162: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2593496499, ; 163: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 164: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 85
	i32 2617129537, ; 165: System.Private.Xml.dll => 0x9bfe3a41 => 112
	i32 2620871830, ; 166: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 65
	i32 2626831493, ; 167: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 168: System.Runtime.Loader => 0x9ec4cf01 => 116
	i32 2732626843, ; 169: Xamarin.AndroidX.Activity => 0xa2e0939b => 58
	i32 2737747696, ; 170: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 60
	i32 2752995522, ; 171: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 172: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 49
	i32 2764765095, ; 173: Microsoft.Maui.dll => 0xa4caf7a7 => 50
	i32 2778768386, ; 174: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 81
	i32 2785988530, ; 175: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 176: Microsoft.Maui.Graphics => 0xa7008e0b => 52
	i32 2806116107, ; 177: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 178: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 63
	i32 2831556043, ; 179: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2853208004, ; 180: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 81
	i32 2861189240, ; 181: Microsoft.Maui.Essentials => 0xaa8a4878 => 51
	i32 2868488919, ; 182: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 37
	i32 2909740682, ; 183: System.Private.CoreLib => 0xad6f1e8a => 126
	i32 2916838712, ; 184: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 82
	i32 2919462931, ; 185: System.Numerics.Vectors.dll => 0xae037813 => 109
	i32 2959614098, ; 186: System.ComponentModel.dll => 0xb0682092 => 93
	i32 2978675010, ; 187: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 67
	i32 3038032645, ; 188: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 34
	i32 3057625584, ; 189: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 74
	i32 3059408633, ; 190: Mono.Android.Runtime => 0xb65adef9 => 128
	i32 3059793426, ; 191: System.ComponentModel.Primitives => 0xb660be12 => 91
	i32 3077302341, ; 192: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3178803400, ; 193: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 75
	i32 3220365878, ; 194: System.Threading => 0xbff2e236 => 121
	i32 3258312781, ; 195: Xamarin.AndroidX.CardView => 0xc235e84d => 61
	i32 3286872994, ; 196: SQLite-net.dll => 0xc3e9b3a2 => 53
	i32 3305363605, ; 197: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 198: System.Net.Requests.dll => 0xc5b097e4 => 107
	i32 3317135071, ; 199: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 66
	i32 3346324047, ; 200: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 76
	i32 3357674450, ; 201: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3360279109, ; 202: SQLitePCLRaw.core => 0xc849ca45 => 55
	i32 3362522851, ; 203: Xamarin.AndroidX.Core => 0xc86c06e3 => 64
	i32 3366347497, ; 204: Java.Interop => 0xc8a662e9 => 127
	i32 3374999561, ; 205: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 78
	i32 3381016424, ; 206: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3428513518, ; 207: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 41
	i32 3430777524, ; 208: netstandard => 0xcc7d82b4 => 125
	i32 3452344032, ; 209: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 47
	i32 3463511458, ; 210: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 211: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 92
	i32 3476120550, ; 212: Mono.Android => 0xcf3163e6 => 129
	i32 3479583265, ; 213: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 214: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3580758918, ; 215: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 216: System.Linq.dll => 0xd715a361 => 102
	i32 3624195450, ; 217: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 114
	i32 3641597786, ; 218: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 70
	i32 3643446276, ; 219: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 220: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 75
	i32 3657292374, ; 221: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 40
	i32 3672681054, ; 222: Mono.Android.dll => 0xdae8aa5e => 129
	i32 3697841164, ; 223: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 224: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 74
	i32 3748608112, ; 225: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 95
	i32 3754567612, ; 226: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 57
	i32 3786282454, ; 227: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 62
	i32 3792276235, ; 228: System.Collections.NonGeneric => 0xe2098b0b => 89
	i32 3793321889, ; 229: AsyncAwaitBestPractices.dll => 0xe2197fa1 => 35
	i32 3800979733, ; 230: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 47
	i32 3817368567, ; 231: CommunityToolkit.Maui.dll => 0xe3886bf7 => 36
	i32 3823082795, ; 232: System.Security.Cryptography.dll => 0xe3df9d2b => 118
	i32 3841636137, ; 233: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 42
	i32 3844307129, ; 234: System.Net.Mail.dll => 0xe52378b9 => 105
	i32 3849253459, ; 235: System.Runtime.InteropServices.dll => 0xe56ef253 => 115
	i32 3876362041, ; 236: SQLite-net => 0xe70c9739 => 53
	i32 3889960447, ; 237: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 238: System.Collections.Concurrent.dll => 0xe839deed => 87
	i32 3896760992, ; 239: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 64
	i32 3928044579, ; 240: System.Xml.ReaderWriter => 0xea213423 => 123
	i32 3931092270, ; 241: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 77
	i32 3955647286, ; 242: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 59
	i32 3980434154, ; 243: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3987592930, ; 244: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4003436829, ; 245: System.Diagnostics.Process.dll => 0xee9f991d => 96
	i32 4025784931, ; 246: System.Memory => 0xeff49a63 => 103
	i32 4046471985, ; 247: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 49
	i32 4073602200, ; 248: System.Threading.dll => 0xf2ce3c98 => 121
	i32 4094352644, ; 249: Microsoft.Maui.Essentials.dll => 0xf40add04 => 51
	i32 4100113165, ; 250: System.Private.Uri => 0xf462c30d => 111
	i32 4102112229, ; 251: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 252: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 253: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 41
	i32 4150914736, ; 254: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4182413190, ; 255: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 72
	i32 4213026141, ; 256: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 95
	i32 4271975918, ; 257: Microsoft.Maui.Controls.dll => 0xfea12dee => 48
	i32 4274623895, ; 258: CommunityToolkit.Mvvm.dll => 0xfec99597 => 38
	i32 4292120959 ; 259: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 72
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [260 x i32] [
	i32 120, ; 0
	i32 33, ; 1
	i32 52, ; 2
	i32 115, ; 3
	i32 62, ; 4
	i32 80, ; 5
	i32 30, ; 6
	i32 31, ; 7
	i32 93, ; 8
	i32 113, ; 9
	i32 2, ; 10
	i32 30, ; 11
	i32 58, ; 12
	i32 15, ; 13
	i32 69, ; 14
	i32 56, ; 15
	i32 14, ; 16
	i32 100, ; 17
	i32 120, ; 18
	i32 103, ; 19
	i32 34, ; 20
	i32 26, ; 21
	i32 90, ; 22
	i32 68, ; 23
	i32 122, ; 24
	i32 124, ; 25
	i32 110, ; 26
	i32 13, ; 27
	i32 7, ; 28
	i32 46, ; 29
	i32 43, ; 30
	i32 86, ; 31
	i32 21, ; 32
	i32 36, ; 33
	i32 66, ; 34
	i32 19, ; 35
	i32 87, ; 36
	i32 1, ; 37
	i32 16, ; 38
	i32 4, ; 39
	i32 116, ; 40
	i32 54, ; 41
	i32 107, ; 42
	i32 100, ; 43
	i32 99, ; 44
	i32 25, ; 45
	i32 45, ; 46
	i32 111, ; 47
	i32 98, ; 48
	i32 91, ; 49
	i32 28, ; 50
	i32 69, ; 51
	i32 90, ; 52
	i32 79, ; 53
	i32 42, ; 54
	i32 3, ; 55
	i32 59, ; 56
	i32 101, ; 57
	i32 71, ; 58
	i32 92, ; 59
	i32 84, ; 60
	i32 124, ; 61
	i32 16, ; 62
	i32 22, ; 63
	i32 76, ; 64
	i32 20, ; 65
	i32 96, ; 66
	i32 38, ; 67
	i32 18, ; 68
	i32 2, ; 69
	i32 55, ; 70
	i32 67, ; 71
	i32 102, ; 72
	i32 32, ; 73
	i32 79, ; 74
	i32 63, ; 75
	i32 0, ; 76
	i32 6, ; 77
	i32 88, ; 78
	i32 99, ; 79
	i32 60, ; 80
	i32 46, ; 81
	i32 88, ; 82
	i32 98, ; 83
	i32 10, ; 84
	i32 5, ; 85
	i32 119, ; 86
	i32 25, ; 87
	i32 73, ; 88
	i32 82, ; 89
	i32 37, ; 90
	i32 65, ; 91
	i32 104, ; 92
	i32 119, ; 93
	i32 117, ; 94
	i32 83, ; 95
	i32 106, ; 96
	i32 118, ; 97
	i32 56, ; 98
	i32 61, ; 99
	i32 23, ; 100
	i32 1, ; 101
	i32 97, ; 102
	i32 80, ; 103
	i32 43, ; 104
	i32 128, ; 105
	i32 17, ; 106
	i32 68, ; 107
	i32 9, ; 108
	i32 73, ; 109
	i32 84, ; 110
	i32 83, ; 111
	i32 77, ; 112
	i32 44, ; 113
	i32 29, ; 114
	i32 26, ; 115
	i32 101, ; 116
	i32 8, ; 117
	i32 89, ; 118
	i32 39, ; 119
	i32 35, ; 120
	i32 5, ; 121
	i32 86, ; 122
	i32 71, ; 123
	i32 0, ; 124
	i32 112, ; 125
	i32 70, ; 126
	i32 4, ; 127
	i32 97, ; 128
	i32 117, ; 129
	i32 109, ; 130
	i32 57, ; 131
	i32 94, ; 132
	i32 50, ; 133
	i32 12, ; 134
	i32 45, ; 135
	i32 44, ; 136
	i32 110, ; 137
	i32 85, ; 138
	i32 104, ; 139
	i32 14, ; 140
	i32 40, ; 141
	i32 8, ; 142
	i32 78, ; 143
	i32 108, ; 144
	i32 105, ; 145
	i32 18, ; 146
	i32 126, ; 147
	i32 114, ; 148
	i32 106, ; 149
	i32 123, ; 150
	i32 39, ; 151
	i32 13, ; 152
	i32 122, ; 153
	i32 10, ; 154
	i32 94, ; 155
	i32 108, ; 156
	i32 54, ; 157
	i32 125, ; 158
	i32 127, ; 159
	i32 48, ; 160
	i32 113, ; 161
	i32 11, ; 162
	i32 20, ; 163
	i32 85, ; 164
	i32 112, ; 165
	i32 65, ; 166
	i32 15, ; 167
	i32 116, ; 168
	i32 58, ; 169
	i32 60, ; 170
	i32 21, ; 171
	i32 49, ; 172
	i32 50, ; 173
	i32 81, ; 174
	i32 27, ; 175
	i32 52, ; 176
	i32 6, ; 177
	i32 63, ; 178
	i32 19, ; 179
	i32 81, ; 180
	i32 51, ; 181
	i32 37, ; 182
	i32 126, ; 183
	i32 82, ; 184
	i32 109, ; 185
	i32 93, ; 186
	i32 67, ; 187
	i32 34, ; 188
	i32 74, ; 189
	i32 128, ; 190
	i32 91, ; 191
	i32 12, ; 192
	i32 75, ; 193
	i32 121, ; 194
	i32 61, ; 195
	i32 53, ; 196
	i32 7, ; 197
	i32 107, ; 198
	i32 66, ; 199
	i32 76, ; 200
	i32 24, ; 201
	i32 55, ; 202
	i32 64, ; 203
	i32 127, ; 204
	i32 78, ; 205
	i32 3, ; 206
	i32 41, ; 207
	i32 125, ; 208
	i32 47, ; 209
	i32 11, ; 210
	i32 92, ; 211
	i32 129, ; 212
	i32 24, ; 213
	i32 23, ; 214
	i32 31, ; 215
	i32 102, ; 216
	i32 114, ; 217
	i32 70, ; 218
	i32 28, ; 219
	i32 75, ; 220
	i32 40, ; 221
	i32 129, ; 222
	i32 33, ; 223
	i32 74, ; 224
	i32 95, ; 225
	i32 57, ; 226
	i32 62, ; 227
	i32 89, ; 228
	i32 35, ; 229
	i32 47, ; 230
	i32 36, ; 231
	i32 118, ; 232
	i32 42, ; 233
	i32 105, ; 234
	i32 115, ; 235
	i32 53, ; 236
	i32 32, ; 237
	i32 87, ; 238
	i32 64, ; 239
	i32 123, ; 240
	i32 77, ; 241
	i32 59, ; 242
	i32 27, ; 243
	i32 9, ; 244
	i32 96, ; 245
	i32 103, ; 246
	i32 49, ; 247
	i32 121, ; 248
	i32 51, ; 249
	i32 111, ; 250
	i32 22, ; 251
	i32 17, ; 252
	i32 41, ; 253
	i32 29, ; 254
	i32 72, ; 255
	i32 95, ; 256
	i32 48, ; 257
	i32 38, ; 258
	i32 72 ; 259
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
