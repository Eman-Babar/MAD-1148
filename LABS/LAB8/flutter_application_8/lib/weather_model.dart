//---------------Challenge3-----------------
class Weather {
  final String cityName;
  final double temperature;
  final String description;
  final String icon;
  Weather({
    required this.cityName,
    required this.temperature,
    required this.description,
    required this.icon,
  });
  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      temperature: json['main']['temp'].toDouble(),
      description: json['weather'][0]['description'],
      icon: json['weather'][0]['icon'], //Extract icon
    );
  }
}
//---------------Challenge2-----------------
// class Weather {
//   final String cityName;
//   final double temperature;
//   final String description;

//   Weather({
//     required this.cityName,
//     required this.temperature,
//     required this.description,
//   });
//   factory Weather.fromJson(Map<String, dynamic> json) {
//     return Weather(
//       cityName: json['name'],
//       temperature: json['main']['temp'].toDouble(),
//       description: json['weather'][0]['description'],
//     );
//   }
// }
// class GeoLocation {
//   final double lat;
//   final double lon;
//   GeoLocation({required this.lat, required this.lon});
//   factory GeoLocation.fromJson(Map<String, dynamic> json) {
//     return GeoLocation(
//       lat: json['lat'].toDouble(),
//       lon: json['lon'].toDouble(),
//     );
//   }
// }
//----------------Challenge1------------
// class Weather {
//   final String cityName;
//   final double temperature;
//   final String description;
//   Weather({
//     required this.cityName,
//     required this.temperature,
//     required this.description,
//   });
//   factory Weather.fromJson(Map<String, dynamic> json) {
//     return Weather(
//       cityName: json['name'],
//       temperature: json['main']['temp'].toDouble(),
//       description: json['weather'][0]['description'],
//     );
//   }
// }
//--------------------------------------------------------
// class Weather {
//   final String cityName;
//   final double temperature;
//   final String description;
//   Weather({
//     required this.cityName,
//     required this.temperature,
//     required this.description,
//   });
//   // Factory constructor to parse JSON
//   factory Weather.fromJson(Map<String, dynamic> json) {
//     return Weather(
//       cityName: json['name'],
//       temperature: json['main']['temp'].toDouble(),
//       description: json['weather'][0]['description'],
//     );
//   }
// }