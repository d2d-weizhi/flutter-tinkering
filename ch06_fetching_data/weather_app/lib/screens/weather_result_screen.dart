import 'package:flutter/material.dart';
import '../services/weather_data.dart';

class WeatherResultScreen extends StatelessWidget {
  final WeatherData weatherData;

  const WeatherResultScreen({super.key, required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'City: ${weatherData.cityName}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Image.network(
              weatherData.iconUrl,
              width: 50,    // Adjust the width as needed.
              height: 50,   // Adjust the height as needed.
            ),
            Text('Temperature: ${weatherData.temperature}°C'),
            Text('Description: ${weatherData.description}'),
            // Add more widgets to display additional weather data as needed.
          ],
        ),
      ),
    );
  }
}
