import 'package:flutter/material.dart';
import 'weather_model.dart';
import 'weather_service.dart';
//----------------------------------Challenge3-------------------------
void main() {
  runApp(const WeatherApp());
}
class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather Lab',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const WeatherScreen(),
    );
  }
}
class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});
  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}
class _WeatherScreenState extends State<WeatherScreen> {
  final WeatherService _weatherService = WeatherService();
  late Future<Weather> _weatherFuture;
  @override
  void initState() {
    super.initState();
    _weatherFuture = _weatherService.fetchWeather();
  }
  void _refreshWeather() {
    setState(() {
      _weatherFuture = _weatherService.fetchWeather();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Current Weather'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _refreshWeather,
          )
        ],
      ),
      body: Center(
        child: FutureBuilder<Weather>(
          future: _weatherFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }
            else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            else if (snapshot.hasData) {
              final weather = snapshot.data!;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Weather Icon (Challenge 3)
                  Image.network(
                    'https://openweathermap.org/img/wn/${weather.icon}@2x.png',
                    width: 120,
                    height: 120,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    weather.cityName,
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '${weather.temperature.toStringAsFixed(1)}°C',
                    style: const TextStyle(fontSize: 60),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    weather.description.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.grey,
                    ),
                  ),
                ],
              );
            }
            return const Text('No data available');
          },
        ),
      ),
    );
  }
}
// ----------------------------------Challenge2-------------------------
// void main() {
//   runApp(const WeatherApp());
// }
// class WeatherApp extends StatelessWidget {
//   const WeatherApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Challenge 2 - City Search',
//       theme: ThemeData(primarySwatch: Colors.green),
//       home: const WeatherScreen(),
//     );
//   }
// }
// class WeatherScreen extends StatefulWidget {
//   const WeatherScreen({super.key});

//   @override
//   State<WeatherScreen> createState() => _WeatherScreenState();
// }
// class _WeatherScreenState extends State<WeatherScreen> {
//   final WeatherService _weatherService = WeatherService();
//   late Future<Weather> _weatherFuture;
//   final TextEditingController _cityController = TextEditingController(text: 'London');
//   @override
//   void initState() {
//     super.initState();
//     _searchWeather();
//   }
//   void _searchWeather() {
//     setState(() {
//       _weatherFuture = _weatherService.fetchWeatherByCity(_cityController.text);
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('City Weather Search'),
//         backgroundColor: Colors.green,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.refresh),
//             onPressed: _searchWeather,
//           )
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             // City Input
//             TextField(
//               controller: _cityController,
//               decoration: const InputDecoration(
//                 labelText: 'Enter City Name',
//                 prefixIcon: Icon(Icons.search),
//                 hintText: 'e.g., New York, Tokyo, Mumbai',
//                 border: OutlineInputBorder(),
//                 suffixIcon: Icon(Icons.arrow_forward_ios),
//               ),
//               onSubmitted: (_) => _searchWeather(),
//               textCapitalization: TextCapitalization.words,
//             ),
//             const SizedBox(height: 24),
//             // Search Button
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton.icon(
//                 onPressed: _searchWeather,
//                 icon: const Icon(Icons.search),
//                 label: Text('Search "${_cityController.text}"',
//                            style: const TextStyle(fontSize: 18)),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.green,
//                   foregroundColor: Colors.white,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 30),
//             // Weather Display
//             Expanded(
//               child: FutureBuilder<Weather>(
//                 future: _weatherFuture,
//                 builder: (context, snapshot) {
//                   if (snapshot.connectionState == ConnectionState.waiting) {
//                     return const Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         CircularProgressIndicator(),
//                         SizedBox(height: 16),
//                         Text('Searching weather...',
//                              style: TextStyle(fontSize: 18)),
//                       ],
//                     );
//                   } else if (snapshot.hasError) {
//                     return Center(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Icon(Icons.location_off, size: 64, color: Colors.red),
//                           const SizedBox(height: 16),
//                           Text('City not found!',
//                                style: Theme.of(context).textTheme.headlineSmall),
//                           const SizedBox(height: 8),
//                           Text('Try: London, New York, Delhi',
//                                style: TextStyle(color: Colors.grey)),
//                           const SizedBox(height: 16),
//                           ElevatedButton.icon(
//                             onPressed: _searchWeather,
//                             icon: const Icon(Icons.refresh),
//                             label: const Text('Try Again'),
//                           ),
//                         ],
//                       ),
//                     );
//                   } else if (snapshot.hasData) {
//                     final weather = snapshot.data!;
//                     return Card(
//                       elevation: 8,
//                       child: Padding(
//                         padding: const EdgeInsets.all(30),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               weather.cityName,
//                               style: const TextStyle(
//                                 fontSize: 40,
//                                 fontWeight: FontWeight.bold
//                               ),
//                             ),
//                             const SizedBox(height: 20),
//                             Text(
//                               '${weather.temperature.toStringAsFixed(1)}°C',
//                               style: const TextStyle(
//                                 fontSize: 64,
//                                 fontWeight: FontWeight.w300,
//                                 color: Colors.green
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16,
//                                 vertical: 8
//                               ),
//                               decoration: BoxDecoration(
//                                 color: Colors.green.withOpacity(0.1),
//                                 borderRadius: BorderRadius.circular(20),
//                               ),
//                               child: Text(
//                                 weather.description.toUpperCase(),
//                                 style: const TextStyle(
//                                   fontSize: 24,
//                                   color: Colors.green,
//                                   fontWeight: FontWeight.w500
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   }
//                   return const SizedBox();
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//   @override
//   void dispose() {
//     _cityController.dispose();
//     super.dispose();
//   }
// }
//--------------Challenge1-----------------
// void main() {
//   runApp(const WeatherApp());
// }

// class WeatherApp extends StatelessWidget {
//   const WeatherApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Challenge 1 - Dynamic Inputs',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: const WeatherScreen(),
//     );
//   }
// }
// class WeatherScreen extends StatefulWidget {
//   const WeatherScreen({super.key});
//   @override
//   State<WeatherScreen> createState() => _WeatherScreenState();
// }
// class _WeatherScreenState extends State<WeatherScreen> {
//   final WeatherService _weatherService = WeatherService();
//   late Future<Weather> _weatherFuture;
//   final TextEditingController _latController = TextEditingController(text: '51.5074');
//   final TextEditingController _lonController = TextEditingController(text: '-0.1278');
//   @override
//   void initState() {
//     super.initState();
//     _fetchWeather();
//   }
//   void _fetchWeather() {
//     final lat = double.tryParse(_latController.text) ?? 51.5074;
//     final lon = double.tryParse(_lonController.text) ?? -0.1278;
//     setState(() {
//       _weatherFuture = _weatherService.fetchWeather(lat, lon);
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Dynamic Weather Search'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.refresh),
//             onPressed: _fetchWeather,
//           )
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           children: [
//             // Latitude Input
//             TextField(
//               controller: _latController,
//               keyboardType: TextInputType.numberWithOptions(decimal: true),
//               decoration: const InputDecoration(
//                 labelText: 'Latitude',
//                 prefixIcon: Icon(Icons.location_on),
//                 border: OutlineInputBorder(),
//                 hintText: 'e.g., 51.5074 (London)',
//               ),
//             ),
//             const SizedBox(height: 16),
//             // Longitude Input
//             TextField(
//               controller: _lonController,
//               keyboardType: TextInputType.numberWithOptions(decimal: true),
//               decoration: const InputDecoration(
//                 labelText: 'Longitude',
//                 prefixIcon: Icon(Icons.map),
//                 border: OutlineInputBorder(),
//                 hintText: 'e.g., -0.1278 (London)',
//               ),
//             ),
//             const SizedBox(height: 24),
//             // Search Button
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton.icon(
//                 onPressed: _fetchWeather,
//                 icon: const Icon(Icons.search),
//                 label: const Text('Get Weather', style: TextStyle(fontSize: 18)),
//               ),
//             ),
//             const SizedBox(height: 30),
//             // Weather Display
//             Expanded(
//               child: FutureBuilder<Weather>(
//                 future: _weatherFuture,
//                 builder: (context, snapshot) {
//                   if (snapshot.connectionState == ConnectionState.waiting) {
//                     return const Center(child: CircularProgressIndicator());
//                   } else if (snapshot.hasError) {
//                     return Center(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Icon(Icons.error, size: 64, color: Colors.red),
//                           const SizedBox(height: 16),
//                           Text('Error: ${snapshot.error}',
//                                style: const TextStyle(fontSize: 16),
//                                textAlign: TextAlign.center),
//                           const SizedBox(height: 16),
//                           ElevatedButton(
//                             onPressed: _fetchWeather,
//                             child: const Text('Retry'),
//                           ),
//                         ],
//                       ),
//                     );
//                   } else if (snapshot.hasData) {
//                     final weather = snapshot.data!;
//                     return Card(
//                       elevation: 8,
//                       child: Padding(
//                         padding: const EdgeInsets.all(30),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               weather.cityName,
//                               style: const TextStyle(
//                                 fontSize: 40, 
//                                 fontWeight: FontWeight.bold
//                               ),
//                             ),
//                             const SizedBox(height: 20),
//                             Text(
//                               '${weather.temperature.toStringAsFixed(1)}°C',
//                               style: const TextStyle(
//                                 fontSize: 64, 
//                                 fontWeight: FontWeight.w300,
//                                 color: Colors.blue
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             Text(
//                               weather.description.toUpperCase(),
//                               style: const TextStyle(
//                                 fontSize: 24, 
//                                 color: Colors.grey
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   }
//                   return const SizedBox();
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//   @override
//   void dispose() {
//     _latController.dispose();
//     _lonController.dispose();
//     super.dispose();
//   }
// }
//-----------------------------------------------------------------------------------------
// void main() {
//   runApp(const WeatherApp());
// }
// class WeatherApp extends StatelessWidget {
//   const WeatherApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Weather Lab',
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: const WeatherScreen(),
//     );
//   }
// }
// class WeatherScreen extends StatefulWidget {
//   const WeatherScreen({super.key});
//   @override
//   State<WeatherScreen> createState() => _WeatherScreenState();
// }
// class _WeatherScreenState extends State<WeatherScreen> {
//   final WeatherService _weatherService = WeatherService();
//   late Future<Weather> _weatherFuture;
//   @override
//   void initState() {
//     super.initState();
//     // Trigger the API call when the screen loads
//     _weatherFuture = _weatherService.fetchWeather();
//   }
//   // Function to manually refresh data
//   void _refreshWeather() {
//     setState(() {
//       _weatherFuture = _weatherService.fetchWeather();
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Current Weather'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.refresh),
//             onPressed: _refreshWeather,
//           )
//         ],
//       ),
//       body: Center(
//         child: FutureBuilder<Weather>(
//           future: _weatherFuture,
//           builder: (context, snapshot) {
//             // State 1: Still loading
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const CircularProgressIndicator();
//             }
//             // State 2: Error occurred
//             else if (snapshot.hasError) {
//               return Text('Error: ${snapshot.error}');
//             }
//             // State 3: Data successfully fetched
//             else if (snapshot.hasData) {
//               final weather = snapshot.data!;
//               return Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     weather.cityName,
//                     style: const TextStyle(fontSize: 40, fontWeight:
// FontWeight.bold),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     '${weather.temperature.toStringAsFixed(1)}°C',
//                     style: const TextStyle(fontSize: 60),
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     weather.description.toUpperCase(),
//                     style: const TextStyle(fontSize: 24, color: Colors.grey),
//                   ),
//                 ],
//               );
//             }
//             // Fallback state
//             return const Text('No data available');
//           },
//         ),
//       ),
//     );
//   }
// }