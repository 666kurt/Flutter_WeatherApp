import 'package:dio/dio.dart';
import 'weather_model.dart';

// lat=54.32&lon=48.38&lang=ru&units=metric&appid=d20a25483e0ad689bf8c76f2a44c7bdb

class WeatherService {
  final Dio _dio = Dio();
  final api_key = 'd20a25483e0ad689bf8c76f2a44c7bdb';

  Future<WeatherResponse> fetchWeather() async {
    try {
      final response = await _dio.get(
        'https://api.openweathermap.org/data/2.5/weather',
        queryParameters: {
          'lat': 54.32,
          'lon': 48.38,
          'units': 'metric',
          'lang': 'ru',
          'appid': api_key,
        },
      );
      return WeatherResponse.fromJson(response.data);
    } catch (error) {
      throw Exception("Failed to load data: $error");
    }
  }
}
