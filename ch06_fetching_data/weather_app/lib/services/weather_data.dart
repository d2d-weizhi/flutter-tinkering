class WeatherData {
  final double temperature;

  final String description;

  final String iconUrl;

  final String cityName;

  WeatherData({
    required this.cityName,
    required this.temperature,
    required this.description,
    required this.iconUrl,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    final main = json['main'];
    final weather = json['weather'][0];
    final name = json['name'];

    return WeatherData(
      cityName: name,
      temperature: main['temp'].toDouble(),
      description: weather['description'],
      iconUrl: 'https://openweathermap.org/img/wn/${weather['icon']}@2x.png'
    );
  }
}