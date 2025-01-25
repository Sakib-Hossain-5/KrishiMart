import '../../consts/consts.dart';
import 'package:flutter/material.dart';

class WeatherCard extends StatelessWidget {
  final WeatherInfo weather;

  const WeatherCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.symmetric(horizontal: 10.5, vertical: 8),
      color: Colors.green.shade100, // Soft green background color for the card
      child: Container(
        height: 150, // Adjust the height as necessary
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient( // Adding a gradient for a more dynamic green look
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.green.shade50, Colors.white],
          ),
          borderRadius: BorderRadius.circular(8), // Smoothed corners for better aesthetics
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.green.shade900),
                    const SizedBox(width: 10),
                    Text(weather.location, style: TextStyle(color: Colors.green.shade900)),
                  ]
                ), // Dark green text for contrast
                Text('Temp: ${weather.temperature}°C', style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.green.shade900)),
                const SizedBox(height: 5),
                Text('Humidity: ${weather.humidity}%', style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Colors.green.shade900)),
                const SizedBox(height: 5),
                Text(weather.forecast, style: TextStyle(color: Colors.green.shade900)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/icons/${weather.iconName}.jpg', width: 80),
                Text(weather.description, style: TextStyle(color: Colors.green.shade900)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherInfo {
  final String location;
  final double temperature;
  final double humidity;
  final String forecast;
  final String description;
  final String iconName;

  WeatherInfo({
    required this.location,
    required this.temperature,
    required this.humidity,
    required this.forecast,
    required this.description,
    required this.iconName,
  });
}
