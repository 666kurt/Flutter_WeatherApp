import 'package:flutter/material.dart';
import 'package:simple_weather_app/repositories/weather_model.dart';
import 'package:simple_weather_app/repositories/weather_service.dart';

import '../widgets/main_weather_widget.dart';

class CurrentWeatherScreen extends StatefulWidget {
  const CurrentWeatherScreen({super.key});

  @override
  State<CurrentWeatherScreen> createState() => _CurrentWeatherScreenState();
}

class _CurrentWeatherScreenState extends State<CurrentWeatherScreen> {
  late Future<WeatherResponse> weather;

  @override
  void initState() {
    weather = WeatherService().fetchWeather();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(168, 79, 171, 1),
      // appBar: AppBar(
      //   backgroundColor: Color.fromRGBO(168, 79, 171, 1),
      //   title: Text(
      //     'Weather App',
      //     style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      //   ),
      // ),
      body: Center(
        child: FutureBuilder(
          future: weather,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return MainWeatherWidget(
                weather: snapshot.requireData,
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
