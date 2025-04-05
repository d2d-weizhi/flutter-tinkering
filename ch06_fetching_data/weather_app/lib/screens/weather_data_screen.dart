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

  }

  // Method to get device location
  Future<void> _getLocation async {
    try {
      // Create an instance of LocationService
      LocationService location = LocationService();
      // Get the current device location
      _position = await location.getLocation();


    } catch (e) {
      print('Error: $e');
  }

  Future<WeatherData?> fetchWeather(double latitude, double longitude) async {

  }
}

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
