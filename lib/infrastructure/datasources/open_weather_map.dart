import 'package:dio/dio.dart';
import 'package:tennis_fields_app/config/constants/environment.dart';
import 'package:tennis_fields_app/domain/datasources/weather/weathers_datasource.dart';
import 'package:tennis_fields_app/domain/entities/entities.dart';

import 'package:tennis_fields_app/infrastructure/models/openweathermap/openweathermap_response.dart';

import '../mappers/open_weather_open/open_weather_forecast_mapper.dart';

class OpenweathermapDatasource extends WeathersDatasource {
  final dio = Dio(
      BaseOptions(baseUrl: 'https://api.openweathermap.org', queryParameters: {
    'appid': Environment.theMovieDbKey,
    'units': 'metric',
    //coordenadas Asia / Tokyo
    'lat': '35',
    'lon': '139',
  }));

  @override
  Future<WeatherForecastEntity> getWeatherCurrent() async {
    final response = await dio.get('/data/2.5/onecall');

    final weather = OpenWeatherMapResponse.fromJson(response.data);
    
    final currentWeather = OpenWeatherForecastMapper.localDBToEntity(weather);

    

    return currentWeather;
  }
}
