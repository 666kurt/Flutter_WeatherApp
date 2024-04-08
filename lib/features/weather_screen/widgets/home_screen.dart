import 'package:flutter/material.dart';
import '../../../repositories/weather_model.dart';

class HomeScreen extends StatelessWidget {
  WeatherResponse weather;
  HomeScreen({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TODO: - сюда добавить город
            Text(
              weather.name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              'Доброе утро',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Image.asset('assets/1.png'),
            Center(
              child: Column(
                children: [
                  Text(
                    '${weather.main.temp}°С',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 45,
                    ),
                  ),
                  Text(
                    '${weather.weather[0].main}',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 35,
                    ),
                  ),
                  Text(
                    'Пятница - 15:05',
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
