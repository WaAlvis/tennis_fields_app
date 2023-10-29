// import 'package:dio/dio.dart';
// import 'package:tennis_fields_app/config/constants/environment.dart';
// import 'package:tennis_fields_app/domain/datasources/weather_forecast_datasource.dart';
// import 'package:tennis_fields_app/domain/entities/weather_forecast.dart';

// class OpenweathermapDatasource extends WeatherForecastDatasource {
  

//   final dio = Dio(
//       BaseOptions(baseUrl: 'https://api.openweathermap.org', queryParameters: {
//     'appid': Environment.theMovieDbKey,
//     'units': 'metric',
//     //coordenadas Asia / Tokyo
//     'lat': '35',
//     'lon': '139',
//   }));

//   @override
//   Future<List<WeatherForecast>> getForecasts() async {
//     final response = await dio.get('/data/2.5/onecall');
//     print(response.data);

//     final List<WeatherForecast> forecast = [];

//     return forecast;
//   }

// }
