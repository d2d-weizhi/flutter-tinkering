import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import '../services/location.dart';
import 'package:weather_app/screens/weather_result_screen.dart';
import 'package:weather_app/services/weather_data.dart';

// Define the WeatherDataScreen Stateful Widget
class WeatherDataScreen extends StatefulWidget {
  const WeatherDataScreen({super.key});

  @override
  State<WeatherDataScreen> createState() => _WeatherDataScreenState();
}

class _WeatherDataScreenState extends State<WeatherDataScreen> {
  // Instance of LocationService to get device location
  LocationService locationService = LocationService();

  // Variable to store the current position
  Position? _position;

  // Override the initState() method to initialize state
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getLocation();
  }

  // Method to get device location
  Future<void> _getLocation() async {
    try {
      // Create an instance of LocationService
      LocationService location = LocationService();
      // Get the current device location
      _position = await location.getLocation();

      // Fetch weather data using device location.
      final weatherData = await fetchWeather(
        _position?.latitude ?? 0.0,
        _position?.longitude ?? 0.0
      );

      // Navigate to the result screen if weather data is available
      if (weatherData != null) {
        _navigateToWeatherResult(weatherData);
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  // Method to fetch weather data from API
  Future<WeatherData?> fetchWeather(double latitude, double longitude) async {
    try {
      const apiKey = 'd7c95d67cdde7cdda01266293cfac424';
      final apiUrl = 'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric';

      // Make a GET request to fetch weather data
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        // Parse JSON response and create WeatherData object
        final jsonMap = json.decode(response.body);
        final weatherData = WeatherData.fromJson(jsonMap);
        return weatherData;
      } else {
        throw Exception('Failed to load weather data');
      }
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }

  void _navigateToWeatherResult(WeatherData weatherData) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) => WeatherResultScreen(weatherData: weatherData),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: const Text("Weather Data"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            // Display device latitude and longitude
            Center(
              child: _position != null
                ? Text("Latitude: ${_position?.latitude}, Longitude: ${_position?.longitude}")
                : const CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
