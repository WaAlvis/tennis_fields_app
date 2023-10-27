import 'package:tennis_fields_app/domain/entities/weather_forecast.dart';

abstract class WeatherForecastDatasource {
  Future<List<WeatherForecast>> getForecasts();
}
