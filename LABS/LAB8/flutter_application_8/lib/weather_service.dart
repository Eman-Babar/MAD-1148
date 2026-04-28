import 'dart:convert';
import 'package:http/http.dart' as http;
import 'weather_model.dart';
//-------------------Challenge3------------------
class WeatherService {
  static const String apiKey = '5452aaaa1a46f7e585bb31f0a81f289d';
  // London coordinates
  static const double lat = 51.5074;
  static const double lon = -0.1278;
  Future<Weather> fetchWeather() async {
    final url = Uri.parse(
      'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey&units=metric',
    );
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return Weather.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
//-------------------Challenge2------------------
// class WeatherService {
//   static const String apiKey = '5452aaaa1a46f7e585bb31f0a81f289d';
//   // Step 1: City name se coordinates nikalo
//   Future<GeoLocation> getCoordinates(String cityName) async {
//     final url = Uri.parse(
//         'http://api.openweathermap.org/geo/1.0/direct?q=$cityName&limit=1&appid=$apiKey');
//     final response = await http.get(url);
//     if (response.statusCode == 200) {
//       final List<dynamic> jsonList = jsonDecode(response.body);
//       if (jsonList.isNotEmpty) {
//         return GeoLocation.fromJson(jsonList[0]);
//       } else {
//         throw Exception('City "$cityName" not found');
//       }
//     } else {
//       throw Exception('Geocoding failed: ${response.statusCode}');
//     }
//   }
//   // Step 2: Coordinates se weather data
//   Future<Weather> fetchWeather(double lat, double lon) async {
//     final url = Uri.parse(
//         'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey&units=metric');

//     final response = await http.get(url);

//     if (response.statusCode == 200) {
//       final jsonResponse = jsonDecode(response.body);
//       return Weather.fromJson(jsonResponse);
//     } else {
//       throw Exception('Weather fetch failed: ${response.statusCode}');
//     }
//   }
//   // Combined: City name se direct weather (2 API calls)
//   Future<Weather> fetchWeatherByCity(String cityName) async {
//     print(' Searching for: $cityName');
//     final coordinates = await getCoordinates(cityName);
//     print('Found: ${coordinates.lat}, ${coordinates.lon}');
//     return fetchWeather(coordinates.lat, coordinates.lon);
//   }
// }
//--------------Challenge1-------------
// class WeatherService {
//   static const String apiKey = '5452aaaa1a46f7e585bb31f0a81f289d'; // <-- Yahan apna API key daalo
//   Future<Weather> fetchWeather(double lat, double lon) async {
//     final url = Uri.parse(
//         'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey&units=metric');
//     final response = await http.get(url);
//     if (response.statusCode == 200) {
//       final jsonResponse = jsonDecode(response.body);
//       return Weather.fromJson(jsonResponse);
//     } else {
//       throw Exception('Failed to load weather: ${response.statusCode}');
//     }
//   }
// }
//-----------------------------------------------------------------------
// class WeatherService {
//   // Replace with your actual API key
//   static const String apiKey = '5452aaaa1a46f7e585bb31f0a81f289d';
//   // Using London's coordinates as default for the lab
//   static const double lat = 51.5074;
//   static const double lon = -0.1278;
//   Future<Weather> fetchWeather() async {
//     // We add &units=metric to get Celsius instead of Kelvin
//     final url = Uri.parse(
//         'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey&units=metric');
//     final response = await http.get(url);
//     if (response.statusCode == 200) {
//       // Parse the JSON data
//       final jsonResponse = jsonDecode(response.body);
//       return Weather.fromJson(jsonResponse);
//     } else {
//       throw Exception('Failed to load weather data');
//     }
//   }
// }