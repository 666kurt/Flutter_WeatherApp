class WeatherResponse {
  List<Weather> weather;
  Main main;
  String name;
  int cod;

  WeatherResponse({
    required this.weather,
    required this.main,
    required this.name,
    required this.cod,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    return WeatherResponse(
      weather: (json['weather'] as List)
          .map((item) => Weather.fromJson(item))
          .toList(),
      main: Main.fromJson(json['main']),
      name: json['name'],
      cod: json['cod'],
    );
  }
}

class Weather {
  int id;
  String main;
  String description;
  String icon;

  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      id: json['id'],
      main: json['main'],
      description: json['description'],
      icon: json['icon'],
    );
  }
}

class Main {
  double temp;
  double feels_like;
  double temp_min;
  double temp_max;
  int pressure;
  int humidity;

  Main({
    required this.temp,
    required this.feels_like,
    required this.temp_min,
    required this.temp_max,
    required this.pressure,
    required this.humidity,
  });

  factory Main.fromJson(Map<String, dynamic> json) {
    return Main(
      temp: json['temp'],
      feels_like: json['feels_like'],
      temp_min: json['temp_min'],
      temp_max: json['temp_max'],
      pressure: json['pressure'],
      humidity: json['humidity'],
    );
  }
}


// {
//   "weather": [
//     {
//       "id": 804,
//       "main": "Clouds",
//       "description": "пасмурно",
//       "icon": "04d"
//     }
//   ],
//   "main": {
//     "temp": 9.26,
//     "feels_like": 7.21,
//     "temp_min": 9.03,
//     "temp_max": 12.45,
//     "pressure": 1013,
//     "humidity": 73,
//   },
//   "name": "Ульяновск"
// }